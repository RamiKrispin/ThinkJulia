# Chapter 12
# Tuples

# Tuple is a list of values
x = "a", "b", "c", "d"

# Can use parentheses
x = ("a", "b", "c", "d")

# If creating a tuple with one element, must use comma after the element
y = ("a",)
typeof(y)
# Not a tuple
z = "a"
typeof(z)

# Can also use the tuple function
x = tuple("a", "b", "c", "d")
typeof(x)
# Call element with index
x[1]
# Tuples are immutable!

#Tuple Assignment
a = 1, 2, 3
b = 4, 5, 6

a, b = b, a
println(a)
println(b)

# Tuple in a function format
function minmax(t)
    minimum(t), maximum(t)
end

minmax(a)

# The scatter (...) oporator
divrem(8, 3) # works when assign directly the values
t = (8, 3)
divrem(t) # does not work when assigning tople
divrem(t...) # works with the scatter oporator

# Converting dictionary to tuple
d = Dict("one" => 1, "two" => 2, "three" => 3)
for (key, value) in d
    println(key, " ", value)
end

# Coverting tuple to dictionary
t = [("one", 1), ("two", 2), ("three", 3)]
d = Dict(t)
