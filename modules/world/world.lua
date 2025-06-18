world = {}

function world.init()
    world.ground_y = 120
end

function world.draw()
    rectfill(0, world.ground_y, 128, 128, 3)
end
