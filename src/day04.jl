module Day04

export day04

function part1(path)
    overlaps = 0
    for pair in eachline(path)
        a, b, c, d = map(x -> parse(Int, x), split(pair, ['-', ',']))
        if (a <= c && b >= d) || (a >= c && b <= d)
            overlaps += 1
        end
    end
    overlaps
end

function part2(path)
    overlaps = 0
    for pair in eachline(path)
        a, b, c, d = map(x -> parse(Int, x), split(pair, ['-', ',']))
        if c <= a <= d || c <= b <= d || a <= c <= b || a <= d <= b
            overlaps += 1
        end
    end
    overlaps
end

function day04(path=joinpath(@__DIR__, "..", "data", "input04.txt"))
    part1(path), part2(path)
end

end # module Day04
