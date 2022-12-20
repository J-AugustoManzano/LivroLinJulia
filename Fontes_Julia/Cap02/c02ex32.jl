function fatorial(n::Int64, p::Integer=1)
    if n == 0
        fat = p
    else
        fat = fatorial(n - 1, n * p)
    end
  return fat
end

print("Entre valor inteiro: ")
limite = parse(Int, readline())

println(fatorial(limite))

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
