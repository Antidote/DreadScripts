Game.ImportLibrary("system/scripts/fxcallbacks.lua", false)

Game.ImportLibrary("actors/props/heatzone/scripts/heatzone.lua", false)

LavaZone = {iInsideCount = 0, sFXLavaZone = "inflames"}




function LavaZone.main()
end


function LavaZone.Reset()
    
  LavaZone.iInsideCount = 0
  fxcallbacks.SetFxEnabledOnPlayer(LavaZone.sFXLavaZone, false, false)
end


function LavaZone.OnPlayerDead()
  LavaZone.Reset()
end


function LavaZone.OnEnter(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_2_ == true then
    LavaZone.OnEnter()
  end
end


function LavaZone.OnExit(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_2_ == true then
    LavaZone.OnExit()
  end
end



function LavaZone.OnEnter()
    
  utils.LOG(utils.LOGTYPE_LOGIC, "LavaZoneEnter inside count" .. LavaZone.iInsideCount)
  if LavaZone.iInsideCount == 0 and not (0 < Game.GetGravitySuitOn()) then
    fxcallbacks.SetFxEnabledOnPlayer(LavaZone.sFXLavaZone, true, true)
  end
  
  LavaZone.iInsideCount = LavaZone.iInsideCount + 1
end


function LavaZone.OnExit()
  utils.LOG(utils.LOGTYPE_LOGIC, "LavaZoneExit inside count" .. LavaZone.iInsideCount)
  
  LavaZone.iInsideCount = LavaZone.iInsideCount - 1
  if LavaZone.iInsideCount == 0 and not (0 < Game.GetGravitySuitOn()) then
    fxcallbacks.SetFxEnabledOnPlayer(LavaZone.sFXLavaZone, false, false)
  end
  if LavaZone.iInsideCount < 0 then
    LavaZone.iInsideCount = 0
  end
end


function LavaZone.OnDisable()
  LavaZone.Reset()
end
