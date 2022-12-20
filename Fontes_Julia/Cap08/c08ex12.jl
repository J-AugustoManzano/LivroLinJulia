# Cadastro direto de valores em arquivo binário

function main()

    valor::Int64 = 0
    resp::String = "S"

    arquivo = open("ARQBIN.BIN", "a") 

    while resp == "S"
        print("Informe valor inteiro: ")
        valor = parse(Int, readline())

        seekend(arquivo) 
        write(arquivo, valor) 
    
        println("\nDeseja continuar?")
        print("[S] para Sim | [qualquer letra] para Não --> ")
        resp = uppercase(readline())
        println()
    end

    close(arquivo) 

end

main()
