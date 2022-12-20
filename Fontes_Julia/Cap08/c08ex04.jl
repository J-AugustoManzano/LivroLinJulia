# Geração de dígito verificador, módulo 10 do número 999.999

matricCPT, matricSPT = "", ""
matricINT = Array{Int8}(undef, 6)  

i, soma, DV = 0, 0, 0

print("Informe matricula no formato 999.999: ")
matricCPT = readline()

matricSPT = replace(matricCPT, "." => "")

for i in 1:6
    matricINT[i] = Int(matricSPT[i]) - 48
end

for i in 1:6
    if i % 2 == 0 && matricINT[i] * 2 > 9
        global soma += matricINT[i] * 2 - 9
    else
        if i % 2 == 0 && matricINT[i] * 2 <= 9
            global soma += matricINT[i] * 2
        end
    end
    if i % 2 != 0
        global soma += matricINT[i]
    end
end

DV = (trunc(Int, soma / 10) + 1) * 10 - soma

println()
println("Matricula com DV = ", matricCPT, "-", DV)
println()

print("Tecle <Enter> para encerrar programa... ")
readline()

