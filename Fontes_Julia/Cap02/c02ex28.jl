println("PROGRAMA TESTE")
println()

function teste(a, b, c = 1)
    println((a + b) * c)
end

print("Entre valor <A>: ")
a = parse(Int, readline())

print("Entre valor <B>: ")
b = parse(Int, readline())

println()

teste(a, b)
teste(a, b, 2)

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
