# Apresentação de cores

println("Listagem de cores")
println()

for cores = 0:255
    printstyled("$(cores) - Mensagem colorida\n"; color=cores)
end

print("Tecle <Enter> para encerrar programa... ")
readline()
