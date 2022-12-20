println("PROGRAMA FATORIAL – V# 3")
println()

function fatorial(n::Int64)
    fat = 1
    for i in 1:n
        fat *= i
    end
    return fat
end

print("Entre valor inteiro: ")
n = parse(Int, readline())

println(fatorial(n))

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
