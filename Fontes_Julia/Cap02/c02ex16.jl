i = 1
while i <= 5
    println(i)
    if i == 3
        break
    end
  global i = i + 1
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
