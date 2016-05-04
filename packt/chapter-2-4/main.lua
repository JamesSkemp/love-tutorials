-- Basic LOVE game structure:

-- Define variables.
local Quad = love.graphics.newQuad

-- Load assets.
function love.load()
	character = {}
	character.player = love.graphics.newImage('gripe.run_right.png')
	character.x = 50
	character.y = 50
	
	direction = 'right'
	
	iteration = 1
	max = 8
	idle = true
	timer = 0.1

	sprite = love.graphics.newImage 'gripe.run_right.png'
	
	quads = {}
	quads['right'] = {}
	quads['left'] = {}
	
	for j = 1,8 do
		quads['right'][j] = Quad((j - 1) * 32, 0, 32, 32, 256, 32)
		quads['left'][j] = Quad((j - 1) * 32, 0, 32, 32, 256, 32)
		-- Now flip the quad. Horizontally/x = true, vertically/y = false.
		--quads.left[j]:flip(true, false)
	end
end

-- Draw to the display.
function love.draw()
	love.graphics.draw(sprite, quads[direction][iteration], character.x, character.y, 0, (direction == 'right' and 1 or -1), 1)
end

-- Update, with dt time since last update.
function love.update(dt)
	if idle == false then
		timer = timer + dt
		if timer > 0.2 then
			timer = 0.1
			iteration = iteration + 1
			if love.keyboard.isDown('right') then
				character.x = character.x + 5
			end
			if love.keyboard.isDown('left') then
				character.x = character.x - 5
			end
			
			if iteration > max then
				iteration = 1
			end
		end
	end
end

function love.keypressed(key)
	if quads[key] then
		direction = key
		idle = false
	end
end

function love.keyreleased(key)
	if quads[key] and direction == key then
		idle = true
		iteration = 1
		direction = 'right'
	end
end
