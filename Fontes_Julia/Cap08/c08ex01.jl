# Definição função de conversão de número arábico em romano

function ara2rom(vlrArabico::Int64)
    MIL::Int64 = 0
    CEN::Int64 = 0
    DEZ::Int64 = 0
    UNI::Int64 = 0
    if vlrArabico >= 1 && vlrArabico <= 3999
        UNI =    1 * trunc(Int, (vlrArabico /    1 % 10))
        DEZ =   10 * trunc(Int, (vlrArabico /   10 % 10))
        CEN =  100 * trunc(Int, (vlrArabico /  100 % 10))
        MIL = 1000 * trunc(Int, (vlrArabico / 1000 % 10))
        MILHAR::String  = ""
        CENTENA::String = ""
        DEZENA::String  = ""
        UNIDADE::String = ""
        if UNI ==    1 UNIDADE =    "I" end
        if UNI ==    2 UNIDADE =   "II" end
        if UNI ==    3 UNIDADE =  "III" end
        if UNI ==    4 UNIDADE =   "IV" end
        if UNI ==    5 UNIDADE =    "V" end
        if UNI ==    6 UNIDADE =   "VI" end
        if UNI ==    7 UNIDADE =  "VII" end
        if UNI ==    8 UNIDADE = "VIII" end
        if UNI ==    9 UNIDADE =   "IX" end
        if DEZ ==   10 DEZENA  =    "X" end
        if DEZ ==   20 DEZENA  =   "XX" end
        if DEZ ==   30 DEZENA  =  "XXX" end
        if DEZ ==   40 DEZENA  =   "XL" end
        if DEZ ==   50 DEZENA  =    "L" end
        if DEZ ==   60 DEZENA  =   "LX" end
        if DEZ ==   70 DEZENA  =  "LXX" end
        if DEZ ==   80 DEZENA  = "LXXX" end
        if DEZ ==   90 DEZENA  =   "XC" end
        if CEN ==  100 CENTENA =    "C" end 
        if CEN ==  200 CENTENA =   "CC" end 
        if CEN ==  300 CENTENA =  "CCC" end 
        if CEN ==  400 CENTENA =   "CD" end 
        if CEN ==  500 CENTENA =    "D" end
        if CEN ==  600 CENTENA =   "DC" end
        if CEN ==  700 CENTENA =  "DCC" end
        if CEN ==  800 CENTENA = "DCCC" end
        if CEN ==  900 CENTENA =   "CM" end
        if MIL == 1000 MILHAR  =    "M" end 
        if MIL == 2000 MILHAR  =   "MM" end 
        if MIL == 3000 MILHAR  =  "MMM" end 
        vlrRomano = join([MILHAR, CENTENA, DEZENA, UNIDADE])
    else
        vlrRomano = "erro"
    end
    return vlrRomano
end

print("Informe valor numérico arábico .: ")
valor = parse(Int, readline())

println()
println("Valor numérico em romano .......: ", ara2rom(valor))
println()

print("Tecle <Enter> para encerrar programa... ")
readline()
