function love.load()
	box = {
		x = math.random(0, love.window:getWidth());
		y = math.random(0, love.window:getHeight());	
		sx = math.random(5, 10) / 10;
		sy = math.random(5, 10) / 10;
	}
end

function love.update(dt)

end

function love.draw()

	box.x = box.x + box.sx
	box.y = box.y + box.sy
	
	love.graphics.rectangle("fill", box.x, box.y, 50, 50)

	if box.x + 50 >= love.window:getWidth() then
		box.x = -box.x
	end

	if box.y + 50 >= love.window:getHeight() then
		box.y = -box.y
	end

end
