# Definição função de conversão de número romano em arábico

function rom2ara(vlrRomano::String)
    vlrRomano = uppercase(vlrRomano)
    vlrArabico, ATUAL, ANTERIOR, I = 0, 0, 0, 1
    while I <= length(vlrRomano)
         if vlrRomano[I] == 'I' ATUAL =    1 end
         if vlrRomano[I] == 'V' ATUAL =    5 end
         if vlrRomano[I] == 'X' ATUAL =   10 end
         if vlrRomano[I] == 'L' ATUAL =   50 end
         if vlrRomano[I] == 'C' ATUAL =  100 end
         if vlrRomano[I] == 'D' ATUAL =  500 end
         if vlrRomano[I] == 'M' ATUAL = 1000 end
         if I > 1 
            if vlrRomano[I - 1] == 'I' ANTERIOR =    1 end
            if vlrRomano[I - 1] == 'V' ANTERIOR =    5 end
            if vlrRomano[I - 1] == 'X' ANTERIOR =   10 end
            if vlrRomano[I - 1] == 'L' ANTERIOR =   50 end
            if vlrRomano[I - 1] == 'C' ANTERIOR =  100 end
            if vlrRomano[I - 1] == 'D' ANTERIOR =  500 end
            if vlrRomano[I - 1] == 'M' ANTERIOR = 1000 end 
        end
        if ATUAL < ANTERIOR
             vlrArabico += ATUAL
        else
             vlrArabico += ATUAL - ANTERIOR * 2
        end
        I += 1
    end
    return vlrArabico
end

print("Informe valor numérico romano .: ")
valor = readline()

println()
println("Valor numérico em arábico .....: ", rom2ara(valor))
println()

print("Tecle <Enter> para encerrar programa... ")
readline()
