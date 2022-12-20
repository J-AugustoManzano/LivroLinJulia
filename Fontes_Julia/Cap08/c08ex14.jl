# Pesquisa direta e escrita de valores em arquivo binário

function main()

    valor::Int64 = 0
    resp::String = "S"
    tamamho::Int64, pos::Int64, nrRegs::Int64 = 0, 0, 0

    arquivo = open("ARQBIN.BIN", "r+") 
    
    tamanho = filesize(arquivo)
    nrRegs = tamanho / 8

    while resp == "S"
        print("Informe posição a ser alterada: ")
        pos = parse(Int, readline())
        if pos >= 1 && pos <= nrRegs
            print("Entre novo valor: ")
            valor = parse(Int, readline())
            seek(arquivo, (pos-1) * 8)
            write(arquivo, valor) 
        else  
            println("\nPosição informada - inválida.")
        end

        println("\nDeseja continuar?")
        print("[S] para Sim | [qualquer letra] para Nao --> ")
        resp = uppercase(readline())
        println()
    end

    close(arquivo) 

end

main()
