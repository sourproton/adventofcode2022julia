module Day01

export day01

function part1(path)
    elf_most, elf_current = 0, 0
    for calories in eachline(path)
        if calories == ""
            if elf_current > elf_most
                elf_most = elf_current
            end
            elf_current = 0
        else
            elf_current += parse(Int, calories)
        end
    end
    if elf_current > elf_most
        elf_most = elf_current
    end

    elf_most
end


function part2(path)
    elf_most = [0, 0, 0]
    elf_current = 0
    for calories in eachline(path)
        if calories == ""
            qtt, index = findmin(elf_most)
            if elf_current > qtt
                elf_most[index] = elf_current
            end
            elf_current = 0
        else
            elf_current += parse(Int, calories)
        end
    end
    qtt, index = findmin(elf_most)
    if elf_current > qtt
        elf_most[index] = elf_current
    end

    sum(elf_most)
end

function day01(path)
    part1(path), part2(path)
end

end # module Day01 
