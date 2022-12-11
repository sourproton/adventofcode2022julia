module Day03

export day03

function priority(item::Char)
    if 'a' <= item <= 'z'
        item - 'a' + 1
    else
        item - 'A' + 27
    end
end

function part1(path)
    prioritysum = 0
    for sack in eachline(path)
        for item in sack[1:end÷2]
            if item in sack[end÷2+1:end]
                prioritysum += priority(item)
                break
            end
        end
    end
    prioritysum
end

function part2(path)
    badgesum = 0
    group = Array{String, 1}(undef, 3)
    i = 0
    for elf in eachline(path)
        i += 1
        group[i] = elf
        if i == 3
            for item in group[1]
                if item in group[2] && item in group[3]
                    badgesum += priority(item)
                    break
                end 
            end
            i = 0
        end
    end
    badgesum
end

function day03(path=joinpath(@__DIR__, "..", "data", "input03.txt"))
    part1(path), part2(path)
end

end # module Day03
