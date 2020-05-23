# Chapter 3
#------------
# Exercise 3-4
# Draw a grid
function main()
    println("+----+----+")
end

function minor()
    for i = 1:3
        println("|    |    |")
    end
    main()
end
minor()

function printgrid()
    main()
    for i = 1:2
        minor()
    end
end

printgrid()
