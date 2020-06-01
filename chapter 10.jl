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

# The dot operator
# Applying binary operator on all the arrays
# The . must have space from the arrays
[1, 2, 3, 4] .^ 2

# Can also apply any julia function
uppercase.(["a", "b", "c", "d"])

# Delete elements with the splice! function
t = [1, 2, 3, 4]
splice!(t, 2)
t

# pop! delets and return the last element
pop!(t)
println(t)

# popfirst! deletes and return the first element
popfirst!(t)

# push! function insert an element
push!(t, 4)
pushfirst!(t,1,2)

# deleteat! function delete element
deleteat!(t, 4)

# insert! add element based on index
insert!(t, 4, 4)

# Converting from string to array
collect("test")

# Break string into words with the split function
split("I eat breakfast")

# Check if objects refer to the same object with the ≡ operator (\equiv TAB) or ===
a = "apple"
b = "apple"
a ≡ b

# This does not work with arrays when assign seperatly
a = [1, 2, 3]
b = [1, 2, 3]
a ≡ b

# but works when aliasing
b = a
a ≡ b
