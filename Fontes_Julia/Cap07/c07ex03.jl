# Módulo de conversão decimal para hexadecimal

module HexDecs

export hex2dec

function hex2dec(vlr::String)::Int64
    dec::Int64 = 0
    pot::Int64 = 0
    res::Int64 = 0
    i::Int64 = 0
    for i in length(vlr):-1:1
        # converte caractere em inteiro
        if vlr[i] >= 'A'
            res = vlr[i] - 'A' + 10
        end
        dec += res * 16 ^ pot
        pot += 1
    end
    return dec
end

end   # dec2hex
