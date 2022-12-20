println("Terno pitagórico.")
println()

begin
    for c in 1:10
        for b in 1:10
            for a in 1:10
                if a ^ 2 + b ^ 2 == c ^ 2 
                    println("Termo pitagórico encontrado: $(a), $(b) e $(c).")  
                    @goto fim
                end
            end
        end
    end
    @label fim
end

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
