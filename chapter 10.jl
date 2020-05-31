# Chapter 10
# Arrays
# A sequence of elements
x = [1, 2, 3]

# Can mix different types
y = [1, "two", 3, 4]

# Mutable
y[2] = 2
y
2 ∈ y

# Index
eachindex(y)
y[3:end]

# Add elements

push!(y, 5)
t = [6, 7]
append!(t, y)
y
t

sort!(t)
# sort (without !) will just print the sorted elements but won't change the order
z = [1, 2, 5, 4, 3]
sort(z)
z

# Summing the arrays

t = [1, 2, 3, 4]
sum(t)
