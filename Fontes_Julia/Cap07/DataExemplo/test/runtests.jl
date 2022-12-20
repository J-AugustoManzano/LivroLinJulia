using DataExemplo
using Test

@testset "DataExemplo.jl" begin
    @test testeData(29,02,1944) == true 
    @test testeData(29,02,1945) == false
    @test testeData(29,02,2024) == true 
    @test testeData(29,02,1945) == false 
    @test testeData(30,02,2048) == false 
    @test testeData(00,00,0000) == false 
    @test testeData(00,01,0000) == false 
    @test testeData(00,00,0001) == false 
    @test testeData(00,01,0001) == false 
    @test testeData(01,01,0001) == true 
    @test testeData(26,04,1965) == true 
    @test testeData(32,08,2022) == false 
    @test testeData(05,13,2000) == false 
end
