--[[
    Toutes les fonctionnalités du menu sont gérée ici. Il reste encore
    à créer une vraie UI, notamment avec des boutons cliquables.
]]

local Game = require("game")
local Options_M = require("options_in_menu")

local Menu = {}

function Menu.Init()
  
end

function Menu.Update(dt)
  
end

function Menu.Draw()
  love.graphics.print("menu", 10, 10)
  love.graphics.print("options: touche o", 10, 10+16)
  love.graphics.print("game: touche espace", 10, 10+16*2)
  love.graphics.print("quitter: touche echap", 10, 10+16*2*3)
end

function Menu.Keyboard(key)
  if key == "space" then
    current_scene = "GAME"
    Game.Init()
  elseif key == "o" then
    current_scene = "OPTIONS_G"
  elseif key == "escape" then
    love.event.quit()
  end
end

function Menu.Mouse(x, y, button)
  
end

return Menu