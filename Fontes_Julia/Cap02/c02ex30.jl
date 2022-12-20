using Printf

function pausa()
    println()
    print("Tecle <Enter> para encerrar programa... ")
    readline()
    println()
end

function entrada()
    println()
    print("Entre o 1o. valor: ")
    global a = parse(Float64, readline())
    print("Entre o 2o. valor: ")
    global b = parse(Float64, readline())
end

function saída()
    println()
    @printf("Resultado = %.2f\n", r)
    pausa()
end

function cálcula(a, b, operador = "String")
    if operador == "+" return a + b end
    if operador == "-" return a - b end
    if operador == "*" return a * b end
    if operador == "/" return a / b end
end

function rotSoma()
    println()
    println("ROTINA: Adição")
    entrada()
    global r = cálcula(a, b, "+")
    saída()
end

function rotDiferença()
    println()
    println("ROTINA: Subtração")
    entrada()
    global r = cálcula(a, b, "-")
    saída()
end

function rotProduto()
    println()
    println("ROTINA: Multiplicação")
    entrada()
    global r = cálcula(a, b, "*")
    saída()
end

function rotQuociente()
    println()
    println("ROTINA: Divisão")
    entrada()
    if b == 0
        println()
        println("Resultado: ERRO")
        pausa()
    else
        global r = cálcula(a, b, "/")
        saída()
    end
end

opção = 0
while opção != 5
    println("PROGRAMA CALCULADORA – V# 3")
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

