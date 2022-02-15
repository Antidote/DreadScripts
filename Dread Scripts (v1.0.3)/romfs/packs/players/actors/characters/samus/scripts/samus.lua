Game.ImportLibraryWithName("actors/characters/player/scripts/player.lua", "Player")
Samus = {}
setmetatable(Samus, {__index = Player})



function Samus.main()
  Game.ImportLibraryWithName("actors/props/damageplants/scripts/damageplants.lua", "DamagePlants", false)
end




function Samus.OnDamage(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Samus.NotifyDamage(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end



function Samus.OnHackedTrapInitialDamage(_ARG_0_, _ARG_1_, _ARG_2_)
  Samus.NotifyDamage(_ARG_0_.sName, _ARG_1_, _ARG_2_)
end



function Samus.NotifyDamage(_ARG_0_, _ARG_1_, _ARG_2_)
    
  if CurrentScenario ~= nil and CurrentScenario.OnPlayerDamaged ~= nil then
    CurrentScenario.OnPlayerDamaged(_ARG_0_.sName, _ARG_1_, _ARG_2_)
  end
end


function Samus.OnStartGrab(_ARG_0_, _ARG_1_)
  if CurrentScenario.OnPlayerStartGrab ~= nil then
    CurrentScenario.OnPlayerStartGrab(_ARG_0_.sName, _ARG_1_)
  end
end


function Samus.OnGrabbedBy(_ARG_0_)
  utils.LOG(utils.LOGTYPE_LOGIC, _ARG_0_.sName .. " grabbed by " .. _ARG_0_.sName)
end


function Samus.OnEndGrab(_ARG_0_, _ARG_1_)
end


function Samus.OnEndGrabbedBy(_ARG_0_)
  utils.LOG(utils.LOGTYPE_LOGIC, "Samus: end grabbed by " .. _ARG_0_.sName)
end


function Samus.OnBeforeDamage(_ARG_0_, _ARG_1_)
end


function Samus.Delete()
  Game.DeleteEntity(Game.GetPlayer().sName)
end


function Samus.OnRevived(_ARG_0_)
  if CurrentScenario.OnPlayerRevived ~= nil then
    CurrentScenario.OnPlayerRevived(_ARG_0_.sName)
  end
end


Samus.iBreathSound = 0
Samus.asBreathSounds = {}











function Samus.OnBreathRecovered(_ARG_0_)
  Samus.iBreathSound = (Samus.iBreathSound + 1) % #Samus.asBreathSounds
end

function Samus.OnLongJump(_ARG_0_)

end
