# Criptografia: Caesar

function codMensagem(texto::String)::String
  mensagem::String = ""
  for i in 1:length(texto)
    #=
       Verifica se o caractere m foco é um espaço em branco, sendo
       a menssagem o mantém e avança-se para a próxima posição.
    =#
    if texto[i] == ' ' 
        mensagem *= ' '
        continue
    end
    #=
       Se o caractere em foco for "X", "Y", "Z" então subtraí-se 26 
       do valor do caractere somando-se "3" para obter "A", "B", "C".
       O valor "3" referes-e ao deslocamento da posição atual mais 
       três para gerar o efeito do alfabéto de Caesar.
    =#
    if uppercase(texto[i]) >= 'X' && uppercase(texto[i]) <= 'Z'  
      mensagem *= uppercase(texto[i] - 26 + 3)       
      continue                             
    end                                            
    mensagem *= uppercase(texto[i] + 3)  # cifra cada caractere 3 posições à frente
  end
  return mensagem
end

function decMensagem(texto::String)::String
  mensagem::String = ""
  for i in 1:length(texto)
    if texto[i] == ' ' 
        mensagem *= ' '
        continue
    end
    if uppercase(texto[i]) >= 'A' && uppercase(texto[i]) <= 'C'  
      mensagem *= lowercase(texto[i] + 26 - 3)       
      continue                             
    end                                            
    mensagem *= lowercase(texto[i] - 3)  # cifra cada caractere 3 posições para trás
  end
  return mensagem
end

print("\e[2J\e[0;0H")  
printstyled("---------------\n", color=:cyan)
printstyled("CIFRA DE CAESAR\n", color=:cyan)
printstyled("---------------\n", color=:cyan)
println()
printstyled("Informe mensagem a ser cifrada ...: ", color=:yellow)
mensagOriginal = readline()

mensagCifrada   = codMensagem(mensagOriginal)
mensagDecifrada = decMensagem(mensagCifrada)

    print("\nMensagem original .......: "); printstyled(mensagOriginal, color=:yellow)
print("\nMensagem com cifragem ...: "); printstyled(mensagCifrada, color=:blue)
print("\nMensagem sem cifragem ...: "); printstyled(mensagDecifrada, color=:red)

println("\n")
printstyled("Tecle <Enter> para encerrar programa... ", color=:green)
readline()
