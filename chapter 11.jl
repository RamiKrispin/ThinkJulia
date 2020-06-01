# Chapter 11
# Dictionaries
# Setting dictionary is done with the Dict function
x = Dict()
x["one"] = 1
x
x["two"] = 2

# Adding multuple elements
x = Dict("one" => 1, "two" => 2, "three" => 3)
println(x)

x["one"]

length(x)
# The dictionary keys
keys(x)

"one" ∈ keys(x)

values(x)

# Use dict to count number of letters in string
function letter_count(str)
    d = Dict()
    for l in str
        if l ∉ keys(d)
            d[l] = 1
        else
            d[l] += 1
        end
    end
    return(d)
end

letter_count("count the number of letters")

get(x, "two", 0)
get(x, "six", 0)

# Example for function that inverse dictionary

function invertdict(d)
    inverse = Dict()
    for key in keys(d)
        val = d[key]
        if val ∉ keys(inverse)
            inverse[val] = [key]
        else
            push!(inverse[val], key)
        end
    end
    inverse
end

invertdict(x)
