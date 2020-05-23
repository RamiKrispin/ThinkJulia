# Chapter 4
#------------
using ThinkJulia

# Exercise 4-2
function square(t)
    for i in 1:4
        forward(t, 100)
        turn(t, -90)
    end
end

🐢= Turtle()

@svg begin
    square(🐢)
end

# Exercise 4-4
function square(t, len)
    for i in 1:4
        forward(t, len)
        turn(t, -90)
    end
end

🐢= Turtle()

@svg begin
    square(🐢, 100)
end


# Exercise 4-5
function polygon(t, n, len)
    for i in 1:n
        forward(t, len)
        turn(t, -360/n)
    end
end

🐢= Turtle()

@svg begin
    polygon(🐢, 100, 8)
end

# Exercise 4-6
function circle(t, r)
    circumference = 2 * pi * r
    n = 50 # number of segment
    len = circumference / n
    polygon(t, len, n)
end

function circle(t, r)
    circumference = 2 * pi * r
    n = trunc(circumference / 3) + 3 # number of segment
    len = circumference / n
    polygon(t, len, n)
end


🐢= Turtle()

@svg begin
    circle(🐢, 100)
end

# Exercise 4-6

"""
polyline function - draw line
"""
function polyline(t, n, len, angle)
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end
function arc(t, r, angle)
    arc_len = 2 * pi * r * angle / 360
    n = trunc(arc_len / 3) + 1
    step_len = arc_len / n
    step_angle = arc_len / n
    polyline(t, n, step_len, step_angle)
end


🐢= Turtle()

@svg begin
    arc(🐢, 100, 180)
end
