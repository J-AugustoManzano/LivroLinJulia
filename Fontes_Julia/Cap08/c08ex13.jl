# Pesquisa direta de valores em arquivo binário

using Printf

function main()

    valor::Int64 = 0
    resp::String = "S"
    tamamho::Int64, pos::Int64, nrRegs::Int64 = 0, 0, 0

    arquivo = open("ARQBIN.BIN", "r") 
    
    tamanho = filesize(arquivo)
    nrRegs = tamanho / 8

    while resp == "S"
        print("Informe posição a ser pesquisada: ")
        pos = parse(Int, readline())

        if pos >= 1 && pos <= nrRegs
            seek(arquivo, (pos-1) * 8)
            valor = peek(arquivo, Int64)
            @printf("\nValor %i na posicao %i.\n", valor, pos)
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
