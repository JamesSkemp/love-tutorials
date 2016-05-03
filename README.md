# LÖVE Tutorials

Various tutorials with the [LÖVE framework](https://love2d.org/).

## Personal Development Environment

At this time I'm using [Notepad++ to develop in Lua](https://love2d.org/wiki/Notepad%2B%2B), with the recommended auto-completion plugin.

I've also added a new Run command.

1. Select **Run** and then **Run...** from the menu.
2. Enter the command `"C:\Program Files\LOVE\love.exe" "$(CURRENT_DIRECTORY)"` in the prompt and press the **Save...** button.
	- This is the command I need to run on my 64-bit Windows 10 device.

## Basic LÖVE template

	-- Basic LOVE game structure:

	-- Load assets.
	function love.load()

	end

	-- Update, with dt time since last update.
	function love.update(dt)

	end

	-- Draw to the display.
	function love.draw()

	end

## Full LÖVE template

	-- This function gets called only once, when the game is started, and is usually where you would load resources, initialize variables and set specific settings. All those things can be done anywhere else as well, but doing them here means that they are done once only, saving a lot of system resources.
	function love.load()

	end

	-- This function is called continuously and will probably be where most of your math is done. 'dt' stands for "delta time" and is the amount of seconds since the last time this function was called (which is usually a small value like 0.025714).
	function love.update(dt)

	end

	-- love.draw is where all the drawing happens (if that wasn't obvious enough already) and if you call any of the love.graphics.draw outside of this function then it's not going to have any effect. This function is also called continuously so keep in mind that if you change the font/color/mode/etc at the end of the function then it will have a effect on things at the beginning of the function. For example:
	function love.draw()

	end

	-- This function is called whenever a mouse button is pressed and it receives the button and the coordinates of where it was pressed. The button can be any of the button index that was pressed. This function goes very well along with love.mousereleased.
	function love.mousepressed(x, y, button)
		if button == '1' then
			
		end
	end

	-- This function is called whenever a mouse button is released and it receives the button and the coordinates of where it was released. You can have this function together with love.mousepressed or separate, they aren't connected in any way.
	function love.mousereleased(x, y, button)
		if button == '1' then
			
		end
	end

	-- This function is called whenever a keyboard key is pressed and receives the key that was pressed. The key can be any of the constants. This functions goes very well along with love.keyreleased.
	function love.keypressed(key)

	end

	-- This function is called whenever a keyboard key is released and receives the key that was released. You can have this function together with love.keypressed or separate, they aren't connected in any way.
	function love.keyreleased(key)

	end

	-- This function is called whenever the user clicks off and on the LÖVE window. For instance, if they are playing a windowed game and a user clicks on his Internet browser, the game could be notified and automatically pause the game.
	function love.focus(f)
		gameIsPaused = not f
		
		if not f then
			print("LOST FOCUS")
		else
			print("GAINED FOCUS")
		end
	end

	-- This function is called whenever the user clicks the windows close button (often an X). For instance, if the user decides they are done playing, they could click the close button. Then, before it closes, the game can save its state.
	function love.quit()

	end
