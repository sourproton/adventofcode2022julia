using AdventOfCode2023
using Test

# @testset "Day XX" begin
#     @test DayXX.dayXX(joinpath(@__DIR__, "data", "sampleXX.txt")) == 0
# end

@testset "Day 01" begin
    @test Day01.day01(joinpath(@__DIR__, "data", "sample01.txt")) == (24_000, 45_000)
end


println(bar)

