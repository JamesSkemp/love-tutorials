-- Basic LOVE game structure:

-- Load assets.
function love.load()
	love.graphics.setColor(0, 0, 0, 225)
	
	love.graphics.setBackgroundColor(225, 153, 0)
end

-- Update, with dt time since last update.
function love.update(dt)

end

-- Draw to the display.
function love.draw()
	-- Draw a circle with a particular mode, x and y position, radius, and segments.
	love.graphics.circle('fill', 200, 300, 50, 50)
	
	-- Draw a rectangle with a mode, x and y position, width, and height.
	love.graphics.rectangle('fill', 300, 300, 100, 100)
	
	-- Draw an arc with a mode, x and y position, radius, angle 1, and angle 2.
	love.graphics.arc('fill', 450, 300, 100, math.pi / 5, math.pi / 2)
end