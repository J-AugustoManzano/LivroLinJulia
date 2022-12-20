# Módulo de conversão decimal para hexadecimal

module DecHexs

export dec2hex

function dec2hex(vlr::Int64)::Int64
    dec::Int64 = 0
    str::String = ""
    while vlr > 0
        dec = vlr % 16
        # converte inteiro em caractere
        if dec < 10
            str *= Char(dec + 48)
        else
            str *= Char(dec + 55)
        end
        vlr = div(vlr, 16)     
    end
    return reverse(str)
end

end   # dec2hex
