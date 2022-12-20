module Matematica

export tabuada

using Printf


"""
```julia
Matematica.tabuada(n)
```

Mostra ```tabuada``` de multiplicação dos valores de ```1``` até 
```10```. Valores fora da faixa permitida geram a apresentação de uma 
mensagem de advertência.

---

### Exemplos

```julia
julia> Matematica.tabuada(10)
10 x  1 =  10
10 x  2 =  20
10 x  3 =  30
10 x  4 =  40
10 x  5 =  50
10 x  6 =  60
10 x  7 =  70
10 x  8 =  80
10 x  9 =  90
10 x 10 = 100
"Concluído com sucesso."

julia> Matematica.tabuada(0)
Atenção: Use valores de 1 até 10.
"Entrada inválida."
```
"""
function tabuada(n::Int)::String
    if n >= 1 && n <= 10
        for i in 1:10
            @printf("%2i x %2i = %3i\n", n, i, n * i)
        end
        return "Concluído com sucesso."
    else
        printstyled("Atenção: "; color=:yellow)
        println("Use valores de 1 até 10.")
        return "Entrada inválida."
    end
end

end # module
