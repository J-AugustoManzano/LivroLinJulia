# Execução de testes - personalizado

using Matematica, Test

function meuTeste()
    @testset "Teste de tabuadas" begin
        @test Matematica.tabuada(-1) == "Entrada inválida."
        @test Matematica.tabuada(0)  == "Entrada inválida."
        @test Matematica.tabuada(11) == "Entrada inválida."
        @test Matematica.tabuada(11) == "Entrada inválida."
        @test Matematica.tabuada(10) == "Concluído com sucesso."
        @test Matematica.tabuada(5)  == "Concluído com sucesso."
    end
end

meuTeste()
