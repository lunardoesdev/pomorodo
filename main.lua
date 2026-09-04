function love.update(dt)
end

function love.load()
    love.graphics.setFont(love.graphics.newFont(32))
end

function love.draw()
    love.graphics.print("Hello", 50, 50)
end
