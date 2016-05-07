-- This function gets called only once, when the game is started, and is usually where you would load resources, initialize variables and set specific settings. All those things can be done anywhere else as well, but doing them here means that they are done once only, saving a lot of system resources.
function love.load()

end

-- This function is called continuously and will probably be where most of your math is done. 'dt' stands for "delta time" and is the amount of seconds since the last time this function was called (which is usually a small value like 0.025714).
function love.update(dt)

end

-- love.draw is where all the drawing happens (if that wasn't obvious enough already) and if you call any of the love.graphics.draw outside of this function then it's not going to have any effect. This function is also called continuously so keep in mind that if you change the font/color/mode/etc at the end of the function then it will have a effect on things at the beginning of the function. For example:
function love.draw()

end