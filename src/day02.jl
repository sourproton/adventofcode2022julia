module Day02

export day02

function score1(p1, p2)
    p1 = Int(p1) - Int('A') 
    p2 = Int(p2) - Int('X') 

    p1 == p2 && return 3

    mod(p1+1, 3) == p2 && return 6

    return 0
end

function part1(path)
    totalscore = 0
    for line in eachline(path)
        p1, p2 = line[1], line[3]
        totalscore += Int(p2) - Int('W')
        totalscore += score1(p1, p2)
    end
    totalscore
end

function score2(p1, result)
    p1 = Int(p1) - Int('A')
    if result == 'X'
        mod(p1-1, 3) + 1
    elseif result == 'Y'
        p1 + 1 + 3
    else
        mod(p1+1, 3) + 1 + 6
    end
end

function part2(path)
    totalscore = 0
    for line in eachline(path)
        p1, result = line[1], line[3]
        totalscore += score2(p1, result)
    end
    totalscore
end

function day02(path=joinpath(@__DIR__, "..", "data", "input02.txt"))
    part1(path), part2(path)
end

end # module Day02
