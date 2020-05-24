# Chapter 7
# break enables to exist loop based on condition
# continue enable to skip part of the loop based on condition
for i in 1:10
    if i % 2 == 0
        continue
    end
    print(i, " ")
end

# Calculating square roots with Newton's method:
# y = (x + a / x) / 2, were
# y - estimated square roots of a
# x - inital number

x = 6
a = 16
y = (x + a / x) / 2

# update x with the init estimated of the square roots of a
x = y
y = (x + a / x) / 2

# repeat until the difference between y and x is small engouh

function newton_sqrt(a, init, ε)
    y = (init + a / init) / 2
    println(y)
    while abs(y - init) > ε
        init = y
        y = (init + a / init) / 2
        println(y)
        init = y
    end
    return(y)
end

newton_sqrt(100, 11, 0.00001)
