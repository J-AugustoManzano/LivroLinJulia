# Entrada dos valores de qualquer tipo

print("Entre dado numérico para variável <A>: ")
a = readline()

print("Entre dado numérico para variável <B>: ")
b = readline()

# Processamento da troca

x = a
a = b
b = x

# Saída com a troca efetivada

println("<A> = ", a)
println("<B> = ", b)

print("Tecle <Enter> para encerrar programa... ")
readline()
