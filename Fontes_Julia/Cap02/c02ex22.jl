using Printf

function pausa()
    println()
    print("Tecle <Enter> para encerrar programa... ")
    readline()
    println()
end

function rotSoma()
    println()
    println("ROTINA: Adição")
    println()
    print("Entre o 1o. valor: ")
    a = parse(Float64, readline())
    print("Entre o 2o. valor: ")
    b = parse(Float64, readline())
    r = a + b
    println()
    @printf("Resultado = %.2f\n", r)
    pausa()
end

function rotDiferença()
    println()
    println("ROTINA: Subtração")
    println()
    print("Entre o 1o. valor: ")
    a = parse(Float64, readline())
    print("Entre o 2o. valor: ")
    b = parse(Float64, readline())
    r = a - b
    println()
    @printf("Resultado = %.2f\n", r)
    pausa()
end

function rotProduto()
    println()
    println("ROTINA: Multiplicação")
    println()
    print("Entre o 1o. valor: ")
    a = parse(Float64, readline())
    print("Entre o 2o. valor: ")
    b = parse(Float64, readline())
    r = a * b
    println()
    @printf("Resultado = %.2f\n", r)
    pausa()
end

function rotQuociente()
    println()
    println("ROTINA: Divisão")
    println()
    print("Entre o 1o. valor: ")
    a = parse(Float64, readline())
    print("Entre o 2o. valor: ")
    b = parse(Float64, readline())
    if b == 0
        println()
        println("Resultado: ERRO")
    else
        r = a / b
        println()
        @printf("Resultado = %.2f\n", r)
    end
    pausa()
end

opção = 0
while opção != 5
    println("PROGRAMA CALCULADORA – V# 1")
    println()
    println("[1] - Adição")
    println("[2] - Subtração")
    println("[3] - Multiplicação")
    println("[4] - Divisão")
    println("[5] – Fim de programa")
    println()
    print("Escolha uma opção: ")
    global opção = parse(Int, readline())
    if opção != 5
      if opção == 1
          rotSoma()
      elseif opção == 2
          rotDiferença()
      elseif opção == 3
          rotProduto()
      elseif opção == 4
          rotQuociente()
      else
          println("Opção inválida – Tente novamente")
      end
    end
end
