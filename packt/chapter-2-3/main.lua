-- Basic LOVE game structure:

-- Define variables.
local character = {}

-- Load assets.
function love.load()
	character.x = 300
	character.y = 400
	
	love.graphics.setBackgroundColor(225, 153, 0)
	
	love.graphics.setColor(0, 0, 225)
end

-- Draw to the display.
function love.draw()
	love.graphics.rectangle('fill', character.x, character.y, 100, 100)
end

-- Update, with dt time since last update.
function love.update(dt)
	
	if love.keyboard.isDown('d') then
		character.x = character.x + 25 * dt
	elseif love.keyboard.isDown('a') then
		character.x = character.x - 25 * dt
	elseif love.keyboard.isDown('w') then
		character.y = character.y - 25 * dt
	elseif love.keyboard.isDown('s') then
		character.y = character.y + 25 * dt
	end
end
