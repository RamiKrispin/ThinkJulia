#Chapter 8
# Working with strings

str = "string"
str[1]
str[end]
str[end - 1]
length(str)
sizeof(str)

symbol = "🍍"
sizeof(symbol)
length(symbol)

symbols = "🍍 🐴 🍅"
sizeof(symbols)
length(symbols)
firstindex(symbols)
lastindex(symbols)

index = firstindex(symbols)
while index <= sizeof(symbols)
    letter = symbols[index]
    println(letter)
    global index = nextind(symbols, index)
end

# Concatenation of strings
greet = "Hello"
whom = "World"
"$greet, $(whom)!" # The brackets around the whom variable used to separete the variable from the ! symbol


function find(word, letter)
    index = firstindex(word)
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end

find("test", 'e')

# Letters counter
word = "banana"
counter = 0
for letter in word
    if letter == 'a'
        global counter = counter + 1
    end
end
println(counter)

findfirst("a", "banana")
findnext("a", "banana", 4)
