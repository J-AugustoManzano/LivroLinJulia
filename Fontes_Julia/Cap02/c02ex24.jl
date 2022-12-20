x = 99
println("Resultado do \'x\' global ...: ", x)

function teste()
    global x = 88
    println("Resultado do \'x\' local ....: ", x)
end

teste()
println("Resultado do \'x\' global ...: ", x)

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
