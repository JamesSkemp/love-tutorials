-- Basic LOVE game structure:

-- Load assets.
function love.load()
	-- Add a new font with size 45.
	local myfont = love.graphics.newFont(45)
	-- Load the font we defined above.
	love.graphics.setFont(myfont)
	-- rgba
	love.graphics.setColor(0, 0, 0, 225)
	-- rgb
	love.graphics.setBackgroundColor(255, 153, 0)
end

-- Update, with dt time since last update.
function love.update(dt)

end

-- Draw to the display.
function love.draw()
	love.graphics.print('Hello World!', 200, 200)
end