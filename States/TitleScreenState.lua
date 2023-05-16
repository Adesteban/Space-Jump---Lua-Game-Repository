TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:init()
    -- nothing
end

function TitleScreenState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end

function TitleScreenState:render()
    love.graphics.setFont(flappyFont)
	love.graphics.setColor(128, 0 , 0, 255)
    love.graphics.printf('SPACE JUMP', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
	love.graphics.setColor(156,156,156,255)
    love.graphics.printf('Press Enter to start', 0, 100, VIRTUAL_WIDTH, 'center')	
end