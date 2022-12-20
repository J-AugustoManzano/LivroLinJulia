print("Entre valor numérico para a variável <A>: ")
a = parse(Float16, readline())

print("Entre valor numérico para a variável <B>: ")
b = parse(Float16, readline())

if a > b
    println("O valor da variável <A> é maior que o da variável <B>.")
elseif a < b
    println("O valor da variável <B> é maior que o da variável <A>.")
else
    println("Os valores das variáveis <A> e <B> são iguais.")
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
