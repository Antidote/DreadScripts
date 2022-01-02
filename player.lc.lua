function Player.main()
end


function Player.SetAbilityUnlocked(_ARG_0_, _ARG_1_)    
  local player = Game.GetPlayer()
  if player ~= nil then
    local ability = player.ABILITY
    if ability ~= nil then
      ability:SetAbilityUnlocked(_ARG_0_, _ARG_1_)
      ability:TrySetSelectedAbility(_ARG_0_, true, true)
    end
  end
end


function Player.IsAbilityActive(_ARG_0_)
  local player = Game.GetPlayer()
  if player ~= nil then
    local abilty = player.ABILITY
    if abilty ~= nil then
        return abilty:IsAbilityActive(_ARG_0_)
    end
  end
end


function Player.IsESActive()
  return Player.IsAbilityActive("EnergyShield")
end


function Player.UnlockPhaseDisplacement()
  Player.SetAbilityUnlocked("PhaseDisplacement", true)
end


function Player.UnlockEnergyWave()
  Player.SetAbilityUnlocked("EnergyWave", true)
end


function Player.UnlockEnergyShield()
  Player.SetAbilityUnlocked("EnergyShield", true)
end


function Player.UnlockScanningPulse()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  Game.LockAeionReserveTank()
  Player.SetAbilityUnlocked("ScanningPulse", true)
end
