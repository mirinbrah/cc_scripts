write("Blocks: ")
local limit = tonumber(read())
if not limit then return end

local moved = 0

for i = 1, limit do
    while turtle.detect() do
        turtle.dig()
    end
    
    if turtle.forward() then
        turtle.digDown()
        moved = moved + 1
    else
        break
    end
end

turtle.turnRight()
turtle.turnRight()

for i = 1, moved do
    while turtle.detect() do
        turtle.dig()
    end
    if turtle.forward() then
        turtle.digDown()
    end    
end

turtle.turnRight()
turtle.turnRight()