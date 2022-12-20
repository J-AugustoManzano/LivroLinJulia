using Printf

println("TABUADA")
println()

while true
    print("Informe número positivo: ")
    global n = parse(Int, readline())
    if n >= 1 && n <= 10
        break
    end
end

println()
i = 1
while i <= 10
    @printf("%2i X %2i = %3i\n", n, i, n * i)
    global i += 1
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
