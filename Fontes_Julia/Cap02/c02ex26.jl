println("PROGRAMA FATORIAL – V# 1")
println()

function fatorial(n)
    fat = 1
    for i in 1:n
        fat *= i
    end
    println(fat)
end

print("Entre valor inteiro: ")
n = parse(Int, readline())

fatorial(n)

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
