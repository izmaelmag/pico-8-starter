player = {}

function player.init()
    player.x = 64
    player.y = 64
    player.vx = 0
    player.vy = 0
    player.w = 8
    player.h = 8
    player.grounded = false
end

function player.update()
    if (btn(0)) then player.vx = player.vx - 0.5 end
    if (btn(1)) then player.vx = player.vx + 0.5 end

    if (player.grounded and btnp(4)) then
        player.vy = -3.5
        player.grounded = false
    end

    player.vy = player.vy + 0.2
    player.x = player.x + player.vx
    player.y = player.y + player.vy

    if (player.y > world.ground_y - player.h) then
        player.y = world.ground_y - player.h
        player.vy = 0
        player.grounded = true
    end

    player.vx = player.vx * 0.8
end

function player.draw()
    rectfill(player.x, player.y, player.x + player.w, player.y + player.h, 7)
end
