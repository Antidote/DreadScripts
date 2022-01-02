logiccallbacks = {}


function logiccallbacks.OnPlayerDead(_ARG_0_)
    
  if PoisonZone ~= nil then
    PoisonZone.OnPlayerDead()
  end
  
  if HeatZone ~= nil then
    HeatZone.OnPlayerDead()
  end
  
  if DamagePlants ~= nil then
    DamagePlants.OnPlayerDead()
  end
  
  if WaterZone ~= nil then
    WaterZone.OnPlayerDead()
  end
  
  if LavaZone ~= nil then
    LavaZone.OnPlayerDead()
  end
  
  if fxcallbacks then
    fxcallbacks.OnPlayerDead()
  end
end




function logiccallbacks.OnQuit()
  logiccallbacks.OnPlayerDead("")
end
