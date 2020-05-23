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
