module AdventOfCode2022

using Printf

# include all day files and export day functions
for day in 1:25
    dayfile = @sprintf("day%02d.jl", day)
    include(joinpath(@__DIR__, dayfile))

    dayfunc = @sprintf("Day%02d.day%02d", day, day)
    # export eval(Symbol(dayfunc))
end

# export solve
# function solve(days::UnitRange{Int})
#     for day in days
#         part1, part2 = @eval Symbol(@sprintf("Day%02d.day%02d", day, day))()
#         @printf("Day %02d\n", day)
#         println("    Part 1: $part1")
#         println("    Part 2: $part2")
#     end
# end
# 
# export generatefiles
# function generatefiles(days::UnitRange{Int})
#     for day in days
#         open(joinpath(@__DIR__, @sprintf("day%02d.jl", day)), "w") do f
#             @printf(f, "module Day%02d\n\n", day)
#             @printf(f, "export day%02d\n\n", day)
#             print(f, "function part1(path)\n    0\nend\n\n")
#             print(f, "function part2(path)\n    0\nend\n\n")
#             @printf(f, "function day%02d(path=", day)
#             @printf(f, "joinpath(@__DIR__, \"..\", \"data\", \"input%02d.txt\"))\n", day)
#             print(f, "    part1(path), part2(path)\nend\n\n")
#             @printf(f, "end # module Day%02d", day)
# 
#         end
#     end
# end

end # module AdventOfCode2022
