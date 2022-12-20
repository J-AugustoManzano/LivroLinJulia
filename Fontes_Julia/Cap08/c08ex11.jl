# Conjugação de verbo regular: primeira conjugação

tamanho, parte = 0, 0
terminação, t1, t2 = "", "", ""

print("\e[2J\e[0;0H")  
println("---------------------------------------")
println("CONJUGAÇÃO VERBAL - Primeira conjugação")
println("---------------------------------------")
println()

print("Entre um verbo regular: ")
verbo = lowercase.(readline())

tamanho = length(verbo)
parte = tamanho - 2

t2 = verbo[tamanho - 1]  # pega "a"
t1 = verbo[tamanho]      # pega "r"

terminação = t2 * t1  # gera terminação "ar"

println()
if terminação == "ar"
    println("Eu ", verbo[1:parte], "o")
    println("Tu ", verbo[1:parte], "as")
    println("Ele ", verbo[1:parte], "a")
    println("Nós ", verbo[1:parte], "amos")
    println("Vós ", verbo[1:parte], "ais")
    println("Eles ", verbo[1:parte], "am")
else
    println("Verbo fornecido não é válido")
end

println()
println("Tecle <Enter> para encerrar programa... ")
readline()
