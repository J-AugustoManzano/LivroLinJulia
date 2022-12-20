# Módulo como pacote interno

module Numeros

export dec2bin, bin2dec

function dec2bin(vlr::Int64)::Int64
    dec::Int64 = 0
    str::String = ""
    while vlr > 0
        dec = vlr % 2
        str *= string(dec)
        vlr = div(vlr, 2)     
    end
    return parse(Int, reverse(str))
end

function bin2dec(vlr::Int64)::Int64
    dec::Int64 = 0
    res::Int64 = 0
    i::Int64 = 0
    while vlr > 0
        res = vlr % 2
        vlr = div(vlr, 10)
        dec += res * 2 ^ i
        i += 1
    end
    return dec
end

end   # Numeros
