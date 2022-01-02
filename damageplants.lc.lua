DamagePlants = { 
    iInsideCount = 0, 
    pPlantsEntityCurrent = nil, 
    iLastUpdatedCount = 0 
}

function DamagePlants.main()
  Game.ImportLibraryWithName("actors/characters/samus/scripts/samus.lua", "Samus")
end


function DamagePlants.OnPlayerDead()
  DamagePlants.iInsideCount = 0
  DamagePlants.UpdateFeedback(nil)
  utils.LOG(utils.LOGTYPE_LOGIC, "DamagePlants.OnPlayerDead")
end


function DamagePlants.OnEnter(_ARG_0_, _ARG_1_, _ARG_2_)
  DamagePlants.iInsideCount = DamagePlants.iInsideCount + 1
  DamagePlants.UpdateFeedback(_ARG_0_)
  utils.LOG(utils.LOGTYPE_LOGIC, "DamagePlants.OnEnter")
end



function DamagePlants.UpdateFeedback(_ARG_0_)











  if _ARG_0_ == nil then
    _ARG_0_ = pPlantsEntityCurrent
  end
  
  if _ARG_0_ ~= nil then
      
    print(_ARG_0_.sName)
    local oSceneAnim = _ARG_0_.SCENEANIM
    
    if oSceneAnim ~= nil then
        
      if DamagePlants.iInsideCount > 0 and Samus.IsESActive() then
        oSceneAnim.sModelAnim = "damageblocked"
      else
        oSceneAnim.sModelAnim = "default"
      end
    end
  end
  
  
  if DamagePlants.iInsideCount == 0 then
    
    pPlantsEntityCurrent = nil
  elseif _ARG_0_ ~= nil then
    
    pPlantsEntityCurrent = _ARG_0_
  end
  
  if DamagePlants.iInsideCount > 0 and not Samus.IsESActive() then
    
    
    Game.GetPlayer():PlayEntityLoop("actors/samus/damage_alarm.wav", 0.4, 100000, 100, 1, false)
    Game.PlayEntitySound("levels/zarzas_pain_0" .. math.random(2) .. ".wav", Game.GetPlayer().sName, 0.35, 500, 5000, 0.8)
    guicallbacks.OnPlayerContinuousDamageStart()
    utils.LOG(utils.LOGTYPE_LOGIC, "DamagePlants.DamageStart")
  elseif DamagePlants.iInsideCount > 0 and Samus.IsESActive() or DamagePlants.iInsideCount == 0 and 0 < DamagePlants.iLastUpdatedCount then
    
    
    guicallbacks.OnPlayerContinuousDamageEnd()
    Game.GetPlayer():StopEntityLoopWithFade("actors/samus/damage_alarm.wav", 0.6)
    utils.LOG(utils.LOGTYPE_LOGIC, "DamagePlants.DamageEnd")
  end
  DamagePlants.iLastUpdatedCount = DamagePlants.iInsideCount
end


function DamagePlants.OnExit(_ARG_0_, _ARG_1_, _ARG_2_)
  DamagePlants.iInsideCount = DamagePlants.iInsideCount - 1
  DamagePlants.UpdateFeedback(_ARG_0_)
  if DamagePlants.iInsideCount < 0 then
    DamagePlants.iInsideCount = 0
  end
  
  utils.LOG(utils.LOGTYPE_LOGIC, "DamagePlants.OnExit")
end
