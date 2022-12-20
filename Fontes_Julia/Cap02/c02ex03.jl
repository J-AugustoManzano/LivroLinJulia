printstyled("Cálculo de valores\n"; color=:light_yellow, reverse=true)
println()

printstyled("Entre o 1o. valor numérico: "; color=:light_cyan)
a = parse(Float64, readline())

printstyled("Entre o 2o. valor numérico: "; color=:light_cyan)
b = parse(Float64, readline())

r1 = a + b
r2 = a - b
r3 = a * b

println()
printstyled("Resultado soma ......: $(r1)\n"; color=:light_magenta)
printstyled("Resultado subtração .: $(r2)\n"; color=:light_magenta)
printstyled("Resultado divisão ...: $(r3)\n"; color=:light_magenta)

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
