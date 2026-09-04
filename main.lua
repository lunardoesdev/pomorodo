local fontSize = 32



local cachedFontSize = 0 -- do not set manually

function love.update(dt)
end

function love.load()
end

function love.draw()
    if (cachedFontSize ~= fontSize) then
        love.graphics.setFont(love.graphics.newFont(fontSize))
        cachedFontSize = fontSize
    end
    love.graphics.print("Hello", 50, 50)
end
