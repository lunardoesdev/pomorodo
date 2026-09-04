local fontSize = 32
local cachedFontSize = 0 -- do not set manually

local text = nil
local font = nil

local startTime = 0

function love.update(dt)
    local width, height = love.graphics.getDimensions()
    fontSize = math.min(width, height) / 4

    local currentTime = love.timer.getTime()
    local secondsPassed = currentTime - startTime

    local pomodoro = 25 * 60 - secondsPassed
    local s = math.floor(pomodoro % 60)
    local m = math.floor(pomodoro / 60)
    text:set(tostring(m) .. ":" .. tostring(s))
end

function love.load()
    love.window.setMode(640, 480, {resizable = true})
    font = love.graphics.newFont(fontSize)
    text = love.graphics.newText(font, "Hello")
    startTime = love.timer.getTime()
end

function love.draw()
    local width, height = love.graphics.getDimensions()
    if (cachedFontSize ~= fontSize) then
        font = love.graphics.newFont(fontSize)
        love.graphics.setFont(font)
        text:setFont(font)
        cachedFontSize = fontSize
    end
    love.graphics.draw(text, (width - text:getWidth()) / 2, (height - text:getHeight()) / 2)
end
