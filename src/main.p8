pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
#include ../modules/world/world.lua
#include ../modules/player/player.lua

function _init()
    world.init()
    player.init()
end

function _update()
    player.update()
end

function _draw()
    cls()
    world.draw()
    player.draw()
end

__gfx__

__map__

