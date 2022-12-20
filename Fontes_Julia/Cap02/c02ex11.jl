i = 1
resp = "S"
while resp == "S" || resp == "SIM" 
    println(i)
    global i += 1
    println("Deseja nova sequência? ")
    print("<S> para SIM, qualquer letra para não: ")
    global resp = uppercase(readline())
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
