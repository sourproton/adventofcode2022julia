using AdventOfCode2022
using Test

# @testset "Day XX" begin
#     @test dayXX(joinpath(@__DIR__, "data", "sampleXX.txt")) == (0, 0)
# end

@testset "Day 01" begin
    @test day01(joinpath(@__DIR__, "data", "sample01.txt")) == (24_000, 45_000)
end

@testset "Day 02" begin
    @test day02(joinpath(@__DIR__, "data", "sample02.txt")) == (15, 12)
end

@testset "Day 03" begin
    @test day03(joinpath(@__DIR__, "data", "sample03.txt")) == (157, 70)
end

@testset "Day 04" begin
    @test day04(joinpath(@__DIR__, "data", "sample04.txt")) == (2, 4)
end

@testset "Day 05" begin
    @test day05(joinpath(@__DIR__, "data", "sample05.txt")) == ("CMZ", "MCD")
end
