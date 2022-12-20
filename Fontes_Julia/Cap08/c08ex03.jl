# Definição função para geração de valor numérico por extenso

function vlrExtenso(valor::Int64)
    CENTENA, C, DEZENA, D, UNIDADE, U = 0, "", 0, "", 0, "" 
    if valor >= 0 && valor <= 999
        CENTENA = trunc(Int, valor / 100)
        DEZENA  = valor % 100
        if DEZENA < 20
            UNIDADE = DEZENA % 20
        else
            UNIDADE = DEZENA % 10
        end
        # centenas "n00"
        if CENTENA == 9
            if valor <= 900 C = "novecentos"   else C = "novecentos e "   end end
        if CENTENA == 8
            if valor <= 800 C = "oitocentos"   else C = "oitocentos e "   end end
        if CENTENA == 7
            if valor <= 700 C = "setecentos"   else C = "setecentos e "   end end
        if CENTENA == 6
            if valor <= 600 C = "seissentos"   else C = "seissentos e "   end end
        if CENTENA == 5
            if valor <= 500 C = "quinhentos"   else C = "quinhentos e "   end end
        if CENTENA == 4
            if valor <= 400 C = "quatrocentos" else C = "quatrocentos e " end end
        if CENTENA == 3
            if valor <= 300 C = "trezentos"    else C = "trezentos e "    end end
        if CENTENA == 2
            if valor <= 200 C = "duzentos"     else C = "duzentos e "     end end
        if CENTENA == 1
            if valor <= 100 C = "cem"          else C = "cento e "        end end
        # dezenas entre "n1" e "n9"
        if DEZENA  >= 91 && DEZENA <= 99 D = "noventa e "   end
        if DEZENA  >= 81 && DEZENA <= 89 D = "oitenta e "   end
        if DEZENA  >= 71 && DEZENA <= 79 D = "setenta e "   end
        if DEZENA  >= 61 && DEZENA <= 69 D = "sessenta e "  end
        if DEZENA  >= 51 && DEZENA <= 59 D = "cinquenta e " end
        if DEZENA  >= 41 && DEZENA <= 49 D = "quarenta e "  end
        if DEZENA  >= 31 && DEZENA <= 39 D = "trinta e "    end
        if DEZENA  >= 21 && DEZENA <= 29 D = "vinte e "     end
        # dezenas cheias "n0"
        if DEZENA  == 90 D = "noventa"   end
        if DEZENA  == 80 D = "oitenta"   end
        if DEZENA  == 70 D = "setenta"   end
        if DEZENA  == 60 D = "sessenta"  end
        if DEZENA  == 50 D = "cinquenta" end
        if DEZENA  == 40 D = "quarenta"  end
        if DEZENA  == 30 D = "trinta"    end
        if DEZENA  == 20 D = "vinte"     end
        # dezenas/unidades entre "n0" e "n9"
        if UNIDADE == 19 U = "dezenove"  end
        if UNIDADE == 18 U = "dezoito"   end
        if UNIDADE == 17 U = "desessete" end
        if UNIDADE == 16 U = "dezesseis" end
        if UNIDADE == 15 U = "quinze"    end
        if UNIDADE == 14 U = "quatorze"  end
        if UNIDADE == 13 U = "treze"     end
        if UNIDADE == 12 U = "doze"      end
        if UNIDADE == 11 U = "onze"      end
        if UNIDADE == 10 U = "dez"       end
        # unidades isoladas "n"
        if UNIDADE ==  9 U = "nove"      end
        if UNIDADE ==  8 U = "oito"      end
        if UNIDADE ==  7 U = "sete"      end
        if UNIDADE ==  6 U = "seis"      end
        if UNIDADE ==  5 U = "cinco"     end
        if UNIDADE ==  4 U = "quatro"    end
        if UNIDADE ==  3 U = "três"      end
        if UNIDADE ==  2 U = "dois"      end
        if UNIDADE ==  1 U = "um"        end
        if UNIDADE ==  0
            return "zero"
        else
            return join([C, D, U])
        end
    else
         return "valor inválido"  
    end
end

print("Informe valor numérico .: ")
valor = parse(Int, readline())

println()
println("Valor por extenso ......: ", vlrExtenso(valor))
println()

print("Tecle <Enter> para encerrar programa... ")
readline()
