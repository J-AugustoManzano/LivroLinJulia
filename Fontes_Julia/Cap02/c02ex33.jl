# Constantes para cores de texto e fundo

const black    =  0  # Preto
const blue     =  1  # Azul
const green    =  2  # Verde
const cyan     =  3  # Ciano
const red      =  4  # Vermelho
const magenta  =  5  # Magenta
const brown    =  6  # Marrom
const lgray    =  7  # Cinza claro

# Constantes para cores de fundo

const dgray    =  8  # Cinza escuro
const lblue    =  9  # Azul claro
const lgreen   = 10  # Verde claro
const lcyan    = 11  # Ciano claro
const lred     = 12  # Vermelho claro
const lmagenta = 13  # Magenta claro
const yellow   = 14  # Amarelo
const white    = 15  # Branco

function normal()
    print("\e[0m")
end

function clear()
    print("\e[2J\e[0;0H")  # limpa tela e posiciona cursor no canto esquerdo superior
end

function background(cor = "Int8")
    if cor ==  0 print("\e[40m") end  # Preto
    if cor ==  1 print("\e[44m") end  # Azul
    if cor ==  2 print("\e[42m") end  # Verde
    if cor ==  3 print("\e[46m") end  # Ciano
    if cor ==  4 print("\e[41m") end  # Vermelho
    if cor ==  5 print("\e[45m") end  # Magenta
    if cor ==  6 print("\e[43m") end  # Marrom
    if cor ==  7 print("\e[47m") end  # Cinza claro
end

function text(cor = "Int8")
    if cor ==  0 print("\e[30m")   end  # Preto
    if cor ==  1 print("\e[34m")   end  # Azul
    if cor ==  2 print("\e[32m")   end  # Verde
    if cor ==  3 print("\e[36m")   end  # Ciano
    if cor ==  4 print("\e[31m")   end  # Vermelho
    if cor ==  5 print("\e[35m")   end  # Magenta
    if cor ==  6 print("\e[33m")   end  # Marrom
    if cor ==  7 print("\e[37m")   end  # Cinza claro
    if cor ==  8 print("\e[1;30m") end  # Cinza escuro
    if cor ==  9 print("\e[1;34m") end  # Azul claro
    if cor == 10 print("\e[1;32m") end  # Verde claro
    if cor == 11 print("\e[1;36m") end  # Ciano claro
    if cor == 12 print("\e[1;31m") end  # Vermelho claro
    if cor == 13 print("\e[1;35m") end  # Magenta claro
    if cor == 14 print("\e[1;33m") end  # Amarelo
    if cor == 15 print("\e[1;37m") end  # Branco
end
  
function color(fundo = "Int8", texto = "Int8") 
    if fundo < 0 && fundo > 7 && texto < 0 && texto > 15
        fundo = 0
        texto = 7
    end
    normal()
    background(fundo)
    text(texto)
end

clear()
println("Teste de padrão de Cores com Código Numérico\n\n")

color(1,14)
println("Fundo: Azul // Texto: Amarelo")
println()

color(1,7)
println("Fundo: Azul // Texto: Cinza claro")
println()

color(4,14)
println("Fundo: Vermelho // Texto: Amarelo")
println()

color(0,2)
println("Fundo: Preto // Texto: Verde")
println()

color(7,12)
println("Fundo: Cinza claro // Texto: Vermelho claro")
println()

color(brown,white)
println("Fundo: Marrom // Texto: Branco")
println()

color(0,7)  # Volta fundo e texto para padrão

println()
print("Tecle <Enter> para encerrar programa... ")
readline()
