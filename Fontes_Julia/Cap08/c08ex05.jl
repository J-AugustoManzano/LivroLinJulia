# Validação de dígito verificador, módulo 10 do número 999.999-9

matricCPT, matricSPT = "", ""
matricINT = Array{Int8}(undef, 7)  

i, soma, DVC, DVE = 0, 0, 0, 0

print("Informe matricula no formato 999.999-9: ")
matricCPT = readline()

matricSPT = replace(replace(matricCPT, "." => "", "-" => ""))

for i in 1:7
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

DVC = (trunc(Int, soma / 10) + 1) * 10 - soma
DVE = matricINT[7]

println()
if DVC == DVE
    println("Número de matrícula válido")
else
    println("Número de matrícula inválido")
end
println()

print("Tecle <Enter> para encerrar programa... ")
readline()
