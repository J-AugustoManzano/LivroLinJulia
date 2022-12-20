print("Entre o 1o. valor numérico: ")
a = parse(Float64, readline())

print("Entre o 2o. valor numérico: ")
b = parse(Float64, readline())

r = a + b

if r > 10
    println("Resultado: ", r)
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
