module Day05

export day05

function move!(grid, n, line_from, line_to)
    for _ in 1:n
        push!(grid[line_to], grid[line_from][end])
        deleteat!(grid[line_from], length(grid[line_from])) 
    end
end

function creategrid(path)
    nlines = 0
    for line in eachline(path)
        if line[1] == ' '
            nlines = parse(Int, split(line)[end])
            break
        end
    end
    nlines
end

function part1(path)
    0
end

function part2(path)
    0
end

function day05(path=joinpath(@__DIR__, "..", "data", "input05.txt"))
    part1(path), part2(path)
end

end # module Day05
