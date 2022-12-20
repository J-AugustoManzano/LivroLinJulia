function fatorial(n::Int64)
    if n == 0
        fat = 1
    else
        fat = n * fatorial(n - 1)
    end
  return fat
end

print("Entre valor inteiro: ")
limite = parse(Int, readline())

println(fatorial(limite))

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
