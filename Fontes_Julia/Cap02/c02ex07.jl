print("Entre valor numérico para a variável <A>: ")
a = parse(Int, readline())

print("Entre valor numérico para a variável <B>: ")
b = parse(Int, readline())

r = a > b ? a : b

println("O maior valor informado é = $(r)")

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
