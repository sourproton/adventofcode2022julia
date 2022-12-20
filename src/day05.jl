module Day05

export day05

function move!(grid, n, line_from, line_to)
    for _ in 1:n
        push!(grid[line_to], grid[line_from][end])
        pop!(grid[line_from]) 
    end
end

function creategrid(path)
    npiles = ((path |> eachline |> first |> length) + 1) ÷ 4
    piles = [Int[] for _ in 1:npiles]

    for line in eachline(path)
        if line[2] == '1'
            break
        end
        for (pile, index) in enumerate(2:4:length(line))
            push!(piles[pile], Int(line[index]))
        end
    end

    for i in 1:npiles
        filter!(x -> x != 32, piles[i])
        reverse!(piles[i])
    end

    return piles
end

function part1(path)
    piles = creategrid(path)
    for line in eachline(path)
        (line == "" || line[1] != 'm') && continue

        l = split(line)

        move!(
            piles, 
            parse(Int, l[2]),
            parse(Int, l[4]),
            parse(Int, l[6]),
        )

        # println(piles)
    end

    join([Char(pile[end]) for pile in piles])
end

function move2!(grid, n, line_from, line_to)
    for i in n-1:-1:0
        push!(grid[line_to], grid[line_from][end-i])
    end
    for _ in 1:n
        pop!(grid[line_from])
    end
end

function part2(path)
    piles = creategrid(path)
    for line in eachline(path)
        (line == "" || line[1] != 'm') && continue

        l = split(line)

        move2!(
            piles, 
            parse(Int, l[2]),
            parse(Int, l[4]),
            parse(Int, l[6]),
        )

        # println(piles)
    end

    join([Char(pile[end]) for pile in piles])
end

function day05(path=joinpath(@__DIR__, "..", "data", "input05.txt"))
    part1(path), part2(path)
end

end # module Day05
