# Chapter 6 - Fruitful Functions
# Fruitful function return value with the return argument

function area(radius)
    a = pi * radius ^ 2
    return a
end

# Exercise 6-1
function test(x, y)
    if x > y
        return 1
    elseif x == y
        return 0
    elseif x < y
        return -1
    end
end

function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx ^ 2 + dy ^ 2
    sqrt(d²)
end

distance(1, 2, 4, 6)

# Calculate the area of circle
function circlearea(xc, yc, xp, yp)
    radius = distance(xc, yc, xp, yp)
    result = area(radius)
    return result
end

# Recursive function
# Calculate the factorial value
function fact(n)
    if n == 0
        return 1
    end
    recurse = fact(n - 1)
    result = n * recurse
    return result
end

fact(3)
