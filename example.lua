function love.load()
    lovelytimers = require 'lovelytimers'

    lovelytimers.new('Hello, Love2D!',0.5,30,function (t)
        print('Hello, Love2D!')
        if t.currentReps >= 10 then -- deletes itself after 10 reps
            lovelytimers.destroy( t.id )
        end
    end)
end

function love.update(dt)
    lovelytimers.update(dt)
end