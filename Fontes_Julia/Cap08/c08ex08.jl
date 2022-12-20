# Pacote interno com algoritmos classificadores de listas

module Sorts 

export bubble!,
       cocktail!,
       comb!,
       distributive!,
       gnome!,
       heap!,
       insertion!,
       oddEven!,
       quick!,
       selection!,
       shell!

function bubble!(lst::Array)::Array
    n = length(lst)
    for i in 2:n
        for j in 1:n-1
            if lst[j] > lst[j + 1]
                lst[j], lst[j + 1] = lst[j + 1], lst[j]
            end
        end
    end
    return lst
end

function cocktail!(lst::Array)::Array
    início = 1
    fim = length(lst)
    while início < fim
        for i in início:fim-1
            if lst[i] > lst[i + 1]
                lst[i], lst[i + 1] = lst[i + 1], lst[i]
            end
        end
        fim -= 1
        for i in fim:-1:início+1
             if lst[i] < lst[i - 1]
                lst[i], lst[i - 1] = lst[i - 1], lst[i]
             end
        end
        início += 1
    end
    return lst
end

function comb!(lst::Array)::Array
    n = length(lst)
    desloc = n  
    trocar = true
    while desloc > 1 || trocar
        desloc = trunc(Int, desloc / 1.25)
        i = 0
        trocar = false
        while i + desloc < n
            if lst[i + 1] > lst[i + 1 + desloc]
                lst[i + 1], lst[i + 1 + desloc] = lst[i + 1 + desloc], lst[i + 1]
                trocar = true
            end
            i += 1
        end
    end
    return lst
end

function distributive!(lst::Array)::Array
    n = length(lst)
    for i in 1:n-1
        for j in i+1:n
            if lst[i] > lst[j]
                lst[i], lst[j] = lst[j], lst[i]
            end
        end
    end
    return lst
end

function gnome!(lst::Array)::Array
    n = length(lst)
    i = 2
    j = 3
    while i <= n
        if lst[i - 1] <= lst[i]
            i = j
            j += 1
        else
            lst[i - 1], lst[i] = lst[i], lst[i - 1]
            i -= 1
            if i == 1
                i = j
                j += 1
            end
        end
    end
    return lst
end

function heap!(lst::Array)::Array
    n = length(lst) 
           
    function swap(lst, i, j)
        lst[i], lst[j] = lst[j], lst[i]
    end

    function siftDown(lst, i, n)
        while (pos = 2 * i - 1) < n
            if pos < n && lst[pos] < lst[pos + 1]
                pos += 1
            end
            if lst[i] < lst[pos]
                swap(lst, pos, i)
                i = pos
            else
                break
            end
        end 
    end

    function heapify(lst, n)
        i = div(n, 2)
        while i >= 1
            siftDown(lst, i, n)
            i -= 1
        end
    end

    heapify(lst, n)
    l = n
    while l > 1 
        swap(lst, 1, l)
        l -= 1
        siftDown(lst, 1, l)
    end       
    return lst
end

function insertion!(lst::Array)::Array
    n = length(lst)
    for i in 1:n
        elem = lst[i]
        j = i
        while j > 1 && lst[j - 1] > elem
            lst[j] = lst[j - 1]
            j -= 1
        end
        lst[j] = elem
    end
    return lst
end

function oddEven!(lst::Array)::Array
    n = length(lst)
    pronto = false
    while !pronto
        pronto = true;
        # odd-even
        for i in 2:2:n-1
            if lst[i] > lst[i + 1]
                lst[i], lst[i + 1] = lst[i + 1], lst[i]
                pronto = false
            end
        end
        # even-odd
        for i in 1:2:n-1
            if lst[i] > lst[i + 1]
                lst[i], lst[i + 1] = lst[i + 1], lst[i]
                pronto = false
            end
        end
    end
    return lst
end

function quick!(lst::Array, início::Int64=1, fim::Int64=length(lst))::Array
    i = início
    j = fim
    meio = lst[div(início + fim, 2)]
    while i <= j
        while lst[i] < meio && i < fim
            i += 1
        end
        while lst[j] > meio && j > início
            j -= 1
        end
        if i <= j
            lst[i], lst[j] = lst[j], lst[i]
            i += 1
            j -= 1
        end
    end 
    if j > início
        quick!(lst, início, j)
    end
    if i < fim
        quick!(lst, i, fim)
    end
    return lst
end

function selection!(lst::Array)::Array
    n = length(lst)
    for i in 1:n-1
        min = i
        for j in i+1:n
            if lst[j] < lst[min]
                min = j
            end
        end
        if min != i
            lst[min], lst[i] = lst[i], lst[min]
        end
    end
    return lst
end

function shell!(lst::Array)::Array
    n = length(lst)
    pos = div(length(lst), 2)
    while pos > 0
        for i in pos+1:n
            j = i
            elem = lst[i]
            while j > pos && lst[j - pos] > elem
                lst[j] = lst[j - pos]
                j -= pos
            end
            lst[j] = elem
        end
        if pos == 2
            pos = 1
        else
            pos = floor(Int, pos * 5.0 / 11)
        end
    end
    return lst
end

end  # Sorts
