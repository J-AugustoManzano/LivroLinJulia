module DataExemplo

export mostraData, testeData

using Printf

struct Data
    dia::Int8
    mês::Int8
    ano::Int16
end

function põeData(dia, mês, ano)::Data
   return Data(dia, mês, ano)
end

function anoBissexto(ano)::Bool
    if ano % 400 == 0
        return true
    end
    if ano % 4 == 0 && ano % 100 != 0
        return true
    end
    return false
end

function últimoDiaMês(mês, ano)::Int8
    if mês == 2  # Fev
        return anoBissexto(ano) ? 29 : 28
    end
    if mês <= 7  # Jul
        return mês % 2 != 0 ? 31 : 30
    end
    return mês % 2 != 0 ? 30 : 31
end

function validaData(dia, mês, ano)::Bool
    return ano >=    1 &&
           ano <= 9999 &&
           mês >=    1 &&
           mês <=   12 &&
           dia >=    1 &&
           dia <= últimoDiaMês(mês, ano)
end

"""
```julia
DataExemplo.mostraData(dd,mm,aaaa)
```

Mostra ```data calendário``` validada e formatada.

---

### Exemplos

```julia
julia> mostraData(29,2,1944)
29/02/1944

julia> mostraData(29,2,1945)
**/**/****
```
"""
function mostraData(dia, mês, ano)
    data = põeData(dia, mês, ano)
    if validaData(data.dia, data.mês, data.ano) 
        @printf("%02i", data.dia)
        print("/")
        @printf("%02i", data.mês)
        print("/")
        @printf("%04i", data.ano)
        println()
    else
        println("**/**/****")
    end
end

function testeData(dia, mês, ano)::Bool
    if validaData(dia, mês, ano)
        return true
    end
    return false
end

end
