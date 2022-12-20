# Geração de dígito verificador, módulo 11 do número 999.999

function mod11(matricCPT::String)

    matricSPT = ""
    matricINT = Array{Int32}(undef, 6) 
    i, soma, resto = 0, 0, 0
    DV = ""

    matricSPT = replace(matricCPT, "." => "")

    for i in 1:6
        matricINT[i] = Int(matricSPT[i]) - 48
    end
    
    for i in 1:6
        soma += matricINT[i] * (8 - i)
    end

    resto = soma % 11

    if resto ==  0 DV = '0' end
    if resto ==  1 DV = 'X' end
    if resto == 10 DV = '1' end
    
    if (11 - resto) >= 2 && (11 - resto) <= 9
        DV = (11 - resto) 
    end
    
    return DV
    
end

print("Informe matricula no formato 999.999: ")
matricula = readline()

DV = mod11(matricula)

println()
println("Matricula com DV = ", matricula, "-", DV)
println()

print("Tecle <Enter> para encerrar programa... ")
readline()
