Game.ImportLibrary("gui/scripts/msemenu.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_common.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_game.lua")
Game.ImportLibrary("gui/scripts/msemenu_presaved.lua")
Game.ImportLibrary("gui/scripts/msemenu_checkpoint.lua")
Game.ImportLibrary("gui/scripts/msemenu_scenarios.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_ingame_common.lua")
Game.ImportLibrary("gui/scripts/menu_root.lua")
Game.ImportLibrary("gui/scripts/msemenu_profile.lua")




function msemenu_ingame.CreateEmmyConfigMenu(_ARG_0_, _ARG_1_)
  
  
  
  
  
  for L5_2, L6_2 in pairs(msemenu_ingame.emmytunables) do
    local L7_2 = msemenu.FindItemContent(msemenu_ingame.config, "Emmy")
    L7_2 = msemenu.FindItemContent(L7_2, _ARG_0_)
    
    if L6_2.Category ~= nil then
      for L11_2, L12_2 in ipairs(L6_2.Category) do
        L7_2 = msemenu.FindItemContent(L7_2, L12_2)
      end
    end
    
    if L6_2.Min ~= nil and L6_2.Max ~= nil and L6_2.Increment ~= nil then
      table.insert(L7_2, { ItemKey = L6_2.Key, ItemContent = msemenu.GenerateTunableNumberPropertyEntry(_ARG_1_, "rConfig." .. L6_2.Var, L6_2.Min, L6_2.Max, L6_2.Increment)})
    elseif L6_2.Min ~= nil and L6_2.Max~= nil and L6_2.Modes ~= nil then
      table.insert(L7_2, { ItemKey = L6_2.Key, ItemContent =  msemenu.GenerateTunableModePropertyEntry(_ARG_1_, "rConfig." .. L6_2.Var, L6_2.Min, L6_2.Max, L6_2.Modes) })
    else
      table.insert(L7_2, { ItemKey = L6_2.Key, ItemContent = msemenu.GenerateTunableBoolPropertyEntry(_ARG_1_, "rConfig." ..  L6_2.Var) })
    end
  end
end

function msemenu_ingame.Create(_ARG_0_)
  Game.ImportLibrary("gui/scripts/msemenu.lua")
  msemenu.items = {}
  table.insert(msemenu.items,  { ItemKey = "Load Checkpoint", ItemContent = msemenu_presaved.GenerateLoadMenuForPlaythrought("pt_official") })
  
  if Game.IsInWIN32() and not Game.IsPackedVersion() and not Game.IsInFINAL() then
    table.insert(msemenu.items, { ItemKey = "Save Scenario Checkpoint", ItemContent = msemenu_presaved.GenerateSaveMenuForPlaythrought("pt_official",  Game.GetScenarioID()) })
  end
  
  table.insert(msemenu.items, { ItemKey = "Load Game Ending", ItemContent = {} } )
    
  local L1_2 = msemenu.FindItemContent(msemenu.items, "Load Game Ending")
  table.insert(L1_2, { ItemKey = "Normal OK",  ItemContent = function() Game.LoadGameEnding(0, 0) end }) 
  table.insert(L1_2, { ItemKey = "Normal GREAT",  ItemContent = function() Game.LoadGameEnding(0, 1) end })
  table.insert(L1_2, { ItemKey = "Normal EXCELLENT", ItemContent = function() Game.LoadGameEnding(0, 2) end })
  table.insert(L1_2, { ItemKey = "Hard OK", ItemContent = function() Game.LoadGameEnding(1, 0) end })
  table.insert(L1_2, { ItemKey = "Hard GREAT", ItemContent = function() Game.LoadGameEnding(1, 1) end})
  table.insert(L1_2, { ItemKey = "Hard EXCELLENT", ItemContent = function() Game.LoadGameEnding(1, 2) end })
  table.insert(msemenu.items, { ItemKey = "Config", ItemContent = msemenu_ingame.config })
  
  if Game.IsInWIN32() then
    table.insert(msemenu.items, { ItemKey = "Save Config", ItemContent = Game.UpdateConfigFile })
  end
  
  if Game.IsInFINAL() then
    table.insert(msemenu.items, 1, { ItemKey = "Debug", ItemContent = msemenu_ingame.debug_invetory_in_final })
  end
  
  if not Game.IsInFINAL() then
    if not Game.IsPackedVersion() then
      table.insert(msemenu.items, { ItemKey = "Generate ini from menu info", ItemContent = Game.GenerateIniFromConfigMenu })
    end
    
    table.insert(msemenu.items, { ItemKey = "Config Dev", ItemContent = msemenu_ingame.dev_config })
    table.insert(msemenu.items, 1, { ItemKey = "Debug", ItemContent = msemenu_ingame.debug_items })
  end
  table.insert(msemenu.items, { ItemKey = "Quit", ItemContent = msemenu_ingame.Quit })
  
  
  msemenu.OnClosed = function() 
    Game.CloseDebugMenu(2)
  end
    
  return msemenu.Create("Up", "items", false, true, false,  11, "CDebugMenuEntryItemRenderer")
end

function msemenu_ingame.LoadCheckpoint()
  Game.LoadGameFromCheckpoint()
  Game.CloseDebugMenu(2)
end

function msemenu_ingame.SaveCheckpoint(_ARG_0_)
  
  local iMaxNumMissiles = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX")
  
  Game.GetTunables().CTunableInventoryComponent.iMaxNumMissiles = iMaxNumMissiles
  
  msemenu.RecoverLife()
  
  if Game.SaveGame("assets", Game.GetScenarioID() .. "/" .. _ARG_0_.ID, _ARG_0_.StartPoint, true) then
    Game.CloseDebugMenu(2)
  end
end

function msemenu_ingame.OnMessageSkip()
end

function msemenu_ingame.Quit()
  Game.QuitGame()
end

function msemenu_ingame.OnExitToMainMenuConfirmed()
  Game.CloseDebugMenuAndReadyExit()
  Scenario.FadeOutAndGoToMainMenu(0.3, false, true)
end

function msemenu_ingame.OnReloadCurrentScenarioConfirmed()
  Game.CloseDebugMenuAndReadyExit()
  Scenario.FadeOutAndReloadCurrentScenario(0.3)
end

function msemenu_ingame.OnLoadFromCheckpointConfirmed()
  Game.CloseDebugMenuAndReadyExit()
  Game.LoadGame("checkpoint")
end

function msemenu_ingame.OnLoadFromSavedataConfirmed()
  Game.CloseDebugMenuAndReadyExit()
  Game.LoadGame("savedatacache")
end

function msemenu_ingame.OnExportStrippedDownSystemPack()
  Game.ExportPackAnyTimeReferencedFilesPfg("system", "packs/system/system.pkg", "system/pkg/system.pfg")
end







function msemenu_ingame.GetEmmy()


  if CurrentScenario ~= nil and msemenu_ingame.Emmy == nil then
    msemenu_ingame.Emmy = CurrentScenario.oEmmyEntity
  end

  return msemenu_ingame.Emmy
end


function msemenu_ingame.GetEmmyName()
  if msemenu_ingame.EmmyName == nil then
    local L0_2 = msemenu_ingame.GetEmmy()
    if L0_2 ~= nil then
      msemenu_ingame.EmmyName = L0_2.sName
    end
  end

  return msemenu_ingame.EmmyName
end


function msemenu_ingame.SwitchVisionConeVisible()
  
  return { 
  OnDirActivated = function() 
    local L0_3 = msemenu_ingame.GetEmmy()
    L0_3.AI.bPerceptionVisionConeVisible = not L0_3.AI.bPerceptionVisionConeVisible
  end, 
  GetCurrentValue = function()
    local L0_3 = msemenu_ingame.GetEmmy()
    if L0_3.AI.bPerceptionVisionConeVisible then
      return "ENABLED"
    else       
      return "DISABLED"
    end
  end 
  }
end


function msemenu_ingame.SwitchShowSearchPointDebug()
  
  return {
    OnDirActivated = function()
      local oEmmy = msemenu_ingame.GetEmmy()
      oEmmy.AI.bShowSearchPointDebug = not oEmmy.AI.bShowSearchPointDebug
    end,
    GetCurrentValue = function()
      local oEmmy = msemenu_ingame.GetEmmy()
      if oEmmy.AI.bShowSearchPointDebug then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end


function msemenu_ingame.SwitchHudTestMode()
  
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.SwitchNextHudTestMode()
      else
        Game.SwitchPrevHudTestMode()
      end
    end,
    GetCurrentValue = function()
    local L0_3 = Game.GetHudTestMode()
    if L0_3 == -1 then
      L0_3 = "none"
    else
      L0_3 = "Hud_" .. tostring(L0_3)
    end
    return L0_3
    end
  }
end


function msemenu_ingame.SwitchWalkMode()
  local L0_2 = { "None", "ZR or ZL Hold", "LS Hold", "LS Toggle" }
  
  return {  
  OnDirActivated = function(_ARG_0_, _ARG_1_)
    local L2_3 = Game.GetSamusWalkMode()
    if _ARG_1_ == "Right" then
      L2_3 = (L2_3 + 1) % #L0_2
    else
      L2_3 = (L2_3 - 1)
      if L2_3 < 0 then
        L2_3 = #L0_2 - 1
      end
    end
    Game.SetSamusWalkMode(L2_3)
  end,
  GetCurrentValue = function()
    local L0_3 = Game.GetSamusWalkMode()
    return L0_2[L0_3 + 1]
  end
  }
end


function msemenu_ingame.SwitchPlayerInvulnerableToEnvironment()
  
  return {
    { GetCurrentValue = Game.DEBUG_TEST_IsPlayerInvulnerableToEnvironment, OnActivated = function() end }, 
    OnDirActivated = function()
      Game.DEBUG_TEST_MakePlayerInvulnerableToEnvironment(not Game.DEBUG_TEST_IsPlayerInvulnerableToEnvironment())
    end,
    GetCurrentValue = function()
      local bInvuln = Game.DEBUG_TEST_IsPlayerInvulnerableToEnvironment()
      if bInvuln then
        return "INVULNERABLE"
      else
        return "VULNERABLE"
      end
    end
  }
end


function msemenu_ingame.SwitchDetectPlayerNoiseEnabled()

  return {
    OnDirActivated = function()
      local oEmmy = msemenu_ingame.GetEmmy()
      oEmmy.AI.bPlayerNoiseEnabled = not oEmmy.AI.bPlayerNoiseEnabled
    end,
    GetCurrentValue = function()
      local oEmmy = msemenu_ingame.GetEmmy()
      if oEmmy.AI.bPlayerNoiseEnabled then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end


function msemenu_ingame.SwitchHardModeEnabled()

  return {
    OnDirActivated = function()
      if Game.GetGameDifficulty() == 0 then
        Game.ChangeGameDifficulty(1)
      else
        Game.ChangeGameDifficulty(0)
      end
    end,
    GetCurrentValue = function()
      local ret = Game.GetGameDifficulty() == 1
      if ret then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end


function msemenu_ingame.GeneratePlayerMaxLifeOverrideMenuEntry()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
    local L2_3 = Game.GetPlayerMaxLifeOverride()
    if L2_3 == nil or L2_3 <= 0 then
      L2_3 = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE")
    end
    
    if _ARG_1_ == "Right" then
      L2_3 = L2_3 + 10
    else
      L2_3 = L2_3 - 10
    end

    Game.SetPlayerMaxLifeOverride(L2_3)
    if L2_3 > 0 then
      Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", L2_3)
      Game.ReinitPlayerFromBlackboard()
      Game.SetIAmACheater()
    end
  end,
    GetCurrentValue = function()
    local L0_3 = Game.GetPlayerMaxLifeOverride()
    if L0_3 == nil or L0_3 <= 0 then
      L0_3 = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE")
    end

    return tostring(L0_3)
  end
  }
end


function msemenu_ingame.GenerateRecoverMissilesMenuEntry()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      local oProp = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX")
      Game.GetTunables().CTunableInventoryComponent.iMaxNumMissiles = oProp
    end
  }
end


function msemenu_ingame.GeneratePatrolSearchMaxTimeEntry()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      local fPatrolSearchMaxTime = 0
      local oEmmy = msemenu_ingame.GetEmmy()
      if oEmmy ~= nil then
        if _ARG_1_ == "Right" then
          fPatrolSearchMaxTime = oEmmy.AI.fPatrolSearchMaxTime + 0.5
        else
          fPatrolSearchMaxTime = oEmmy.AI.fPatrolSearchMaxTime - 0.5
        end
      end

      if fPatrolSearchMaxTime <= 0 then
        fPatrolSearchMaxTime = 0
      end

      if oEmmy ~= nil then
        oEmmy.AI.fPatrolSearchMaxTime = fPatrolSearchMaxTime
      end
    end,
    GetCurrentValue = function()
      local fPatrolSearchMaxTime = -1
      local oEmmy = msemenu_ingame.GetEmmy()
      
      if oEmmy ~= nil then
        fPatrolSearchMaxTime = oEmmy.AI.fPatrolSearchMaxTime
      end
      
      if fPatrolSearchMaxTime > 0 then
        return fPatrolSearchMaxTime
      else
        return "-"
      end
    end
  }
end






function msemenu_ingame.GenerateAmiiboMenu()


  return {
    ["Smash Bros Zero - Energy tank and Matadora music"] = msemenu_ingame.GenerateAmiiboActivateDeactivateMenu("ITEM_RESERVE_TANK_LIFE"),
    ["Smash Bros Samus - Missile tank and Matadora art"] = msemenu_ingame.GenerateAmiiboActivateDeactivateMenu("ITEM_RESERVE_TANK_MISSILE"),
    ["Matadora Samus - SE tank and Metroid II art"] = msemenu_ingame.GenerateAmiiboActivateDeactivateMenu("ITEM_RESERVE_TANK_SPECIAL_ENERGY")
  }
end


function msemenu_ingame.GenerateAmiiboActivateDeactivateMenu(_ARG_0_)

  return {
    Activate = { OnDirActivated = function() msemenu_ingame.ActivateAmiibo(_ARG_0_, 1) end },
    Deactivate = { OnDirActivated = function() msemenu_ingame.ActivateAmiibo(_ARG_0_, 0) end },
    Fill = { OnDirActivated = function() msemenu_ingame.ActivateAmiibo(_ARG_0_, 2) end },
    Empty = { OnDirActivated = function() msemenu_ingame.ActivateAmiibo(_ARG_0_, 3) end }
  }
end


function msemenu_ingame.ActivateAmiibo(_ARG_0_, _ARG_1_)
  
  if _ARG_1_ == 0 then
    Blackboard.SetProp("GAME", "AMIIBO:" .. _ARG_0_ .. "_ACTIVE", "b", false)
  elseif _ARG_1_ == 1 then
    Blackboard.SetProp("GAME", "AMIIBO:" .. _ARG_0_ .. "_ACTIVE", "b", true)
  elseif _ARG_1_ == 2 then
    Blackboard.SetProp("GAME", "AMIIBO:" .. _ARG_0_ .. "_FULL", "b", true)
  elseif _ARG_1_ == 3 then
    Blackboard.SetProp("GAME", "AMIIBO:" .. _ARG_0_ .. "_FULL", "b", false)
  end
end


function msemenu_ingame.EnableMinimap()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsMinimapEnabled() then
        Game.EnableMinimap(false, "debug")
      else
        Game.ClearEnableMinimap()
      end
    end,
    GetCurrentValue = function()
      return Game.IsMinimapEnabled()
    end
  }
end


function msemenu_ingame.EnableAutoFade()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.GetMinimapManager().bAutoFadeEnabled = not Game.GetMinimapManager().bAutoFadeEnabled
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().bAutoFadeEnabled
    end
  }
end


function msemenu_ingame.GenerateMinimapShowUnvisitedEditor()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.GetMinimapManager().bFOWShowUnvisited = not Game.GetMinimapManager().bFOWShowUnvisited
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().bFOWShowUnvisited
    end
  }
end


function msemenu_ingame.GenerateMinimapFOWTypeEditor()
  local L0_2 = { "CAMERA", "CIRCLE", "CLAMP_CIRCLE" }
  local L1_2 = { CAMERA = 0, CIRCLE = 1, CLAMP_CIRCLE = 2 }
  
  return {
  OnDirActivated = function(_ARG_0_, _ARG_1_)
    local L2_3 = L1_2[Game.GetMinimapManager().eFOWType]
    if _ARG_1_ == "Left" then
      Game.GetMinimapManager().eFOWType = L0_2[(((L2_3 + #L0_2) - 1) % #L0_2) + 1]
    else
      Game.GetMinimapManager().eFOWType = L0_2[((L2_3 + 1) % #L0_2) + 1]
    end
  end,
  GetCurrentValue = function()
    return Game.GetMinimapManager().eFOWType
  end
  }
end


function msemenu_ingame.EnableMinimapExPanning()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.GetMinimapManager().bMinimapExPanning = not Game.GetMinimapManager().bMinimapExPanning
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().bMinimapExPanning
    end
  }
end


function msemenu_ingame.EnableMinimapEx()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.GetMinimapManager().bMinimapExEnabled = not Game.GetMinimapManager().bMinimapExEnabled
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().bMinimapExEnabled
    end
  }
end


function msemenu_ingame.GenerateMinimapViewAlphaEditor()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      local fViewAlpha = Game.GetMinimapManager().fViewAlpha
      if _ARG_1_ == "Left" then
        fViewAlpha = fViewAlpha - 0.1
      else
        fViewAlpha = fViewAlpha + 0.1
      end
      if fViewAlpha >= 0.1 and fViewAlpha <= 1 then
        Game.GetMinimapManager().fViewAlpha = fViewAlpha
      end
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().fViewAlpha
    end
  }
end


function msemenu_ingame.GenerateMinimapFOWRadiusEditor()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      local fFOWRadius = Game.GetMinimapManager().fFOWRadius
      if _ARG_1_ == "Left" then
        fFOWRadius = fFOWRadius - 50
      else
        fFOWRadius = fFOWRadius + 50
      end      
      if fFOWRadius >= 100 and fFOWRadius <= 1000 then
        Game.GetMinimapManager().fFOWRadius = fFOWRadius
      end
    end,
    GetCurrentValue = function()
      return Game.GetMinimapManager().fFOWRadius
    end
  }
end


function msemenu_ingame.MetroidLarvaAmiiboActivation()
end


function msemenu_ingame.GenerateForceLoadingScreenTooltip()
  
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "Left" then
      Game.SetForcedTooltip(Game.GetPrevForcedTooltip(Game.GetForcedTooltip()))
    else
      Game.SetForcedTooltip(Game.GetNextForcedTooltip(Game.GetForcedTooltip()))
    end
    end,
    GetCurrentValue = function()
    local sTooltip = Game.GetForcedTooltip():sub(2)
    if sTooltip == "" then
      return  "None"
    else
      return " " .. sTooltip
    end
    end
  }
end


function msemenu_ingame.SwitchShowSubtitles()

  return {
    OnDirActivated = function()
      local bCaptionsAllowed = Game.GetCaptionsAllowed()
      Game.SetCaptionsAllowed(not bCaptionsAllowed)
    end,
    GetCurrentValue = function()
      local bCaptionsAllowed = Game.GetCaptionsAllowed()
      if bCaptionsAllowed then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end


function msemenu_ingame.GenerateGameTimeEntrance()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      local L2_3 = Game.GetTotalPlayTime()
      local L3_3 = 60
      if Game.IsDebugPadButtonPressed("L1") then
        L3_3 = 1
      elseif Game.IsDebugPadButtonPressed("R1") then
        L3_3 = 3600
      end
      if _ARG_1_ == "Left" then
        local L4_3 = L2_3 - L3_3
        if L4_3 < 0 then
          L4_3 = 0
        end
        Game.SetTotalPlayTime(L4_3)
      else
        Game.SetTotalPlayTime(L2_3 + L3_3)
      end
    end,
    GetCurrentValue = function()
      local iTotalPlayTime = Game.GetTotalPlayTime()
      local iHours = math.floor(iTotalPlayTime / 3600)
      local iMins = math.floor((iTotalPlayTime - (iHours * 60 * 60)) / 60)
      local iSecs = math.floor((iTotalPlayTime - (iMins * 60)) - ((iHours * 60) * 60))
      return iHours .. ":" .. iMins .. ":" .. iSecs
    end
  }
end







msemenu_ingame.autofocus_walk_camera = {  
    { 
     ItemKey = "Pulse Always Visible In Autofocus Camera", 
      ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bPulseAlwaysVisibleInAutofocusCamera") 
    } 
}





msemenu_ingame.autofocus_adaptative_walk_camera = {
  { 
   ItemKey = "Max distance to activate", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fMaxDistanceToActivate", 0, 150000, 50)
  },
  {
   ItemKey = "Auto zoom", 
   ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "bZoom")
  },
  {
   ItemKey = "Precise Emmy direction", 
   ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "bCircleMove")
  }
}











if not Game.IsInFINAL() then
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera, 
  { 
   ItemKey = "Max distance to show target direction", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fMaxDistanceToHint", 0, 150000, 50) 
  })
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera, 
  { 
   ItemKey = "Camera interpolation speed", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fInterpolationSpeed", 0, 20, 0.1)
  })
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera, 
  {
   ItemKey = "Camera interpolation accel", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fInterpolationAccel", 0, 20, 0.05)
  })
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera, 
  { 
   ItemKey = "Distance to interpolate accel", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fMinDistanceToInterpolateAccel", 0, 150000, 50)
  })
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera, 
  { 
   ItemKey = "Max interpolation accel attenuation", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fInterpolationAccelAttenuation", 0, 1, 0.05)
  })
  table.insert(msemenu_ingame.autofocus_adaptative_walk_camera,
  { 
   ItemKey = "Focus change hysteresis", 
   ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAdaptativeCameraCtrl|CTunableAutofocusAdaptativeCameraCtrl", "fMinSamusCenteredAutofocusTime", 0, 5, 0.1)
  })
end
msemenu_ingame.samus_room_menu = {}
msemenu_ingame.game_loop_menu = {
  { 
   ItemKey = "Recover Missiles", 
   ItemContent = msemenu_ingame.GenerateRecoverMissilesMenuEntry() 
  },
  { 
   ItemKey = "Player Life Locked", 
   ItemContent = msemenu.GenerateEntityBoolMsgEntry("[PLAYER]", "LIFE", "bCurrentLifeLocked")
  },
  { 
   ItemKey = "Recover Life", 
   ItemContent = msemenu.RecoverLife 
  }
}



msemenu_ingame.emmytunables = {
  { Category = {"Speed"}, Key = "Water Speed Factor", Var = "fWaterSpeedFactor", Min = 0.05, Max = 1, Increment = 0.05 },
  { Category = {"Speed"}, Key = "Emmy Speed Increased Per Second", Var = "fEmmySpeedIncreasedPerSecond", Min = 0, Max = 4, Increment = 0.01 },
  { Category = {"Speed", "Phase1"}, Key = "Patrol Speed", Var = "fPhase1PatrolSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Patrol Search Speed", Var = "fPhase1PatrolSearchSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Patrol Search 2 Speed", Var = "fPhase1PatrolSearch2Speed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Search Speed", Var = "fPhase1SearchSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Search 2 Speed", Var = "fPhase1Search2Speed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Chase Speed Modulation", Var = "bPhase1ChaseSpeedModulation" },
  { Category = {"Speed", "Phase1"}, Key = "Chase Speed", Var = "fPhase1ChaseSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Close Chase Speed", Var = "fPhase1CloseChaseSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Far Distance Chase Speed", Var = "fPhase1FarDistChaseSpeed", Min = 0, Max = 10000, Increment = 50 },
  { Category = {"Speed", "Phase1"}, Key = "Close Distance Chase Speed", Var = "fPhase1CloseDistChaseSpeed", Min = 0, Max = 10000, Increment = 50 },
  { Category = {"Speed", "Phase1"}, Key = "Out Of Camera Speed", Var = "fPhase1OutOfCameraSpeed", Min = 0, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase1"}, Key = "Out Of Camera Speed Deactivate Distance", Var = "fPhase1OutOfCameraSpeedDeactivateDistance", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Speed", "Phase1"}, Key = "Faster Chase Tunnel Transition Enabled", Var = "bFasterChaseTunnelTransitionEnabledPhase1" },
  { Category = {"Speed", "Phase2"}, Key = "Out Of Camera Speed Deactivate Distance", Var = "fPhase2OutOfCameraSpeedDeactivateDistance", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Speed", "Phase2"}, Key = "Faster Chase Tunnel Transition Enabled", Var = "bFasterChaseTunnelTransitionEnabledPhase2" },
  { Category = {"Speed"}, Key = "Out Of Camera Speed Deactivate In Mini Map", Var = "bOutOfCameraSpeedDeactivateInMiniMap" },
  { Category = {"Speed", "Phase2", "ProtectorOn" }, Key = "Chase Speed", Var = "fPhase2ProtectorOnChaseSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorOn" }, Key = "Out Of Camera Speed", Var = "fPhase2ProtectorOnOutOfCameraSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorOn" }, Key = "Protection Impacted Speed Factor", Var = "fPhase2ProtectionHeadImpactedSpeedFactor", Min = 0, Max = 1, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Chase Far Speed", Var = "fPhase2ProtectorDestroyedChaseFarSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Chase Close Speed", Var = "fPhase2ProtectorDestroyedChaseCloseSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Chase 2 Feet Far Speed", Var = "fPhase2ProtectorDestroyedChase2FeetFarSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Chase 2 Feet Close Speed", Var = "fPhase2ProtectorDestroyedChase2FeetCloseSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Out Of Camera Far Speed", Var = "fPhase2ProtectorDestroyedOutOfCameraFarSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Out Of Camera Close Speed", Var = "fPhase2ProtectorDestroyedOutOfCameraCloseSpeed", Min = 0.1, Max = 4, Increment = 0.05 },
  { Category = {"Speed", "Phase2", "ProtectorDestroyed" }, Key = "Far Distance", Var = "fPhase2ProtectorDestroyedFarDistance", Min = 0, Max = 10000, Increment = 10 },
  { Category = {"StallingDetection" }, Key = "Enable stalling detection", Var = "bStallingDetectionEnabled" },
  { Category = {"StallingDetection" }, Key = "Small detection radius", Var = "fStallDetectionSmallRadius", Min = 0, Max = 2000, Increment = 100 },
  { Category = {"StallingDetection" }, Key = "Time on small radius to trigger", Var = "fStallDetectionTimeOnSmallRadius", Min = 0.5, Max = 20, Increment = 0.5 },
  { Category = {"StallingDetection" }, Key = "Big detection radius", Var = "fStallDetectionBigRadius", Min = 1, Max = 3000, Increment = 100 },
  { Category = {"StallingDetection" }, Key = "Time on big radius to trigger", Var = "fStallDetectionTimeOnBigRadius", Min = 0.5, Max = 30, Increment = 0.5 },
  { Category = {"StallingDetection" }, Key = "Increase speed when being stalled", Var = "bStallingSpeedIncreaseEnabled" },
  { Category = {"StallingDetection" }, Key = "Speed increment per second", Var = "fEmmySpeedIncreasedPerSecond", Min = 0, Max = 1, Increment = 0.01},
  { Category = {"StallingDetection" }, Key = "Max speed increment on smartlink", Var = "fMaxEmmySmartLinkSpeedIncreased", Min = 0, Max = 10, Increment = 0.5 },
  { Category = {"StallingDetection" }, Key = "Max speed increment when walking", Var = "fMaxEmmyWalkSpeedIncreased", Min = 0, Max = 10, Increment = 0.25 },
  { Category = {"StallingDetection" }, Key = "Prevent player from stalling on tunnels", Var = "bTunnelStallingPreventionEnabled" },
  { Category = {"StallingDetection" }, Key = "Set Stop And Search Anim In Last Perception Position", Var = "bSetStopAndSearchAnimInLastPerception" },
  { Category = {"Range Radius" }, Key = "Time To Show Previous Detection Range", Var = "fTimeToShowPreviousDetectionRange", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Time To Show Detection Range Growing", Var = "fTimeGrowingDetectionRange", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Time To Show Current Detection Range", Var = "fTimeToShowCurrentDetectionRange", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Time To Show Only Current Detection Range", Var = "fTimeToShowOnlyCurrentDetectionRange", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Detection Range Fade In Duration", Var = "fDetectionRangeFadeIn", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Detection Range Fade Out Duration", Var = "fDetectionRangeFadeOut", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Range Radius" }, Key = "Time Out Of Camera To End Chase", Var = "fTimeOutOfCameraToEndChase", Min = 0.1, Max = 15, Increment = 0.1 },
  { Category = {"Range Radius", "Phase1" }, Key = "Patrol Range Radius", Var = "fPhase1PerceptionPatrolRangeRadius", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Range Radius", "Phase1" }, Key = "Patrol Search Range Radius", Var = "fPhase1PerceptionPatrolSearchRangeRadius", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Range Radius", "Phase1" }, Key = "Search Range Radius", Var = "fPhase1PerceptionSearchRangeRadius", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Range Radius", "Phase1" }, Key = "Chase Range Radius", Var = "fPhase1PerceptionChaseRangeRadius", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Range Radius", "Phase1" }, Key = "Search2 Infinite Radius", Var = "bPerceptionPhase1Search2InfiniteRadius"},
  { Category = {"Range Radius", "Phase1" }, Key = "Search2 Range Radius", Var = "fPhase1PerceptionSearch2RangeRadius", Min = 0, Max = 15000, Increment = 100 },
  { Category = {"Vision Cone", "Phase1" }, Key = "Vision Cone Length", Var = "fPhase1PerceptionCentralVisionConeRadius", Min = 0, Max = 10000, Increment = 100 },
  { Category = {"Vision Cone", "Phase1" }, Key = "Vision Cone Angle", Var = "fPhase1PerceptionCentralVisionConeAperture", Min = 0, Max = 360, Increment = 1 },
  { Category = {"Vision Cone" }, Key = "Vision Cone Intensity", Var = "fPerceptionVisionConeIntensity", Min = 0.5, Max = 1000, Increment = 0.5 },
  { Category = {"Vision Cone" }, Key = "Vision Cone Visible", Var = "bPerceptionVisionConeVisible" },
  { Category = {"Vision Cone" }, Key = "Vision Cone Min Time", Var = "fPerceptionCentralVisionConeMinTimeToTrigger", Min = 0, Max = 10, Increment = 0.01 },
  { Category = {"Grab", "Grab Anticipation" }, Key = "Anticipation Max Distance", Var = "fPhase2Chase2FeetAnticipationMaxDistance", Min = 0, Max = 5000, Increment = 50 },
  { Category = {"Grab", "Grab Anticipation" }, Key = "Anticipation Min Distance", Var = "fPhase2Chase2FeetAnticipationMinDistance", Min = 0, Max = 5000, Increment = 50 },
  { Category = {"Grab"}, Key = "Grab Phase2 Distance", Var = "fPhase2GrabDistance", Min = 0, Max = 400, Increment = 20 },
  { Category = {"Grab"}, Key = "Grab QTE Mode", Var = "iGrabEmmySamusQTEMode", Min = 0, Max = 1, Modes = {"VFX", "HUD"}  },
  { Category = {"Grab"}, Key = "Grab Preparation Rand Time 01", Var = "fGrabPreparationTime1", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Preparation Rand Time 02", Var = "fGrabPreparationTime2", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Preparation Rand Time 03", Var = "fGrabPreparationTime3", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Preparation Grace Time Probability", Var = "fGrabPreparationGraceTimeProbability", Min = 0, Max = 100, Increment = 1 },
  { Category = {"Grab"}, Key = "Grab Preparation Grace Time", Var = "fGrabPreparationGraceTime", Min = 0, Max = 10, Increment = 0.01 },
  { Category = {"Grab"}, Key = "Grab Second QTE Prep Rand Time 01", Var = "fGrabSecondPreparationTime1", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Second QTE Prep Rand Time 02", Var = "fGrabSecondPreparationTime2", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Second QTE Prep Rand Time 03", Var = "fGrabSecondPreparationTime3", Min = 0, Max = 10, Increment = 0.05 },
  { Category = {"Grab"}, Key = "Grab Second QTE Prep Grace Time Probability", Var = "fGrabSecondPreparationGraceTimeProbability", Min = 0, Max = 100, Increment = 1 },
  { Category = {"Grab"}, Key = "Grab Second QTE Prep Grace Time", Var = "fGrabSecondPreparationGraceTime", Min = 0, Max = 10, Increment = 0.01 },
  { Category = {"Grab"}, Key = "Grab First QTE Time 1", Var = "fGrabQTETime", Min = 0, Max = 2, Increment = 0.01 },
  { Category = {"Grab"}, Key = "Grab Second QTE Time", Var = "fGrabSecondQTETime", Min = 0, Max = 10, Increment = 0.01 },
  { Category = {"Grab"}, Key = "Dist To Start Setting 3m In Grab Preparation", Var = "fDistanceToStartSwitchingTo3mInGrabPreparation", Min = 0, Max = 1500, Increment = 10 },
  { Category = {"Grab"}, Key = "Dist To Set 3m In Grab Preparation", Var = "fDistanceToSwitchTo3mInGrabPreparation", Min = 0, Max = 1500, Increment = 10 },
  { Category = {"Rumble"}, Key = "Rumble Location Enabled", Var = "bLocationRumbleEnabled" },
  { Category = {"Rumble"}, Key = "Rumble Base Gain", Var = "fRumbleBaseGain", Min = 0, Max = 2, Increment = 0.05 },
  { Category = {"Rumble"}, Key = "Rumble Wave", Var = "iRumbleWave", Min = 0, Max = 3, Modes = {
                                                                                                "CONTINUOUS",
                                                                                                "EMMY",
                                                                                                "PULSE",
                                                                                                "SEARCH PULSE" 
                                                                                               }  },
  { Category = {"Rumble"}, Key = "Rumble Active States", Var = "iStatesInRumble", Min = 0, Max = 7, Modes = {   
                                                                                                             "NONE", 
                                                                                                             "PATROL", 
                                                                                                             "SEARCH", 
                                                                                                             "CHASE", 
                                                                                                             "PAT+SEA", 
                                                                                                             "SEA+CHA", 
                                                                                                             "PAT+CHA", 
                                                                                                             "ALL"
                                                                                                            }  },
  { Category = {"Sound"}, Key = "Emmy Pulse Sound Volume", Var = "fEmmySoundVolume", Min = 0, Max = 1, Increment = 0.01 },
  { Category = {"Sound"}, Key = "Emmy Pulse Sound Perception Volume", Var = "fEmmySoundPerceptionVolume", Min = 0, Max = 1, Increment = 0.01 },
  { Category = {"Sound"}, Key = "Emmy Sound Min Att Distance", Var = "fEmmySoundMinAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Sound Max Att Distance", Var = "fEmmySoundMaxAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Sound Walk Cam Min Att Dist", Var = "fEmmySoundDistZoomWalkCamMinAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Sound Walk Cam Max Att Dist", Var = "fEmmySoundDistZoomWalkCamMaxAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Search Sound Enabled", Var = "bSearchLoopSoundEnabled"},
  { Category = {"Sound"}, Key = "Emmy Movement Sound Enabled", Var = "bEmmyMovementSoundEnabled" },
  { Category = {"Sound"}, Key = "Emmy Movement Sound Volume", Var = "fEmmyMovementSoundVolume", Min = 0, Max = 1, Increment = 0.01 },
  { Category = {"Sound"}, Key = "Emmy Movement Sound Min Att Dist", Var = "fEmmyMovementSoundMinAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Movement Sound Max Att Dist", Var = "fEmmyMovementSoundMaxAttDistance", Min = 0, Max = 100000, Increment = 10 },
  { Category = {"Sound"}, Key = "Emmy Grab Beep Sound Enabled", Var = "bEmmyGrabBeepSoundEnabled" },
  { Category = {}, Key = "Min Dist To Travel Stretched", Var = "fTwoFeetChaseMinSpaceToStretch", Min = 0, Max = 1000, Increment = 100 },
  { Category = {}, Key = "Detect Door Opened", Var = "iDetectDoorOpenedMode", Min = 0, Max = 2, Modes = {   "None", "Breakable Doors", "All Doors" }  },
  { Category = {}, Key = "Detect Door Opened Distance", Var = "fDetectDoorOpenedDistance", Min = 0, Max = 100000, Increment = 100 },
  { Category = {}, Key = "Behavior Debug", Var = "bShowBehaviorDebug" }, { Category = {}, Key = "Pulse Visible", Var = "bPulseVisible" }
}







msemenu_ingame.config = {
  { ItemKey = "Player Life Locked", ItemContent = msemenu.GenerateEntityBoolMsgEntry("[PLAYER]", "LIFE", "bCurrentLifeLocked") },
  { ItemKey = "Hard Mode", ItemContent = msemenu_ingame.SwitchHardModeEnabled() },
  { ItemKey = "Emmy", ItemContent = {
      { ItemKey = "Common", ItemContent = {
          { ItemKey = "Darkness Enabled",
            ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bDarknessEnabled")
          },
          { ItemKey = "Emmy Zone Pulse", ItemContent = {
              { ItemKey = "Search 2", ItemContent = {
                  { ItemKey = "Pulse Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneSearch2PulseSpeed", 0.1, 20, 0.1) },
                  { ItemKey = "Pulse Wait Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneSearch2PulseWaitTime", 0, 20, 0.05) }
                }
              },
              { ItemKey = "Chase", ItemContent = {
                  { ItemKey = "Pulse Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneChasePulseSpeed", 0.1, 20, 0.1) },
                  { ItemKey = "Pulse Wait Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneChasePulseWaitTime", 0, 20, 0.05) }
                }
              },
              { ItemKey = "Chase Phase 2", ItemContent = {
                  { ItemKey = "Pulse Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneChasePhase2PulseSpeed", 0.1, 20, 0.1) },
                  { ItemKey = "Pulse Wait Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyZoneChasePhase2PulseWaitTime", 0, 20, 0.05) }
                }
              }
            }
          },
          { ItemKey = "Wave", ItemContent = {
              { ItemKey = "Active In Search", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveInSearch") },
              { ItemKey = "Active In Chase", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveInChase") },
              { ItemKey = "Active In Water", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveInWater") },
              { ItemKey = "Active In Phase2 Protector On", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveInPhase2ProtectorOn") },
              { ItemKey = "Infinite Detection Radius", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveInfiniteDetectionRadius") },
              { ItemKey = "Max Radius To Fire", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveMaxRadiusToFire", -1, 15000, 1) },
              { ItemKey = "Time Since Wave Reaction To Fire", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveTimeSinceWaveReactionToFire", 0, 15000, 1) },
              { ItemKey = "Show Fire Feedback", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWaveShowFireFeedback") },
              { ItemKey = "Time Between Fire", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveTimeBetweenFire", 0, 20, 0.1) },
              { ItemKey = "Charge Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveChargeTime", 0, 20, 0.1) },
              { ItemKey = "Projectile Initial Radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveProjectileInitialRadius", 0, 500, 1) },
              { ItemKey = "Projectile Radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveProjectileRadius", 0, 500, 1) },
              { ItemKey = "Ignore Input Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveIgnoreInputTime", 0, 30, 0.1) },
              { ItemKey = "Projectile Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveProjectileSpeed", 100, 20000, 50) },
              { ItemKey = "Projectile Speed In Water", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveProjectileWaterSpeed", 100, 20000, 50) },
              { ItemKey = "Min Time In Space Jump To Fire", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fWaveMinTimeInSpaceJumpToFire", 0, 100, 0.1) }
            }
          },
          { ItemKey = "Ice", ItemContent = {
              { ItemKey = "Use In Patrol", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bIceUseInPatrol") },
              { ItemKey = "Use In Water", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bIceUseInWater") },
              { ItemKey = "Infinite Detection Radius", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bIceInfiniteDetectionRadius") },
              { ItemKey = "Ice Vision Cone Radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fIceIceConeRadius", 0, 10000, 100) },
              { ItemKey = "Ice Vision Cone Aperture", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fIceIceConeAperture", 0, 360, 1) },
              { ItemKey = "Time Between Fire", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fIceTimeBetweenFire", -1, 100, 0.1) },
              { ItemKey = "Ice Max Ignore Input Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fIceIgnoreInputTimeMax", 0, 200, 0.1) },
              { ItemKey = "Ice Min Ignore Input Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fIceIgnoreInputTimeMin", 0, 200, 0.1) }
            }
          },
          { ItemKey = "Auto Focus", ItemContent = {
              { ItemKey = "Auto Focus Init Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyAutoFocusStartTime", 0, 10, 0.1) },
              { ItemKey = "Auto Focus End Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyAutoFocusEndTime", 0, 10, 0.1) },
              { ItemKey = "Auto Focus Zoom Max Distance", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fEmmyAutoFocusMaxZoomDistance", 1000, 1750, 50) }
            }
          },
          { ItemKey = "OC Zoom Presentation", ItemContent = {
              { ItemKey = "Emmy Min Dist", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MetroidCameraCtrl|CTunableMetroidCameraCtrl", "fEmmyDistanceZoomWalkMinEmmyDist", 100, 10000, 50) },
              { ItemKey = "Emmy Max Dist", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MetroidCameraCtrl|CTunableMetroidCameraCtrl", "fEmmyDistanceZoomWalkMaxEmmyDist", 100, 10000, 50) },
              { ItemKey = "Camera Zoom Min", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MetroidCameraCtrl|CTunableMetroidCameraCtrl", "fEmmyDistanceZoomWalkMinEmmyDistCamZ", 100, 10000, 50) },
              { ItemKey = "Camera Zoom Max", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MetroidCameraCtrl|CTunableMetroidCameraCtrl", "fEmmyDistanceZoomWalkMaxEmmyDistCamZ", 100, 10000, 50) }
            }
          },
          { ItemKey = "Wants Chase Red Light",ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bWantsChaseRedLight") },
          { ItemKey = "Grab Tuto Camera Distance", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyProtoAIComponent", "fGrabTutoCameraDistance", 50, 500, 5) },
          { ItemKey = "Close Emmy Doors During Chase", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bCloseEmmyDoorsDuringChase") },
          { ItemKey = "Delete Enemies Chase Distance", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fChaseUnspawnEnemyDistance", 0, 10000, 50) },
          { ItemKey = "Low Pass Filter Outside Room", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bEmmyOutsideRoomLowPassActive") },
          { ItemKey = "Low Pass Filter Outside Hz", ItemContent = msemenu.GenerateTunableModePropertyEntry("Emmy|CTunableEmmyAIComponent", "eEmmyOutsideRoomLowPassFilter", 0, 24, {
                                                                                                                                                                                    "DISABLED",
                                                                                                                                                                                    "80HZ",
                                                                                                                                                                                    "100HZ",
                                                                                                                                                                                    "128HZ", 
                                                                                                                                                                                    "160HZ", 
                                                                                                                                                                                    "200HZ", 
                                                                                                                                                                                    "256HZ", 
                                                                                                                                                                                    "320HZ",  
                                                                                                                                                                                    "400HZ", 
                                                                                                                                                                                    "500HZ", 
                                                                                                                                                                                    "640HZ", 
                                                                                                                                                                                    "800HZ", 
                                                                                                                                                                                    "1000HZ", 
                                                                                                                                                                                    "1280HZ", 
                                                                                                                                                                                    "1600HZ", 
                                                                                                                                                                                    "2000HZ", 
                                                                                                                                                                                    "2560HZ", 
                                                                                                                                                                                    "3200HZ", 
                                                                                                                                                                                    "4000HZ",
                                                                                                                                                                                    "5120HZ",
                                                                                                                                                                                    "6400HZ",
                                                                                                                                                                                    "8000HZ", 
                                                                                                                                                                                    "10240HZ", 
                                                                                                                                                                                    "12800HZ", 
                                                                                                                                                                                    "16000HZ" 
                                                                                                                                                                                   })
          },
          { ItemKey = "After Grab Goto Search", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bAfterGrabGotoSearch") },
          { ItemKey = "Time Target Out Of Emmy Zone To End Search", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fTimeTargetOutOfEmmyZoneToEndSearch", 0, 100, 0.5) }
        }
      },
      { ItemKey = "Emmy Cave", ItemContent = {
          { ItemKey = "Damage", ItemContent = {
              { ItemKey = "Head Protector Increment Heat Factor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyCaveAIComponent", "fHeadHeatIncrementFactor", 0.1, 20, 0.1) },
              { ItemKey = "Time To Start Heat Recover", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyCaveAIComponent", "fTimeToStartHeatRecover", 0, 10, 0.01) },
              { ItemKey = "Head Protector Heat Recovered Per Second", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyCaveAIComponent", "fHeadHeatRecoveredPerSecond", 0, 2, 0.05) }
            }
          }
        }
      },
      { ItemKey = "Emmy Magma", ItemContent = {
          { ItemKey = "Damage", ItemContent = {
              { ItemKey = "Head Protector Increment Heat Factor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyMagmaAIComponent", "fHeadHeatIncrementFactor", 0.1, 20, 0.1) },
              { ItemKey = "Time To Start Heat Recover", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyMagmaAIComponent", "fTimeToStartHeatRecover", 0, 10, 0.01) },
              { ItemKey = "Head Protector Heat Recovered Per Second", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyMagmaAIComponent", "fHeadHeatRecoveredPerSecond", 0, 2, 0.05) }
            }
          }
        }
      },
      { ItemKey = "Emmy Lab", ItemContent = {
          { ItemKey = "Damage", ItemContent = {
              { ItemKey = "Head Protector Increment Heat Factor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fHeadHeatIncrementFactor", 0.1, 20, 0.1) },
              { ItemKey = "Time To Start Heat Recover", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fTimeToStartHeatRecover", 0, 10, 0.01) },
              { ItemKey = "Head Protector Heat Recovered Per Second", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fHeadHeatRecoveredPerSecond", 0, 2, 0.05) }
            }
          },
          { ItemKey = "Speed", ItemContent = {
              { ItemKey = "Speed Booster", ItemContent = {
                  { ItemKey = "fSpeedBoosterPhase1PatrolSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1PatrolSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1PatrolSearchSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1PatrolSearchSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1SearchSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1SearchSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "bSpeedBoosterPhase1ChaseSpeedModulation", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "bSpeedBoosterPhase1ChaseSpeedModulation") },
                  { ItemKey = "fSpeedBoosterPhase1ChaseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1ChaseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1CloseChaseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1CloseChaseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1FarDistChaseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1FarDistChaseSpeed", 0, 10000, 50) },
                  { ItemKey = "fSpeedBoosterPhase1CloseDistChaseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1CloseDistChaseSpeed", 0, 10000, 50) },
                  { ItemKey = "fSpeedBoosterPhase1OutOfCameraSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1OutOfCameraSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1PatrolSearch2Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1PatrolSearch2Speed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase1Search2Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase1Search2Speed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorOnChaseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorOnChaseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorOnOutOfCameraSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorOnOutOfCameraSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedChaseFarSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedChaseFarSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedChaseCloseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedChaseCloseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedChase2FeetFarSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedChase2FeetFarSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedChase2FeetCloseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedChase2FeetCloseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedOutOfCameraFarSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedOutOfCameraFarSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectorDestroyedOutOfCameraCloseSpeed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectorDestroyedOutOfCameraCloseSpeed", 0.05, 4, 0.05) },
                  { ItemKey = "fSpeedBoosterPhase2ProtectionHeadImpactedSpeedFactor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyLabAIComponent", "fSpeedBoosterPhase2ProtectionHeadImpactedSpeedFactor", 0.05, 4, 0.05) }
                }
              }
            }
          }
        }
      },
      { ItemKey = "Emmy Forest", ItemContent = {
          { ItemKey = "Damage", ItemContent = {
              { ItemKey = "Head Protector Increment Heat Factor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyForestAIComponent", "fHeadHeatIncrementFactor", 0.01, 20, 0.05) },
              { ItemKey = "Head Protector Increment Heat Factor Ground", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyForestAIComponent", "fHeadHeatIncrementFactorForGround", 0.01, 20, 0.05) },
              { ItemKey = "Time To Start Heat Recover", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyForestAIComponent", "fTimeToStartHeatRecover", 0, 10, 0.01) },
              { ItemKey = "Head Protector Heat Recovered Per Second", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyForestAIComponent", "fHeadHeatRecoveredPerSecond", 0, 2, 0.05) }
            }
          }
        }
      },
      { ItemKey = "Emmy Sanc", ItemContent = {
          { ItemKey = "Damage", ItemContent = {
              { ItemKey = "Head Protector Increment Heat Factor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmySancAIComponent", "fHeadHeatIncrementFactor", 0.1, 20, 0.1) },
              { ItemKey = "Head Protector Increment Heat Factor During Pursuit", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmySancAIComponent", "fHeadHeatIncrementFactorDuringPursuit", 0.01, 20, 0.05) },
              { ItemKey = "Time To Start Heat Recover", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmySancAIComponent", "fTimeToStartHeatRecover", 0, 10, 0.01) },
              { ItemKey = "Head Protector Heat Recovered Per Second", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmySancAIComponent", "fHeadHeatRecoveredPerSecond", 0, 2, 0.05) }
            }
          },
          { ItemKey = "Vision Cone Through Scenario", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmySancAIComponent", "rConfig.bVisionConeThroughScenario") }
        }
      }
    }
  },
  { ItemKey = "Regular Enemies", ItemContent = {
      { ItemKey = "Life", ItemContent = {
          { ItemKey = "Autclast", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeAutclast", 0, 10000, 10) },
          { ItemKey = "Autector", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeAutector", 0, 10000, 10) },
          { ItemKey = "Autool", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeAutool", 0, 10000, 10) },
          { ItemKey = "Autsharp", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeAutsharp", 0, 10000, 10) },
          { ItemKey = "Autsniper", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeAutsniper", 0, 10000, 10) },
          { ItemKey = "BigFist", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeBigFist", 0, 1000, 10) },
          { ItemKey = "Caterzilla", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCaterzilla", 0, 1000, 10) },
          { ItemKey = "Chozo Zombie-X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoZombieX", 0, 1000, 10) },
          { ItemKey = "Dredhed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeDredhed", 0, 1000, 10) },
          { ItemKey = "Gobbler", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeGobbler", 0, 1000, 10) },
          { ItemKey = "Goliath-X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeGoliath", 0, 1000, 10) },
          { ItemKey = "Gooplot", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeGooplot", 0, 10000, 10) },
          { ItemKey = "Ground Shocker", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeGroundShocker", 0, 10000, 10) },
          { ItemKey = "Hecathon", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeHecathon", 0, 10000, 10) },
          { ItemKey = "Iceflea", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeIceflea", 0, 10000, 10) },
          { ItemKey = "Infester", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeInfester", 0, 10000, 10) },
          { ItemKey = "Nailong", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeNailong", 0, 10000, 10) },
          { ItemKey = "PoisonFly", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifePoisonFly", 0, 10000, 10) },
          { ItemKey = "Quetzoa", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeQuetzoa", 0, 10000, 10) },
          { ItemKey = "Obsydomithon", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeObsydomithon", 0, 10000, 10) },
          { ItemKey = "Rodotuk", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRodotuk", 0, 10000, 10) },
          { ItemKey = "Rock Diver",ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRockDiver", 0, 10000, 10) },
          { ItemKey = "Sabotoru", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeSabotoru", 0, 10000, 10) },
          { ItemKey = "Sclawk", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeSclawk", 0, 10000, 10) },
          { ItemKey = "Shakernaut", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeShakernaut", 0, 10000, 10) },
          { ItemKey = "Shelmit", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeShelmit", 0, 10000, 10) },
          { ItemKey = "Slugger", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeSlugger", 0, 10000, 10) },
          { ItemKey = "Takumaku", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeTakumaku", 0, 10000, 10) },
          { ItemKey = "Scourge", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScourge", 0, 10000, 10) },
          { ItemKey = "Vulkran", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeVulkran", 0, 10000, 10) },
          { ItemKey = "Yamplot-X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeYamplotX", 0, 10000, 10) }
        }
      },
      { ItemKey = "Charge Attack Distance", ItemContent = {
          { ItemKey = "Gooplot radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusGooplot", 0, 10000, 50) },
          { ItemKey = "Poisonfly radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusPoisonfly", 0, 10000, 50) },
          { ItemKey = "Quetzoa radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusQuetzoa", 0, 10000, 50) },
          { ItemKey = "Iceflea radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusIceflea", 0, 10000, 50) },
          { ItemKey = "Takumaku radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusTakumaku", 0, 10000, 50) },
          { ItemKey = "Dredhed radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusDredhed", 0, 10000, 50) },
          { ItemKey = "Blindfly radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusBlindfly", 0, 10000, 50) },
          { ItemKey = "Klaida radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusKlaida", 0, 10000, 50) },
          { ItemKey = "Armadigger radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusArmadigger", 0, 10000, 50)},
          { ItemKey = "Dropter radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusDropter", 0, 10000, 50) },
          { ItemKey = "Sakai radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusSakai", 0, 10000, 50) },
          { ItemKey = "Sharpaw radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusSharpaw", 0, 10000, 50) },
          { ItemKey = "Quetshocker X radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusQuetshockerX", 0, 10000, 50) },
          { ItemKey = "ChozoCommander Ki Counter radius", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("BlockableWarningRadius|CTunableCharClassBlockableWarningRadius", "fBlockableAttackWarningRadiusChozoCommanderKiCounter", 0, 10000, 50) }
        }
      },
      { ItemKey = "Damage", ItemContent = {
          { ItemKey = "Autclast Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutclastDefault", 0, 10000, 10) },
          { ItemKey = "Autector Explosion", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutectorExplosion", 0, 10000, 10) },
          { ItemKey = "Autector Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutectorDefault", 0, 10000, 10) },
          { ItemKey = "Autool Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutoolDefault", 0, 10000, 10) },
          { ItemKey = "Autsharp", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutsharpDefault", 0, 10000, 10) },
          { ItemKey = "Autsniper Laser", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutsniperLaserDefault", 0, 10000, 10) },
          { ItemKey = "Autsniper Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutsniperDefault", 0, 10000, 10) },
          { ItemKey = "BigFist Slam", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutsniperLaserDefault", 0, 10000, 10) },
          { ItemKey = "BigFist Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageAutsniperLaserDefault", 0, 10000, 10) },
          { ItemKey = "Caterzilla Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCaterzillaDefault", 0, 1000, 10) },
          { ItemKey = "Chozo Zombie-X Poison Claws", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageChozoZombieXPoisonClaws", 0, 1000, 10) },
          { ItemKey = "Chozo Zombie-X Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageChozoZombieXDefault", 0, 1000, 10) },
          { ItemKey = "Dredhed Charge", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageDredhedDiveAttack", 0, 1000, 10) },
          { ItemKey = "Dredhed Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageDredhedDefault", 0, 1000, 10) },
          { ItemKey = "Gobbler Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGobblerDefault", 0, 1000, 10) },
          { ItemKey = "Goliath-X Shockwave",ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGoliathDefault", 0, 1000, 10) },
          { ItemKey = "Goliath-X Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGoliathShockWave", 0, 1000, 10) },
          { ItemKey = "Gooplot Jump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGooplotJump", 0, 1000, 10) },
          { ItemKey = "Gooplot Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGooplotDefault", 0, 1000, 10) },
          { ItemKey = "Ground Shocker Electric", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGroundShockerElectric", 0, 1000, 10) },
          { ItemKey = "Ground Shocker Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageGroundShockerDefault", 0, 1000, 10) },
          { ItemKey = "Hecathon Projection", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageHecathonPlanktonDefault", 0, 10000, 10) },
          { ItemKey = "Hecathon Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageHecathonDefault", 0, 10000, 10) },
          { ItemKey = "Iceflea Charge", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageIcefleaDiveAttack", 0, 10000, 10) },
          { ItemKey = "Iceflea Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageIcefleaDefault", 0, 10000, 10) },
          { ItemKey = "Iceflea Ice Explosion", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageIcefleaFreezeTick", 0, 10000, 10) },
          { ItemKey = "Infester Acid Belly", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageInfesterBallDefault", 0, 10000, 10) },
          { ItemKey = "Infester Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageInfesterDefault", 0, 10000, 10) },
          { ItemKey = "Nailong Thorns", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageNailongThorn", 0, 10000, 10) },
          { ItemKey = "Nailong Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageNailongDefault", 0, 10000, 10) },
          { ItemKey = "Poisonfly Charge", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamagePoisonFlyAttack", 0, 10000, 10) },
          { ItemKey = "Poisonfly Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamagePoisonFlyDefault", 0, 10000, 10) },
          { ItemKey = "Quetzoa Charge", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageQuetzoaCharge", 0, 10000, 10) },
          { ItemKey = "Quetzoa Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageQuetzoaDefault", 0, 10000, 10) },
          { ItemKey = "Obsydomithon Heat Burst", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageObsydomithonAttack", 0, 1000, 10) },
          { ItemKey = "Obsydomithon Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageObsydomithonDefault", 0, 1000, 10) },
          { ItemKey = "Rodotuk Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRodotukDefault", 0, 1000, 10) },
          { ItemKey = "Rock Diver Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRockDiverDefault", 0, 1000, 10) },
          { ItemKey = "Sabotoru Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSabotoruDefault", 0, 1000, 10) },
          { ItemKey = "Sclawk Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSclawkDefault", 0, 1000, 10) },
          { ItemKey = "Shakernaut Laser", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageShakernautLaserDefault", 0, 1000, 10) },
          { ItemKey = "Shakernaut Ground Shock", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageShakernautGroundshockDefault", 0, 1000, 10) },
          { ItemKey = "Shakernaut Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageShakernautDefault", 0, 1000, 10) },
          { ItemKey = "Shelmit Plasma Ray", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageShelmitPlasmaRay", 0, 1000, 10) },
          { ItemKey = "Shelmit Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageShelmitDefault", 0, 1000, 10) },
          { ItemKey = "Slugger Acid Ball", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSluggerAcidBall", 0, 1000, 10) },
          { ItemKey = "Slugger Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSluggerDefault", 0, 1000, 10) },
          { ItemKey = "Takumaku Dash", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageTakumakuDashAttack", 0, 1000, 10) },
          { ItemKey = "Takumaku Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageTakumakuDefault", 0, 1000, 10) },
          { ItemKey = "Scourge Tongue Slash", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageScourgeTongueSlash", 0, 1000, 10) },
          { ItemKey = "Scourge Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageScourgeDefault", 0, 1000, 10) },
          { ItemKey = "Vulkran Magma Ball", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageVulkranMagmaBall", 0, 1000, 10) },
          { ItemKey = "Vulkran Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageVulkranDefault", 0, 1000, 10) },
          { ItemKey = "Yamplot-X Bite", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageYamplotXBite", 0, 1000, 10) },
          { ItemKey = "Yamplot-X Bump", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageYamplotXDefault", 0, 1000, 10) }
        }
      }
    }
  },
  { ItemKey = "MidBosses", ItemContent = {
      { ItemKey = "Chozo Robot Soldier", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoRobotSoldier", 0, 10000, 10) },
          { ItemKey = "Elite Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoRobotSoldierAlternative", 0, 10000, 10) },
          { ItemKey = "All Can Use Charge Beam", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("ChozoRobotSoldier|CTunableCharClassChozoRobotSoldierAIComponent", "bAllCanUseChargeBeam") }
        }
      },
      { ItemKey = "Chozo Warrior X", ItemContent = {
          { ItemKey = "Weak Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarriorWeak", 0, 10000, 10) },
          { ItemKey = "Weak X Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarriorXWeak", 0, 10000, 10) },
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarrior", 0, 10000, 10) },
          { ItemKey = "X Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarriorX", 0, 10000, 10) },
          { ItemKey = "Elite Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarriorElite", 0, 10000, 10) },
          { ItemKey = "Elite X Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoWarriorXElite", 0, 10000, 10) },
          { ItemKey = "Missiles needed to break shield", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("ChozoWarrior|CTunableCharClassChozoWarriorAIComponent", "fShieldLife", 0, 100, 1) },
          { ItemKey = "Allow Shield Impact Anim", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("ChozoWarrior|CTunableCharClassChozoWarriorAIComponent", "bAllowShieldImpactAnim") },
          { ItemKey = "Min Time Between Shield Impact Anim", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("ChozoWarrior|CTunableCharClassChozoWarriorAIComponent", "fMinTimeBetweenShieldImpactAnim", 0, 100, 0.1) },
          { ItemKey = "Ultimate Grab Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fWarriorXUltimateGrabSpeed0", 0.1, 100, 0.1) }
        }
      },
      { ItemKey = "Hydrogiga", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeHydrogiga", 0, 10000, 10) },
          { ItemKey = "Polyps Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeHydrogigaPolyps", 0, 10000, 10) },
          { ItemKey = "Blocking Tentacle Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeHydrogigaBlockingTentacle", 0, 10000, 10) }
        }
      },
      { ItemKey = "Super Goliath", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeGoliathX", 0, 10000, 10) },
          { ItemKey = "Burst Projection Bomb Damage ", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSuperGoliathBurstProjectionBomb", 0, 10000, 10) },
          { ItemKey = "Burst Projection Tracker Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageSuperGoliathBurstProjectionTracker", 0, 10000, 10) },
          { ItemKey = "Core X Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCoreX", 0, 10000, 10) },
          { ItemKey = "Core X Bump Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCoreXDefault", 0, 10000, 10) }
        }
      },
      { ItemKey = "Super Quetzoa", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeQuetzoaX", 0, 10000, 10) },
          { ItemKey = "Core X Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCoreXSuperQuetzoa", 0, 10000, 10) },
          { ItemKey = "Core X Bump Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCoreXSuperQuetzoaDefault", 0, 10000, 10) }
        }
      },
      { ItemKey = "Central Units and Rinkas", ItemContent = {
          { ItemKey = "Central Unit Cave", ItemContent = {
              { ItemKey = "Brain Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitCaves", 0, 10000, 10) },
              { ItemKey = "Armor Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitArmorCaves", 0, 10000, 10) },
              { ItemKey = "Rinka Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRinkaCaves", 0, 10000, 10) },
              { ItemKey = "Rinka Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRinkaCaves", 0, 10000, 10) },
              { ItemKey = "Cannon Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCentralUnitCannonBeamCaves", 0, 10000, 10) }
            }
          },
          { ItemKey = "Central Unit Magma", ItemContent = {
              { ItemKey = "Brain Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitMagma", 0, 10000, 10) },
              { ItemKey = "Armor Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitArmorMagma", 0, 10000, 10) },
              { ItemKey = "Rinka Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRinkaMagma", 0, 10000, 10) },
              { ItemKey = "Rinka Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRinkaMagma", 0, 10000, 10) },
              { ItemKey = "Cannon Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCentralUnitCannonBeamMagma", 0, 10000, 10) }
            }
          },
          { ItemKey = "Central Unit Laboratory", ItemContent = {
              { ItemKey = "Brain Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitLaboratory", 0, 10000, 10) },
              { ItemKey = "Armor Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitArmorLaboratory", 0, 10000, 10) },
              { ItemKey = "Rinka Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRinkaLab", 0, 10000, 10) },
              { ItemKey = "Rinka Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRinkaLab", 0, 10000, 10) },
              { ItemKey = "Cannon Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCentralUnitCannonBeamLab", 0, 10000, 10) }
            }
          },
          { ItemKey = "Central Unit Sanctuary", ItemContent = {
              { ItemKey = "Brain Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitSanctuary", 0, 10000, 10) },
              { ItemKey = "Armor Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitArmorSanctuary", 0, 10000, 10) },
              { ItemKey = "Rinka Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRinkaForest", 0, 10000, 10) },
              { ItemKey = "Rinka Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRinkaForest", 0, 10000, 10) },
              { ItemKey = "Cannon Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCentralUnitCannonBeamSanc", 0, 10000, 10) }
            }
          },
          { ItemKey = "Central Unit Forest", ItemContent = {
              { ItemKey = "Brain Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitForest", 0, 10000, 10) },
              { ItemKey = "Armor Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCentralUnitArmorForest", 0, 10000, 10) },
              { ItemKey = "Rinka Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeRinkaSanc", 0, 10000, 10) },
              { ItemKey = "Rinka Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageRinkaSanc", 0, 10000, 10) },
              { ItemKey = "Cannon Damage", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCentralUnitCannonBeamForest", 0, 10000, 10) }
            }
          },
          { ItemKey = "Rinka Speed A", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Rinka|CTunableCharClassRinkaAIComponent", "fATypeMotionSpeed", 0, 10000, 10) },
          { ItemKey = "Rinka Speed B", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Rinka|CTunableCharClassRinkaAIComponent", "fBTypeMotionSpeed", 0, 10000, 10) },
          { ItemKey = "Rinka Speed C", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Rinka|CTunableCharClassRinkaAIComponent", "fCTypeMotionSpeed", 0, 10000, 10) }
        }
      },
      { ItemKey = "Cooldown X", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCooldownXBoss", 0, 100000, 100) },
          { ItemKey = "Arm Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeCooldownXBossWeakPoint", 0, 100000, 10) },
          { ItemKey = "Phase 2 Timeout", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fPhase2Timeout", 0, 100000, 10) },
          { ItemKey = "Min Life Restored 4 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMinLifeRestored4Arms", 0, 100000, 10) },
          { ItemKey = "Man Life Restored 4 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMaxLifeRestored4Arms", 0, 100000, 10) },
          { ItemKey = "Min Life Restored 3 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMinLifeRestored3Arms", 0, 100000, 10) },
          { ItemKey = "Man Life Restored 3 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMaxLifeRestored3Arms", 0, 100000, 10) },
          { ItemKey = "Min Life Restored 2 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMinLifeRestored2Arms", 0, 100000, 10) },
          { ItemKey = "Man Life Restored 2 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMaxLifeRestored2Arms", 0, 100000, 10) },
          { ItemKey = "Min Life Restored 1 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMinLifeRestored1Arms", 0, 100000, 10) },
          { ItemKey = "Man Life Restored 1 Arms", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CooldownXBoss|CTunableCharClassCooldownXBossAIComponent", "fMaxLifeRestored1Arms", 0, 100000, 10) },
          { ItemKey = "Damage Default", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossDefault", 0, 10000, 10) },
          { ItemKey = "Damage Fire Ball", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossFireBall", 0, 10000, 10) },
          { ItemKey = "Damage Wind Tunnel Wall", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossWindTunnelWall", 0, 10000, 10) },
          { ItemKey = "Damage Lava Carpet", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossLavaCarpet", 0, 10000, 10) },
          { ItemKey = "Damage Lava Carpet Puddles", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossLavaCarpetPuddles", 0, 10000, 10) },
          { ItemKey = "Damage Lava Drop", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossLavaDrop", 0, 10000, 10) },
          { ItemKey = "Damage Reaper", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossReaper", 0, 10000, 10) },
          { ItemKey = "Damage Strong Whip", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossStrongWhip", 0, 10000, 10) },
          { ItemKey = "Damage Laser Bite", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Damage|CTunableCharClassAttackComponent", "fDamageCooldownXBossLaserBite", 0, 10000, 10) }
        }
      }
    }
  },
  { ItemKey = "Bosses", ItemContent = {
      { ItemKey = "Commander", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoCommander", 0, 100000, 10) },
          { ItemKey = "Life Phase 1", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoCommanderStage1", 0, 100000, 10) },
          { ItemKey = "Life Phase 2", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoCommanderStage2", 0, 100000, 10) },
          { ItemKey = "Life Sentence Sphere", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoCommanderSentenceSphere", 0, 100000, 10) },
          { ItemKey = "Life Energy Shards", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeChozoCommanderEnergyShards", 0, 100000, 10) },
          { ItemKey = "Ultimate Grab Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fCommanderUltimateGrabSpeed0", 0.1, 100, 0.1) },
          { ItemKey = "Ki Counter Deactivate Aura", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("ChozoCommander|CTunableCharClassChozoCommanderAIComponent", "bKiCounterDeactivateAura") },
          { ItemKey = "Ki Counter Show Meleable FX", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("ChozoCommander|CTunableCharClassChozoCommanderAIComponent", "bKiCounterShowMeleableFX") },
          { ItemKey = "Ki Counter Use Zoom Camera", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("ChozoCommander|CTunableCharClassChozoCommanderAIComponent", "bKiCounterUseZoomCamera") },
          { ItemKey = "Sentence Sphere Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("ChozoCommander|CTunableCharClassChozoCommanderAIComponent", "fSentenceSphereSpeed", 0, 100000, 10) }
        }
      },
      { ItemKey = "Kraid", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeKraid", 0, 100000, 10) },
          { ItemKey = "Life Phase 1", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeKraidStage1", 0, 100000, 10) },
          { ItemKey = "Life Nails", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeKraidNail", 0, 100000, 10) },
          { ItemKey = "Life Acid Blobs", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeKraidAcidBlobs", 0, 100000, 10) },
          { ItemKey = "Life Bouncing Creatures", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeKraidBouncingCreatures", 0, 100000, 10) },
          { ItemKey = "Flying Spike Motion Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Kraid|CTunableCharClassKraidAIComponent", "fFlyingSpikeMotionSpeed", 1, 100000, 50) },
          { ItemKey = "Flying Spike Sticked Wall Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Kraid|CTunableCharClassKraidAIComponent", "fFlyingSpikeStickedWallTime", 0, 10, 0.1) },
          { ItemKey = "Zip Line Down Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Kraid|CTunableCharClassKraidAIComponent", "fZipLineDownTime", 0, 10, 0.1) }
        }
      },
      { ItemKey = "Scorpius", ItemContent = {
          { ItemKey = "Life", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScorpius", 0, 100000, 10) },
          { ItemKey = "Life Phase 1", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScorpiusStage1", 0, 100000, 10) },
          { ItemKey = "Life Mask", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Scorpius|CTunableCharClassScorpiusAIComponent", "fMaskLife", 0, 100000, 10) },
          { ItemKey = "Life Tail", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScorpiusTail", 0, 100000, 10) },
          { ItemKey = "Life Tail Phase 3", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScorpiusTailPhase3", 0, 100000, 10) },
          { ItemKey = "Life Spit", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Life|CTunableCharClassLifeComponent", "fLifeScorpiusSpit", 0, 100000, 10) },
          { ItemKey = "Force OC Disabled", ItemContent = msemenu.GenerateTunableModePropertyEntry("Scorpius|CTunableCharClassScorpiusAIComponent", "iForceOpticCamouflageDisabledMode", 0, 2, { 
                                                                                                                                                                                               "Default", 
                                                                                                                                                                                               "ForceEnabled", 
                                                                                                                                                                                               "ForceDisabled"
                                                                                                                                                                                              })
          }
        }
      }
    }
  },
  { ItemKey = "SPB and SPR", ItemContent = {
      { ItemKey = "Stagger Time Grab", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fStaggerTimeGrab", 0, 100, 0.1) },
      { ItemKey = "Stagger Time Head Protector Destroyed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fStaggerTimeHeadProtectorDestroyed", 0, 100, 0.1) },
      { ItemKey = "Stagger Recovery Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fEmmyStaggerRecoverySpeed", 0.1, 10, 0.05) },
      { ItemKey = "Stagger Recovery Turn Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fEmmyStaggerRecoveryTurnSpeed", 0.1, 10, 0.05) },
      { ItemKey = "SPR Charge Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityEnergyWave", "fSpecialRocketTimeActivate", 0, 10, 0.1) },
      { ItemKey = "SPB Width", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityEnergyWave", "fSpecialBurstWidth", 0, 20, 1) },
      { ItemKey = "SPR Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityEnergyWave", "fSpecialRocketSpeed", 1, 30000, 50) },
      { ItemKey = "SPR Use Initial Acceleration", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityEnergyWave", "bSpecialRocketUseInitialAcceleration") }
    }
  },
  { ItemKey = "Aeion", ItemContent = {
      { ItemKey = "Time to start recovering energy", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunableSpecialEnergyComponent", "fTimeToStartEnergyRecover", 0, 100, 0.05) },
      { ItemKey = "Time to recover energy after GhostDash", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunableSpecialEnergyComponent", "fTimeToRecoverAllEnergyGhostDash", 0.1, 100, 0.1) },
      { ItemKey = "Time to recover energy after OC while moving", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunableSpecialEnergyComponent", "fTimeToRecoverAllEnergyOpticalCamuflage", 0.1, 100, 0.1) },
      { ItemKey = "Time to recover energy after OC while not moving", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunableSpecialEnergyComponent", "fTimeToRecoverAllEnergyOpticalCamuflageNotMoving", 0.01, 100, 0.1) },
      { ItemKey = "Time to recover energy after Sonar", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunableSpecialEnergyComponent", "fTimeToRecoverAllEnergySonar", 0.1, 100, 0.1) }
    }
  },
  { ItemKey = "GhostDash", ItemContent = {
      { ItemKey = "Chain Dash", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityGhostAura", "iChainDashMax", 0, 10, 1) },
      { ItemKey = "Back By Default", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityGhostAura", "bNoInputBackDash") },
      { ItemKey = "Hold to Chain", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityGhostAura", "bHoldToChain") },
      { ItemKey = "Auto Dash after Time", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityGhostAura", "bAutoLauchOnTime") },
      { ItemKey = "Choose Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityGhostAura", "fActivationDelayTime", 0, 1, 0.016) },
      { ItemKey = "Chain With Joystick", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityGhostAura", "bChainWithDirectionTrigger") },
      { ItemKey = "Chain With Button", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityGhostAura", "bChainWithButtonTrigger") }
    }
  },
  { ItemKey = "Optic Camouflage", ItemContent = {
      { ItemKey = "Selection Mode", ItemContent = msemenu.GenerateTunableModePropertyEntry("CTunableAbilityOpticCamouflage", "iSelectionMode", 0, 1, { "Toggle with input", "Hold input" }) },
      { ItemKey = "Selection Input", ItemContent = msemenu.GenerateTunableModePropertyEntry("CTunableAbilityOpticCamouflage", "iSelectionInput", 0, 1, {"RS", "ZR"}) },
      { ItemKey = "Consumed energy when firing a regular beam", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireBeam", 0, 1000, 50) },
      { ItemKey = "Consumed energy when firing the grapple beam", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireGrappleBeam", 0, 1000, 50) },
      { ItemKey = "Consumed energy when firing the hyper beam", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireHyperBeam", 0, 1000, 50) },
      { ItemKey = "Consumed energy when firing a missile", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireMissile", 0, 1000, 50) },
      { ItemKey = "Consumed energy when placing a bomb", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireBomb", 0, 1000, 50) },
      { ItemKey = "Consumed energy when placing a line bomb", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFireLineBomb", 0, 1000, 50) },
      { ItemKey = "Consumed energy when placing a power bomb", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnFirePowerBomb", 0, 1000, 50) },
      { ItemKey = "Consumed energy when performing a melee attack", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnMelee", 0, 1000, 50) },
      { ItemKey = "Walking Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fOpticCamouflageSpeed", 0.1, 2, 0.05) },
      { ItemKey = "Walking Jump Horizontal Multiplier", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunablePlayerMovement", "fWalkingJumpHorizontalMultiplier", 0.1, 1, 0.05) },
      { ItemKey = "Walking Jump Vertical Multiplier", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Player|CTunablePlayerMovement", "fWalkingJumpVerticalMultiplier", 0.1, 1, 0.05) },
      { ItemKey = "fDamagePerSecondStill", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fDamagePerSecondStill", 0, 1000, 0.5) },
      { ItemKey = "fDamagePerSecondMoving",ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fDamagePerSecondMoving", 0, 1000, 0.5) },
      { ItemKey = "fSpecialEnergyConsumptionPerSecondStill", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionPerSecondStill", 0, 10000, 1) },
      { ItemKey = "fSpecialEnergyConsumptionPerSecondMoving", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionPerSecondMoving", 0, 10000, 1) },
      { ItemKey = "fSpecialEnergyConsumptionOnActivation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableAbilityOpticCamouflage", "fSpecialEnergyConsumptionOnActivation", 0, 10000, 1) },
      { ItemKey = "Samus needs to move for the Aeion to start recovering", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityOpticCamouflage", "bRequireMovementToRegenerateSpecialEnergy") },
      { ItemKey = "If No Aeion Actions Deactivate OC", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilityOpticCamouflage", "bIfNoAeionActionsDeactivateOC") }
    }
  },
  { ItemKey = "Spider Magnet", ItemContent = {
      { ItemKey = "Time to allow transition to Spider-man pose", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MagnetGlove|CTunableSamusMagnetGloveMovementState", "fTimeToEnableSpiderPose", 0, 10, 0.5) },
      { ItemKey = "Require input re-tap to allow Spider-man pose", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("MagnetGlove|CTunableSamusMagnetGloveMovementState", "bSpiderPoseRequiresRetap") }
    }
  },
  { ItemKey = "Minimap", ItemContent = {
      { ItemKey = "Show Emmy", ItemContent = msemenu.GenerateTunableModePropertyEntry("Emmy|CTunableEmmyAIComponent", "iMinimapMode", 0, 5, { "Never", "Always", "Patrol2Search", "ChaseAndSearchRange", "Search", "AlwaysExceptPatrol" }) },
      { ItemKey = "Patrol2Search Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Emmy|CTunableEmmyAIComponent", "fMinimapPatrol2SearchTime", 0.5, 100, 0.5) },
      { ItemKey = "Enabled", ItemContent = msemenu_ingame.EnableMinimap() },
      { ItemKey = "Opacity", ItemContent = msemenu_ingame.GenerateMinimapViewAlphaEditor() },
      { ItemKey = "Fade in Aiming", ItemContent = msemenu_ingame.EnableAutoFade() },
      { ItemKey = "MinimapEx", ItemContent = msemenu_ingame.EnableMinimapEx() },
      { ItemKey = "MinimapEx Panning", ItemContent = msemenu_ingame.EnableMinimapExPanning() }
    }
  },
  { ItemKey = "Camera", ItemContent = {
      { ItemKey = "Aim Camera", ItemContent = {
          { ItemKey = "Aim Cam Distance", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAimCameraCtrl|CTunableAutofocusAimCameraCtrl", "fAimNewCameraDistance", 500, 5000, 10) },
          { ItemKey = "Aim Cam Angle", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAimCameraCtrl|CTunableAutofocusAimCameraCtrl", "fAimNewCameraAng", 0, 90, 1) },
          { ItemKey = "Aim Cam OffsetY", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAimCameraCtrl|CTunableAutofocusAimCameraCtrl", "fAimNewCameraOffsetY", -200, 200, 10) },
          { ItemKey = "FreeAim Interpolation Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("AutofocusAimCameraCtrl|CTunableAutofocusAimCameraCtrl", "fAimNewCameraFreeAimInterpolationSpeed", 1, 10000, 1) }
        }
      },
      { ItemKey = "Autofocus Camera", ItemContent = msemenu_ingame.autofocus_walk_camera }
    }
  },
  { ItemKey = "Sound", ItemContent = {
      { ItemKey = "Pause Music Volume", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolume", "fVolumeInMenu", 0.1, 1, 0.05) },
      { ItemKey = "Music Volume", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Sounds|CTunableSoundSystemATK", "fMusicVolume", -1, 2, 0.05) },
      { ItemKey = "SFX Volume", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Sounds|CTunableSoundSystemATK", "fSfxVolume", -1, 2, 0.05) },
      { ItemKey = "Environment Volume", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Sounds|CTunableSoundSystemATK", "fEnvironmentStreamsVolume", -1, 2, 0.05) },
      { ItemKey = "Display Playing Music", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("MUSIC|CTunableMusicManager", "bNCLCurrentMusicDebugEnable") },
      { ItemKey = "Music Volume Override", ItemContent = {
          { ItemKey = "s_title", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fTitleScreen", -1, 2, 0.05) },
          { ItemKey = "S_SamusStory", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSamusStory", -1, 2, 0.05) },
          { ItemKey = "S_Opening", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fOpening", -1, 2, 0.05) },
          { ItemKey = "S_GameOver", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fGameOver", -1, 2, 0.05) },
          { ItemKey = "s_savestation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSaveStation", -1, 2, 0.05) },
          { ItemKey = "s_mapstation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fMapStation", -1, 2, 0.05) },
          { ItemKey = "s_accesspoint", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fAccessPoint", -1, 2, 0.05) },
          { ItemKey = "s_statueroom", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fStatueRoom", -1, 2, 0.05) },
          { ItemKey = "S_TrainStation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fTrainStation", -1, 2, 0.05) },
          { ItemKey = "s_cave_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCave001", -1, 2, 0.05) },
          { ItemKey = "s_cave_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCave002", -1, 2, 0.05) },
          { ItemKey = "s_cave_003", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCave003", -1, 2, 0.05) },
          { ItemKey = "S_Cave_ThermalDevice", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCaveThermalDevice", -1, 2, 0.05) },
          { ItemKey = "S_Cave_Cooldown", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCaveCooldDown", -1, 2, 0.05) },
          { ItemKey = "s_magma_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fMagma001", -1, 2, 0.05) },
          { ItemKey = "s_magma_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fMagma002", -1, 2, 0.05) },
          { ItemKey = "S_Magma_Cooldown", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fMagmaCoolDown", -1, 2, 0.05) },
          { ItemKey = "S_Baselab_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBaseLab001", -1, 2, 0.05) },
          { ItemKey = "S_Baselab_001_Blackout", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBaseLabBlackOut", -1, 2, 0.05) },
          { ItemKey = "S_Aqua_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fAqua001", -1, 2, 0.05) },
          { ItemKey = "S_Aqua_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fAqua002", -1, 2, 0.05) },
          { ItemKey = "S_Forest_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fForest001", -1, 2, 0.05) },
          { ItemKey = "S_Quarantine_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fQuarantine001", -1, 2, 0.05) },
          { ItemKey = "S_Sanctuary_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSancturary001", -1, 2, 0.05) },
          { ItemKey = "S_Shipyard_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fShipyard001", -1, 2, 0.05) },
          { ItemKey = "S_Skybase_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSkybase001", -1, 2, 0.05) },
          { ItemKey = "S_Escape", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEscapeSequence", -1, 2, 0.05) },
          { ItemKey = "s_emmy_patrol", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyPatrol", -1, 2, 0.05) },
          { ItemKey = "s_emmy_search", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmySearch", -1, 2, 0.05) },
          { ItemKey = "s_emmy_chase", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyChase", -1, 2, 0.05) },
          { ItemKey = "s_emmy_defeated", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeated", -1, 2, 0.05) },
          { ItemKey = "S_Emmy_Defeated_Magma", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeatedMagma", -1, 2, 0.05) },
          { ItemKey = "S_Emmy_Defeated_Baselab", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeatedBaselab", -1, 2, 0.05) },
          { ItemKey = "S_Emmy_Defeated_Forest", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeatedForest", -1, 2, 0.05) },
          { ItemKey = "S_Emmy_Defeated_Sanctuary", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeatedSanctuary", -1, 2, 0.05) },
          { ItemKey = "S_Emmy_Defeated_Shipyard", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEmmyDefeatedShipyard", -1, 2, 0.05) },
          { ItemKey = "s_centralunit_phase01", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCentralUnitPhase1", -1, 2, 0.05) },
          { ItemKey = "s_centralunit_phase02", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCentralUnitPhase2", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Defeated", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossDefeated", -1, 2, 0.05) },
          { ItemKey = "s_boss_scorpius_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossScorpius001", -1, 2, 0.05) },
          { ItemKey = "s_boss_scorpius_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossScorpius002", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Scorpius_Presentation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossScorpiusPresentation", -1, 2, 0.05) },
          { ItemKey = "s_Boss_Kraid_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossKraid001", -1, 2, 0.05) },
          { ItemKey = "s_Boss_Kraid_002",ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossKraid002", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Kraid_Presentation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossKraidPresentation", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Cooldown-X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCoolDownX", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Cooldown - X_Presentation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCoolDownXPresentation", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_Hydrogiga_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fHydrogiga001", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_Hydrogiga_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fHydrogiga002", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_SuperGoliath - X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSuperGoliathX", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_SuperQuetzoa - X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSuperQuetzoaX", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_ChozoRobotSoldier", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossMidChozoRobotSoldier", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_ChozoWarrior-X_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossMidChozoWarriorX001", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Mid_ChozoWarrior-X_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossMidChozoWarriorX002", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_Presentation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommanderPresentation", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommander001", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommander002", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_003", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommander003", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_X_001", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommanderX001", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_X_002", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fBossCommanderX002", -1, 2, 0.05) },
          { ItemKey = "S_Professor-X", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fProfessorX", -1, 2, 0.05) },
          { ItemKey = "S_Encounter_Professor", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEncounterProfessor", -1, 2, 0.05) },
          { ItemKey = "S_Sanc_Emmy_Presentation", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fSancEmmyPresentation", -1, 2, 0.05) },
          { ItemKey = "S_Boss_Commander_Outro", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fCommanderOutro", -1, 2, 0.05) },
          { ItemKey = "S_StrongReaction", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fStrongReaction", -1, 2, 0.05) },
          { ItemKey = "S_Power_Bomb", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fPowerBomb", -1, 2, 0.05) },
          { ItemKey = "S_EndGame", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEndGame", -1, 2, 0.05) },
          { ItemKey = "S_StaffRoll", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fStaffRoll", -1, 2, 0.05) },
          { ItemKey = "S_EndScreen", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fEndScreen", -1, 2, 0.05) },
          { ItemKey = "s_jingle_tojo", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fJingleTojo", -1, 2, 0.05) },
          { ItemKey = "s_jingle_itemget", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fJingleItemGet", -1, 2, 0.05) },
          { ItemKey = "s_jingle_itemget_unknown", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fJingleItemGetUnknown", -1, 2, 0.05) },
          { ItemKey = "s_jingle_powerupget", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("MUSIC|CTunableMusicVolumeOverride", "fJinglePowerUpGet", -1, 2, 0.05) }
        }
      }
    }
  },
  { ItemKey = "Animation Speed Iterations", ItemContent = {
      { ItemKey = "Magnet Wall Move Up", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fMagnetWallRunUp", 0.1, 2, 0.05) },
      { ItemKey = "Magnet Wall Move Up (with OC enabled)", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fStealthMagnetWallRunUp", 0.1, 2, 0.05) },
      { ItemKey = "Magnet Wall Move Down", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fMagnetWallRunDown", 0.1, 2, 0.05) },
      { ItemKey = "Magnet Wall Move Down (with OC enabled)", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fStealthMagnetWallRunDown", 0.1, 2, 0.05) },
      { ItemKey = "Magnet Ceiling Move", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fMagnetCeilingRun", 0.1, 2, 0.05) },
      { ItemKey = "Magnet Ceiling Move (with OC enabled)", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableCharClassTweakPlayRateTrack", "fStealthMagnetCeilingRun", 0.1, 2, 0.05) }
    }
  },
  { ItemKey = "Beam Guns", ItemContent = {
      { ItemKey = "Charging Min Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Gun|CTunableGunComponent", "fNormalFireChargeMinTime", 0, 10, 0.05) },
      { ItemKey = "Charging Max Time", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Gun|CTunableGunComponent", "fNormalFireChargeMaxTime", 0, 10, 0.05) },
      { ItemKey = "Beam Speed", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("ShotManager|CTunableShotManager", "fShotSpeed", 0, 10000, 10) }
    }
  },
  { ItemKey = "Grapple Beam", ItemContent = {
      { ItemKey = "Selection Mode",ItemContent = msemenu.GenerateTunableModePropertyEntry("CTunableGrappleBeamGun", "iSelectionMode", 0, 4, {
          "Aim, auto selection",
          "Aim, auto selection, hold to deselect",
          "Aim, manual selection, hold to select",
          "No need aim, manual selection, hold to select",
          "No need aim, manual selection, toggle"
        })
      },
      { ItemKey = "Selection Input", ItemContent = msemenu.GenerateTunableModePropertyEntry("CTunableGrappleBeamGun", "iSelectionInput", 0, 2, {
          "LS",
          "ZR",
          "RS"
        })
      },
      { ItemKey = "Beam speed moving to target", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Grapple|CTunableGrappleBeamComponent", "fAdvanceSpeed", 0, 10000, 50) },
      { ItemKey = "Beam speed moving back to gun", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("Grapple|CTunableGrappleBeamComponent", "fRetractSpeed", 0, 10000, 50) }
    }
  },
  { ItemKey = "SpeedBooster Instant Activation", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableAbilitySpeedBooster", "bInstantActivation") },
  { ItemKey = "Max Missiles", ItemContent = msemenu.GenerateTunableNumberPropertyEntry("CTunableInventoryComponent", "iMaxNumMissiles", 0, 500, 1) },
  { ItemKey = "Recover Missiles", ItemContent = msemenu_ingame.GenerateRecoverMissilesMenuEntry() },
  { ItemKey = "PlayerMaxLife", ItemContent = msemenu_ingame.GeneratePlayerMaxLifeOverrideMenuEntry() },
  { ItemKey = "Recover Life", ItemContent = msemenu.RecoverLife },
  { ItemKey = "No Life Decrease", ItemContent = msemenu_ingame.SwitchPlayerInvulnerableToEnvironment() },
  { ItemKey = "Force X-Parasite Drop", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Drop|CTunableDropComponent", "bForceXParasiteDrop") },
  { ItemKey = "Show Boss Lifebar", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AI|CTunableAIManager", "bShowBossLifebar") },
  { ItemKey = "Show Enemy Life", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AI|CTunableAIManager", "bShowEnemyLife") },
  { ItemKey = "Show Enemy Damage", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AI|CTunableAIManager", "bShowEnemyDamage") },
  { ItemKey = "Show Player Damage", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("AI|CTunableAIManager", "bShowPlayerDamage") },
  { ItemKey = "Kill Boss", ItemContent = msemenu.KillCurrentBoss },
  { ItemKey = "Force Skip Cutscenes",ItemContent = msemenu.SwitchForceSkipCutscenes() },
  { ItemKey = "Show Performance Info", ItemContent = msemenu.SwitchPerformanceInfoEnabled() },
  { ItemKey = "Unlock All Rewards", ItemContent = msemenu.UnlockAllRewards },
  { ItemKey = "Loading Tooltip", ItemContent = msemenu_ingame.GenerateForceLoadingScreenTooltip() },
  { ItemKey = "Reset Amiibos timestamp", ItemContent = msemenu.ResetAmiibosTimestamp },
  { ItemKey = "Game Time", ItemContent = msemenu_ingame.GenerateGameTimeEntrance() },
  { ItemKey = "Show Cheat Detected", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableGameManager", "bCheatDetectedDebug") },
  { ItemKey = "Show Samus Center Point", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableGameManager", "bSamusCenterPointDebug") },
  { ItemKey = "Show Debug Info", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableGameManager", "bPlayerPosDebug") },
  { ItemKey = "Show Subtitles", ItemContent = msemenu_ingame.SwitchShowSubtitles() }
}




msemenu_ingame.CreateEmmyConfigMenu("Emmy Proto", "Emmy|CTunableEmmyProtoAIComponent")
msemenu_ingame.CreateEmmyConfigMenu("Emmy Cave", "Emmy|CTunableEmmyCaveAIComponent")
msemenu_ingame.CreateEmmyConfigMenu("Emmy Magma", "Emmy|CTunableEmmyMagmaAIComponent")
msemenu_ingame.CreateEmmyConfigMenu("Emmy Lab", "Emmy|CTunableEmmyLabAIComponent")
msemenu_ingame.CreateEmmyConfigMenu("Emmy Forest", "Emmy|CTunableEmmyForestAIComponent")
msemenu_ingame.CreateEmmyConfigMenu("Emmy Sanc", "Emmy|CTunableEmmySancAIComponent")
msemenu_ingame.dev_config = {
  { ItemKey = "Force X-Parasite self spawn loop", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Drop|CTunableDropComponent", "bForceXParasiteSelfSpawnLoop") },
  { ItemKey = "Ignore X-Parasite drop", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Drop|CTunableDropComponent", "bIgnoreXParasiteDrop") }
}
msemenu_ingame.items = {}


function msemenu_ingame.AppendMenuInfo(_ARG_0_)
  local config =  msemenu_ingame.config
  msemenu_ingame.ProcessMenu(_ARG_0_, config)
end

function msemenu_ingame.ProcessMenu(_ARG_0_, _ARG_1_, _ARG_2_)
  
  
  
  
  
  
  
  
  
  
  _ARG_2_ = _ARG_2_ or {}

  if type(_ARG_1_) ~= "table" then
    return
  end

  for _FORV_6_, _FORV_7_ in ipairs(_ARG_1_) do
    print("Table has entries")

    if _FORV_7_.ItemKey ~= nil then
      print("Key: " .. _FORV_6_ .. "(" .. _FORV_7_.ItemKey .. ")")
    elseif _FORV_6_ == nil then
      print("Key: nil")
    else
      print("Key: " .. _FORV_6_)
    end

    if type(_FORV_7_) == "table" then

      if _ARG_2_[_FORV_7_] then
        print("ERROR: circular reference in " .. _FORV_6_)
      elseif _FORV_7_.ItemKey == nil or _FORV_7_.ItemContent == nil then
        print("ERROR: Structure missmatch in " .. _FORV_6_)
      else
        local oItemContent = _FORV_7_.ItemContent
        local sItemContentType = type(oItemContent)
        print("Accessed ItemContent: " .. sItemContentType)

        if sItemContentType ~= "function" and sItemContentType ~= "number" and sItemContentType ~= "boolean" then
          print("ItemContent is no function")
          if oItemContent.sCategoryId ~= nil and oItemContent.sPropertyId ~= nil then
            local oElement = _ARG_0_:AddElement()
            oElement:SetKey(_FORV_7_.ItemKey)
            oElement:SetInfo(oItemContent.sCategoryId, oItemContent.sPropertyId)
          elseif sItemContentType == "table" then
            local oElement = _ARG_0_:AddElement()
            oElement:SetKey(_FORV_7_.ItemKey)
            msemenu_ingame.ProcessMenu(oElement, oItemContent, _ARG_2_)
            print("<<< Recursive call returned")
          else
            print("ELSE")
          end
        else
          print("oCurrentInfo is a function, number or bool")
        end
      end
    else
      print("ERROR: table expected in " .. _FORV_6_)
    end
  end
end
msemenu_ingame.debug_invetory_in_final = {
  Inventory = msemenu.GenerateInventoryItems()
}





















msemenu_ingame.debug_items = {
  TeleportToScenario = msemenu.GenerateDefaultItems(ScenarioMenu.TeleportToScenario, tScenarioMenuDefs.aScenarios),
  LoadScenario = msemenu.GenerateDefaultItems(ScenarioMenu.LoadScenario, tScenarioMenuDefs.aScenarios),
  Flags = msemenu.GenerateDebugFlagsTable(Game.Debug, Game.IsDebugFlagActive, false),
  Inventory = msemenu.GenerateInventoryItems(),
  Configuration = {
    SamusSuit = msemenu.SwitchSuit(),
    TransferProgress = Game.TransferGameProgress
  },
  Tunables = {
    Abilities = {
      MinTimeBetweenMeleeActions = msemenu.GenerateComponentVarEntry("[PLAYER]", "ABILITY", "fMinTimeBetweenMeleeActions", 8.3),
      TimeToBlock = msemenu.GenerateComponentVarEntry("[PLAYER]", "ABILITY", "fTimeToBlock", 0.1),
      TimeToCharge = msemenu.GenerateComponentVarEntry("[PLAYER]", "ABILITY", "fTimeToCharge", 0.1),
      TimeBufferingTeleportInput = msemenu.GenerateComponentVarEntry("[PLAYER]", "ABILITY", "fTeleportMaxTimeToAcceptTriggeredDir", 0.1)
    }
  },
  Cheats = {
    { ItemKey = "PlayerLifeLocked", ItemContent = msemenu.GenerateEntityBoolMsgEntry("[PLAYER]", "LIFE", "bCurrentLifeLocked") },
    { ItemKey = "Always Win Emmy Grab QTE 1", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("Emmy|CTunableEmmyAIComponent", "bAlwaysWinQTE1") },
    { ItemKey = "EnemiesLifeLocked", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("EnemyLife|CTunableEnemyLifeComponent", "bEnemiesLifeLocked") },
    { ItemKey = "Force Hard Mode", ItemContent = msemenu.GenerateTunableBoolPropertyEntry("CTunableGameManager", "bForceHardMode") },
    PlayerSpecialEnergyLocked = msemenu.GenerateEntityBoolMsgEntry("[PLAYER]", "SPECIALENERGY", "bSpecialEnergyLocked"),
    RecoverSpecialEnergy = msemenu.RecoverSpecialEnergy,InfiniteAmmo = { GetCurrentValue = Game.GetInfiniteAmmoEnabled, OnActivated = function()  Game.SwitchInfiniteAmmo() end },
    RecoverLife = msemenu.RecoverLife, KillPlayer = Game.KillPlayer, 
    
    KeepKillingPlayer = { GetCurrentValue = Game.DEBUG_TEST_GetKeepKillingPlayer, OnActivated = function() Game.DEBUG_TEST_SetKeepKillingPlayer(not Game.DEBUG_TEST_GetKeepKillingPlayer()) end },
    PlayerEnvironmetInvulnerable = { GetCurrentValue = Game.DEBUG_TEST_IsPlayerInvulnerableToEnvironment, OnActivated = function() Game.DEBUG_TEST_MakePlayerInvulnerableToEnvironment(not Game.DEBUG_TEST_IsPlayerInvulnerableToEnvironment()) end },
    KillAllEnemies = msemenu.KillAllEnemies,
    KillEmmy = msemenu.KillEmmy,
    KillCurrentBoss = msemenu.KillCurrentBoss,
    GainAllItemsAndPowerUps = msemenu.GainAllItemsAndPowerUps,
    GainCentralUnitSpbSprWeapon = msemenu.GainCentralUnitSpbSprWeapon,
    CurrentMinimapVisitAndScanAllCells = msemenu.CurrentMinimapVisitAndScanAllCells,
    ScanVisitDiscoverEverything = msemenu.ScanVisitDiscoverEverything
  },
  AI = {
    ["AttacksEnabled"] = msemenu.SwitchAttacksEnabled(),
    ["IgnoreCamoEndDetectionCountdown"] = msemenu.SwitchOpticalCamoWaitForEndDetectionEnabled(),
    [" SELECTED"] = {
      ["Attack"] = msemenu.SwitchAIForcedAttack(),
      ["Attack Stage"] = msemenu.SwitchAIForcedAttackPreset(),
      ["Prueba"] = msemenu.SwitchControlledAI(),
      ["Select"] = msemenu.SelectCloserAI()
    }
  },
  Sound = {
    EnableMusic = msemenu.EnableMusic(),
    EnableSFX = msemenu.EnableSFX(),
    EnableEnvironmentMusic = msemenu.EnableEnvironmentMusic()
  },
  Rumble = {
    Rumble = msemenu.GenerateTunableNumberPropertyEntry("Rumble|CTunableRumbleManager", "fMainGain", 0, 1, 0.1)
  },
  Packs = {
    ExportStrippedDownSystemPack = msemenu_ingame.OnExportStrippedDownSystemPack
  },
  EntitySchedulers = {

















    ForceRoundRobin = {
      GetCurrentValue = Game.IsForceRoundRobinForNonCulledEntities,
      OnActivated = function() Game.SetForceRoundRobinForNonCulledEntities(not Game.IsForceRoundRobinForNonCulledEntities()) end
    }
  }
}



msemenu_ingame.debug_items[" Scenario"] = {
  Hide = msemenu.HideScenario,
  Show = msemenu.ShowScenario,
  _FreeCamLockAllSubAreas = { GetCurrentValue = Game.IsFreeCamLockSubAreasEnabled, OnActivated = function() Game.SetFreeCamLockSubAreas(not Game.IsFreeCamLockSubAreasEnabled()) end },
  _SetCooldownFlag = { GetCurrentValue = Game.GetCooldownFlag, OnActivated = function() Game.SetCooldownFlag(not Game.GetCooldownFlag()) end }
}
msemenu_ingame.debug_items.AI.NavMesh = {
  {
    ItemKey = "Generate NavMesh",
    ItemContent = Game.GenerateNavMesh
  },
  {
    ItemKey = "Generate NavMesh and Save",
    ItemContent = Game.GenerateNavMeshAndSave
  },
  {
    ItemKey = "Save NavMesh",
    ItemContent = Game.SaveNavMesh
  },
  {
    ItemKey = "Generate Enemies NavMesh Data and Save",
    ItemContent = Game.GenerateEnemiesNavMeshDataAndSave
  },
  {
    ItemKey = "Generate Smart Links",
    ItemContent = Game.GenerateNavMeshDynamicSmartLinkRules
  },
  {
    ItemKey = "Generate Logic Shape Edges",
    ItemContent = Game.GenerateNavMeshLogicShapesEdges
  },
  {
    ItemKey = "Generate Logic Shape Valid Points",
    ItemContent = Game.GenerateNavMeshLogicShapesValidPoints
  },
  {
    ItemKey = "Generate Zones",
    ItemContent = Game.GenerateNavMeshZones
  },
  {
    ItemKey = "Debug Breakable Poly Index",
    ItemContent = msemenu.DebugBreakablePolyIndex
  }
}
