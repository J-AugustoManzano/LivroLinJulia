println("Validação de entrada – simulação \"repeat\".")
println()

begin
    @label repita
        print("Informe um número positivo inteiro ímpar: ")
        try
            global n = parse(Int, readline())
            if iseven(n) == false && n > 0 
                @goto fim_repita
            end
            @goto repita
        catch
            @goto repita
        end
    @label fim_repita
end

println()
println("Quadrado da entrada: ", n ^ 2)

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
