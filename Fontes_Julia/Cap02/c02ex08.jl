print("Informe o valor numérico inteiro: ")
n = parse(Int, readline())

try
    r = sqrt(n)
    println("Resultado raiz quadrada: ", r)
catch erro_detectado
    println("Valor numérico fornecido inválido: motivo valor negativo")
    println("Erro ocorrido: ", erro_detectado)
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
