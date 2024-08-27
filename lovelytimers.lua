local module = {}
local currentTimers = {}

function module.getAll() return currentTimers end

function module.getTimer(id)
    for index,timer in pairs(currentTimers) do
        if timer.id == id then return timer,index end
    end
    return nil
end

function module.pause(id)
    local timer = module.getTimer(id); if not timer then return false end
    timer.paused = true
    return true
end

function module.destroy(id)
    local _,index = module.getTimer(id); if not index then return false end
    table.remove(currentTimers,index)
    return true
end

function module.resume(id)
    local timer = module.getTimer(id); if not timer then return false end
    timer.paused = false
    return true
end

function module.rewind(id,pause)
    local timer = module.getTimer(id); if not timer then return false end
    timer.dt = 0
    timer.currentReps = 0

    if not pause then return true end
    timer.paused = true
    return true
end

function module.new(id,delay,repetitions,func)
    if module.getTimer(id) then return nil end
    assert(delay, 'delay is nil')
    assert(repetitions, 'repetitions is nil')
    assert(func, 'func is nil')

    local time = {}

    time.id = id
    time.delay = delay
    time.repetitions = repetitions
    time.func = func

    time.dt = 0
    time.currentReps = 0
    time.paused = false

    table.insert(currentTimers,time)
    return time
end

function module.update(dt)
    for index,timer in pairs(currentTimers) do
        if not timer.paused then
            timer.dt = timer.dt + dt
            if timer.dt >= timer.delay then
                timer.dt = 0
                timer.currentReps = timer.currentReps + 1

                timer.func(timer)

                if timer.currentReps >= timer.repetitions then
                    table.remove(currentTimers,index)
                end
            end
        end
    end
end

return module