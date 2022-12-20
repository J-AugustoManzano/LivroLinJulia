# Aplicação com uso de pacote externo

include("c08ex08.jl") 
using .Sorts

nome = Array{String}(undef, 5)  # criação do vetor na memória

print("\e[2J\e[0;0H")  
println("------------------------------------")
println("CLASSIFICAÇÃO ASCENDETE DE \"5\" NOMES")
println("------------------------------------")
println()

for i in 1:5
    print("Entre o ", i, "o. nome: ")
    nome[i] = readline()
end

Sorts.quick!(nome)  # processamento da classificação

println()
println("RESULTADO")
println("=========")
println()

for i in 1:5
    println(i, " ==> ", nome[i])
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
