Game.ImportLibrary("system/scripts/savegame.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_debug_locations.lua", false)













msemenu = {}
msemenu.DebugMenuRoot = nil
msemenu.DebugMenuMain = nil
msemenu.DebugMenuInfoPanel = nil
msemenu.aAreasLevels = {}
msemenu.aAreasPresavedGames = {}


function msemenu.GetMenuItemByKey(_ARG_0_, _ARG_1_)
  local L2_2
  if _ARG_0_ ~= nil then
    L2_2 = _ARG_0_[_ARG_1_]
    if L2_2 == nil then
      for L6_2, L7_2 in pairs(_ARG_0_) do
        if type(L7_2) == "table" then
          if L7_2.ItemKey == _ARG_1_ then
            L2_2 = L7_2.ItemContent
            break
          end
        end
      end
    end
  end
  return L2_2
end


function msemenu.GetCurrentMenuItemByKey(_ARG_0_)
  return msemenu.GetMenuItemByKey(msemenu.CurrentMenu, _ARG_0_)
end


function msemenu.GenerateDebugFlagsTable(_ARG_0_, _ARG_1_, _ARG_2_)
  local L3_2 = {}
  local L4_2 = Game.GetMenuDebugFlags()


  for L8_2, L9_2 in pairs(L4_2) do
    local L10_2 = L3_2
    local L11_2 = utils.Split(L9_2, " | ")
    for L15_2, L16_2 in ipairs(L11_2) do

      if L10_2[L16_2] == nil then
        L10_2[L16_2] = {}
      end
      L10_2 = L10_2[L16_2]
    end
    
    if L10_2._ITEMS == nil then
      L10_2._ITEMS = {}
    end

    L10_2 = L10_2._ITEMS
    table.insert(L10_2, L8_2)
  end

  L3_2 = msemenu.ReplaceItemsInTable(L3_2, _ARG_0_, _ARG_1_, _ARG_2_)
  return L3_2
end


function msemenu.ReplaceItemsInTable(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_) local _ReplaceItemsInTable -- I don't think this is right, but it makes the binaries match
  function _ReplaceItemsInTable(A0_3, A1_3, A2_3, A3_3)
    if A0_3._ITEMS then
      return msemenu.GenerateCustomItems(A1_3, A2_3, A3_3, A0_3._ITEMS)
    end
    for L7_3, L8_3 in pairs(A0_3) do
      A0_3[L7_3] = _ReplaceItemsInTable(A0_3[L7_3], A1_3, A2_3, A3_3)
    end
    return A0_3
  end
  return _ReplaceItemsInTable(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end


function msemenu.GenerateCustomItems(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local L4_2 = {}

  for L8_2, L9_2 in ipairs(_ARG_3_) do
    local L10_2 = { ItemKey = L9_2 }
    
    L10_2.ItemContent = { GetCurrentValue = _ARG_1_}
    if _ARG_2_ then
      L10_2.ItemContent.OnDirActivated = _ARG_0_
    else
      L10_2.ItemContent.OnActivated = _ARG_0_
    end   
    table.insert(L4_2, L10_2)
  end

  return L4_2
end


function msemenu.GenerateDefaultItems(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  
  for L6_2, L7_2 in ipairs(_ARG_1_) do
    local L8_2 = { ItemKey = L7_2 }       
    L8_2.ItemContent = { 
        OnDirActivated = 
          function(A0_3, A1_3)
            if A1_3 == "ActivationButton" then
              return _ARG_0_(A0_3)
            end
          end
    }
   
   table.insert(L2_2, L8_2)
  end
  
  return L2_2
end

function msemenu.GenerateDefaultTableItems(_ARG_0_, _ARG_1_, _ARG_2_)
  local L3_2 = {}
  if _ARG_1_ == nil then
    return L3_2
  end

  for L7_2, L8_2 in ipairs(_ARG_1_) do
    local L9_2 = { ItemKey = L8_2[_ARG_2_] }
    L9_2.ItemContent = { OnDirActivated =
    function(A0_3, A1_3)
      if A1_3 == "ActivationButton" then
        return _ARG_0_(L8_2)
      end
    end
    }
  
    table.insert(L3_2, L9_2)
  end
  
  return L3_2
end


function msemenu.GenerateDefaultItemsWithAlias(_ARG_0_, _ARG_1_, _ARG_2_)
  local L3_2 = {}
  for L7_2, L8_2 in ipairs(_ARG_1_) do
    local L9_2 = L8_2
    local L10_2 = _ARG_2_[L8_2]
    local L11_2 = { ItemKey = L10_2 }    
    L11_2.ItemContent = {
        OnDirActivated =
    function(A0_3, A1_3)
      if A1_3 == "ActivationButton" then
        return _ARG_0_(L9_2)
      end
    end
    }
    table.insert(L3_2, L11_2)
  end
  return L3_2
end


function msemenu.FilterEntityIDValue(_ARG_0_)
  return _ARG_0_ == "[PLAYER]" and Game.GetPlayerName() or _ARG_0_
end


function msemenu.GenerateComponentVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local oVarEntry
  local sType = type(_ARG_3_)
  
  
  if sType == "number" then
    local fNumber = _ARG_3_ ~= 0 and math.abs(_ARG_3_) / 10 or 1
    oVarEntry = msemenu.GenerateComponentNumberVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, fNumber)
  elseif sType == "string" then
    oVarEntry =  msemenu.GenerateComponentValuesVarEntry(_ARG_0_, _ARG_1_, _ARG_2_,  { _ARG_3_, "" })
  elseif sType == "boolean" then
    oVarEntry = msemenu.GenerateComponentBoolVarEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  end
  
  return oVarEntry
end


function msemenu.GenerateComponentNumberVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  
  return { OnDirActivated =
  function(A0_3, A1_3)
    local L2_3 = msemenu.FilterEntityIDValue(_ARG_0_)
    if A1_3 == "Right" then
      local L3_3 = Game.GetActor(L2_3)
      L3_3[_ARG_1_][_ARG_2_] = L3_3[_ARG_1_][_ARG_2_] + _ARG_3_
    else
      local L3_3 = Game.GetActor(L2_3)
      L3_3[_ARG_1_][_ARG_2_] = L3_3[_ARG_1_][_ARG_2_] - _ARG_3_
    end
  end, GetCurrentValue = 
  function()
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_, _ARG_1_)
    return Game.GetActor(iEntityID)[_ARG_1_][_ARG_2_]
  end
  }
end


function msemenu.GenerateComponentBoolVarEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
    local oActor = Game.GetActor(iEntityID)
    oActor[_ARG_1_][_ARG_2_] = not oActor[_ARG_1_][_ARG_2_]
  end, GetCurrentValue = 
  function()
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
    local oActor = Game.GetActor(iEntityID)
    return oActor[_ARG_1_][_ARG_2_]
  end
  }
end


function msemenu.GenerateComponentValuesVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local L4_2 = 0
  
  function UpdateValueIdx(A0_3)
    sItemValue = msemenu.GetCurrentMenuItemByKey(A0_3).GetCurrentValue(sItemID)
    for L4_3 = 1, #_ARG_3_, 1 do
      if msemenu.FilterEntityIDValue( _ARG_3_[L4_3]) == sItemValue then
        L4_2 = L4_3 - 1
      end
    end
  end
  
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    
    
    
    
    local L2_3 = msemenu.FilterEntityIDValue(_ARG_0_)
    
    UpdateValueIdx(A0_3)
    
    if A1_3 == "Right" then
      L4_2 = (L4_2 + 1) % #_ARG_3_
    else
      L4_2 = (L4_2 + -1) % #_ARG_3_
    end
    
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_3_[L4_2 + 1])
    Entity[_ARG_1_][_ARG_2_] = iEntityID
  end, GetCurrentValue =
  function()
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
    local oActor = Game.GetActor(iEntityID)
    return oActor[_ARG_1_][_ARG_2_]
  end
  }
end


function msemenu.GenerateEntityNumberMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    OnDirActivated = 
    function(A0_3, A1_3)
      local L2_3 = msemenu.FilterEntityIDValue(_ARG_0_)
      if A1_3 == "Right" then
        Game.GetActor(L2_3)[_ARG_1_] = Game.GetActor(L2_3)[_ARG_1_] + _ARG_2_
      else
        Game.GetActor(L2_3)[_ARG_1_] = Game.GetActor(L2_3)[_ARG_1_] - _ARG_2_
      end
    end, GetCurrentValue = 
    function()
      local L2_3 = msemenu.FilterEntityIDValue(_ARG_0_)
      return Game.GetActor(L2_3)[_ARG_1_]
    end
  }
end


function msemenu.GenerateEntityBoolMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    OnDirActivated = 
    function(A0_3, A1_3)
      local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
      local oActor = Game.GetActor(iEntityID)
      if _ARG_1_ ~= nil then
        oActor[_ARG_1_][_ARG_2_] = not oActor[_ARG_1_][_ARG_2_]
      else
        oActor[_ARG_2_] = not oActor[_ARG_2_]
      end
    end, GetCurrentValue = 
    function()
      local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
      local oActor = Game.GetActor(iEntityID)
      if _ARG_1_ ~= nil then
        return oActor[_ARG_1_][_ARG_2_]
      else
        return oActor[_ARG_2_]
      end
    end
  }
end



function msemenu.GenerateEntityValuesMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  local L3_2 = 0
  
  function UpdateValueIdx(A0_3)
    sItemValue = msemenu.GetCurrentMenuItemByKey(A0_3).GetCurrentValue(sItemID)
    for L4_3 = 1, #_ARG_2_, 1 do
      if msemenu.FilterEntityIDValue( _ARG_2_[L4_3]) == sItemValue then
        L3_2 = L4_3 - 1
      end
    end
  end
  
  return { 
  OnDirActivated =
  function(A0_3, A1_3)
  
    
    
    local L2_3 = msemenu.FilterEntityIDValue(_ARG_0_)
  
    UpdateValueIdx(A0_3)

    if A1_3 == "Right" then
      L3_2 = (L3_2 + 1) % #_ARG_2_
    else
      L3_2 = (L3_2 + -1) % #_ARG_2_
    end
  
    local L3_3 = msemenu.FilterEntityIDValue(_ARG_2_[L3_2 + 1])
    local L4_3 = Game.GetActor(L2_3)
    L4_3[_ARG_1_] = L3_3
  end, GetCurrentValue =
  function ()
    local L0_3 = msemenu.FilterEntityIDValue(_ARG_0_)
    return Game.GetActor(L0_3)[_ARG_1_]
  end
  }
end


function msemenu.SwitchInputPreset()
  
  return {
    OnDirActivated = function()
      Game.GetPlayerInfo():SwitchInputPreset()
    end,
    GetCurrentValue = function()
      
      return Game.GetPlayerInfo().sInputPreset
    end
  }
end


function msemenu.GenerateShowRewards()
  
  return {
    OnDirActivated = function()
      Game.ShowEndGameCredits(true)
    end,
    GetCurrentValue = "Show Rewards"
  }
end


function msemenu.SelectCloserAI()

  return {
    OnDirActivated = function()
      Game.SelectCloserAI()
      Game.RefreshSelectedAIAttackPreset()
      msemenu.Update("items. Debug.AI. SELECTED")
    end,
    GetCurrentValue = function()
      local oSelectedAI = Game.GetSelectedAI()
      if oSelectedAI ~= nil then
        return oSelectedAI.sName
      else
        return "NO_ENTITY"
      end
    end
  }
end


function msemenu.SwitchControlledAI()

  return {
    OnDirActivated = function()
      Game.SetControlledAI(not Game.GetControlledAI())
      
      if Game.GetControlledAI() then
        local L0_3 = Game.GetSelectedAI()
        if L0_3 ~= nil then
          local L1_3 = L0_3.AI.sForcedAttack
          msemenu.Update("items. Debug.AI. SELECTED")
        end
      end
    end,
    GetCurrentValue = function()
     local oControlledAI = Game.GetControlledAI()
      if oControlledAI then
        return "TRUE"
      else
        return "FALSE"
      end
    end
  }
end


function msemenu.SwitchAIForcedAttack()

  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "ActivationButton" or _ARG_1_ == "Right" then
        Game.SwitchSelectedAIAttack(true)
      else
        Game.SwitchSelectedAIAttack(false)
      end
      Game.RefreshSelectedAIAttackPreset()
      msemenu.Update("items. Debug.AI. SELECTED")
    end,
    GetCurrentValue = function()
      local L0_3 = Game.GetSelectedAI()
      if L0_3 ~= nil then
        local L1_3 =  L0_3.AI.sForcedAttack
        if L1_3 == nil or L1_3 == "" then
          return "-"
        else
          return L1_3
        end
      else
        return "-"
      end
    end
  }
end


function msemenu.SwitchAIForcedAttackPreset()

  return {
    OnDirActivated = function()
      Game.SwitchSelectedAIAttackPreset()
    end,
    GetCurrentValue = function()
      local L0_3 = Game.GetSelectedAI()
      if L0_3 ~= nil then
        local L1_3 = L0_3.AI.sForcedAttack
        if L1_3 == nil or L1_3 == "" then
          return "-"
        else
          local L2_3 = L0_3.AI.iForcedAttackPreset
          if L2_3 == nil then
            return "-"
          else
            return tostring(L2_3 + 1)
          end
        end
      else
        return "-"
      end
    end
  }
end


function msemenu.AutoAimActive()
  
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)

      if Game.GetDefaultPlayer().AIM ~= nil then
        local bAutoAimActive = not Game.GetDefaultPlayer().AIM.bAutoAimActive
        Game.GetDefaultPlayer().AIM.bAutoAimActive = bAutoAimActive
      end
    end,
    GetCurrentValue = function()
      if Game.GetDefaultPlayer().AIM ~= nil then
        return Game.GetDefaultPlayer().AIM.bAutoAimActive
      end
      return false
    end
  }
end


function msemenu.AutoAimWidth()

  return { OnDirActivated =
  function(A0_3, A1_3)
    if Game.GetDefaultPlayer().AIM ~= nil then
      local L2_3 = Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth
      if A1_3 == "Right" then
        L2_3 = L2_3 + 5
      else
        L2_3 = L2_3 - 5
      end
      Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth = L2_3
    end
  end, GetCurrentValue = 
  function()
    if Game.GetDefaultPlayer().AIM ~= nil then
      return  Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth
    end
    return 0
  end
  }
end


function msemenu.AutoAimConeLength()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if Game.GetDefaultPlayer().AIM ~= nil then
      local L2_3 = Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength
      if _ARG_1_ == "Right" then
        L2_3 = L2_3 + 5
      else
        L2_3 = L2_3 - 5
      end
      Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength = L2_3
    end
  end, GetCurrentValue = 
  function()
      if Game.GetDefaultPlayer().AIM ~= nil then
        return Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength
      end
      return 0
  end
  }
end


function msemenu.SwitchAttacksEnabled()

  return { OnDirActivated = 
  function()
    local bAttacksEnabled =  Game.AttacksEnabled()
    if bAttacksEnabled then
      Game.DisableAttacks()
    else
      Game.EnableAttacks()
    end
  end, GetCurrentValue = 
  function()
    local bAttacksEnabled =  Game.AttacksEnabled()
    if bAttacksEnabled then
      return "ENABLED"
    else
      return "DISABLED"
    end
  end
  }
end

function msemenu.ReloadTrees()
  Game.ReloadBehaviorTrees()
end



function msemenu.SwitchOpticalCamoWaitForEndDetectionEnabled()

  return { OnDirActivated = 
  function()
    local bCamoEndDetectionCountDownIgnored = Game.CamoEndDetectionCountDownIgnored()
    if bCamoEndDetectionCountDownIgnored then
      Game.ActivateCamoEndDetectionCountdown()
    else
      Game.IgnoreCamoEndDetectionCountdown()
    end
  end, GetCurrentValue = 
  function()
    local bCamoEndDetectionCountDownIgnored = Game.CamoEndDetectionCountDownIgnored()
    if bCamoEndDetectionCountDownIgnored then
      return "ENABLED"
    else
      return "DISABLED"
    end
  end
  }
end

function msemenu.ReloadTrees()
  Game.ReloadBehaviorTrees()
end


function msemenu.SwitchLockOnBeep()

  return { OnDirActivated = 
  function()
    local oDefaultPlayer = Game.GetDefaultPlayer()
    if oDefaultPlayer ~= nil and oDefaultPlayer.AIM ~= nil then
      local bLockOnSoundAllowed = oDefaultPlayer.AIM.bLockOnSoundAllowed
      if bLockOnSoundAllowed then
        oDefaultPlayer.AIM.bLockOnSoundAllowed = false
      else
        oDefaultPlayer.AIM.bLockOnSoundAllowed = true
      end
    end
  end, GetCurrentValue = 
  function()
    local oDefaultPlayer = Game.GetDefaultPlayer()
    if oDefaultPlayer ~= nil and oDefaultPlayer.AIM ~= nil then
      local bLockOnSoundAllowed = oDefaultPlayer.AIM.bLockOnSoundAllowed
      if bLockOnSoundAllowed then
        return "ENABLED"
      else
        return "DISABLED"
      end
    else
      return "-"
    end
  end
  }
end


function msemenu.SwitchIgnoreShellWithIceBeam()

  return { OnDirActivated = 
  function()
    local bIgnoreShellWithIceBeam = Game.GetPlayerInfo().bIgnoreShellWithIceBeam
    if bIgnoreShellWithIceBeam then
      Game.GetPlayerInfo().bIgnoreShellWithIceBeam = false
    else
      Game.GetPlayerInfo().bIgnoreShellWithIceBeam = true
    end
  end, GetCurrentValue = 
  function()
    local bIgnoreShellWithIceBeam = Game.GetPlayerInfo().bIgnoreShellWithIceBeam
    if bIgnoreShellWithIceBeam then
      return "IGNORED"
    else
      return "NOT IGNORED"
    end
  end
  }
end


function msemenu.SwitchRevealTilesMode()
  
  return { OnDirActivated = 
  function()
    local sRevealTilesMode = Game.GetRevealTilesMode()
    if sRevealTilesMode == "AnyWeapon" then
      Game.SetRevealTilesMode("JustPowerBomb")
    else
      Game.SetRevealTilesMode("AnyWeapon")
    end
  end, GetCurrentValue =
  function()
      return Game.GetRevealTilesMode()
  end
  }
end


function msemenu.SwitchSuit()
  
  return { OnDirActivated = 
  function()
    local sModelAlias = Game.GetPlayer().MODELUPDATER.sModelAlias
    if sModelAlias == "Default" then
      Game.GetPlayer().MODELUPDATER.sModelAlias = "Varia"
    elseif sModelAlias == "Varia" then
      Game.GetPlayer().MODELUPDATER.sModelAlias = "Gravity"
    else
      Game.GetPlayer().MODELUPDATER.sModelAlias = "Default"
    end
  end, GetCurrentValue = 
  function()
    return Game.GetPlayer().MODELUPDATER.sModelAlias
  end
  }
end



function msemenu.ChangeLowPassFilterCutoffFreq()
  
  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "Right" then
      Game.SetLowPassFilterCutOff(Game.GetLowPassFilterCutOff() + 20)
    else
      Game.SetLowPassFilterCutOff(Game.GetLowPassFilterCutOff() - 20)
    end
  end, GetCurrentValue = 
  function()
    return Game.GetLowPassFilterCutOff()
  end
  }
end

function msemenu.EnableMusic()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if Game.IsMusicEnabled() then
      Game.EnableMusic(false)
    else
      Game.EnableMusic(true)
    end
  end, GetCurrentValue = 
  function()
    return Game.IsMusicEnabled()
  end
  }
end

function msemenu.EnableSFX()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if Game.IsSFXEnabled() then
      Game.EnableSFX(false)
    else
      Game.EnableSFX(true)
    end
  end, GetCurrentValue = 
  function()
    return Game.IsSFXEnabled()
  end
  }
end

function msemenu.EnableEnvironmentMusic()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if Game.IsEnvironmentMusicEnabled() then
      Game.EnableEnvironmentMusic(false)
    else
      Game.EnableEnvironmentMusic(true)
    end
  end, GetCurrentValue = 
  function()
    return Game.IsEnvironmentMusicEnabled()
  end
  }
end

function msemenu.StopMusic()
  
  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    Game.StopMusic(true)
  end
  }
end





msemenu.sStreamPlaying = ""
msemenu.fDebugVolume = 0
msemenu.fFactor = 0
msemenu.bMuteSFX = false
function msemenu.DebugStopStream()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    Game.StopStream()
    msemenu.sStreamPlaying = ""
  end
  }
end


function msemenu.DebugPlayStream(_ARG_0_)
  
  
  msemenu.sStreamPlaying = _ARG_0_
  msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(_ARG_0_)
  Game.DebugPlayStream(_ARG_0_)
end

function msemenu.DebugSetEnvFactor()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    local L2_3 = Game.GetCurrentEnvMultiplier()
    
    if _ARG_1_ == "Right" then
      Game.SetCurrentEnvMultiplier(L2_3 + 0.025)
    else
      Game.SetCurrentEnvMultiplier(L2_3 - 0.025)
    end
  end, GetCurrentValue = 
  function()
    return Game.GetCurrentEnvMultiplier()
  end
  }
end


function msemenu.GeneratePlayStreamItems(_ARG_0_)
  local L1_2 = {}
  for L5_2, L6_2 in ipairs(_ARG_0_) do
    local L7_2 = { ItemKey = L6_2:match("([^/]+)$"):gsub(".wav$", "") }
    L7_2.ItemContent = { OnDirActivated = 
    
    
    function(A0_3, A1_3)
      
      
      
      if msemenu.sStreamPlaying ~= L6_2 then
        msemenu.DebugPlayStream(L6_2)
      elseif A1_3 == "ActivationButton" then
        Game.StopStream()
        msemenu.sStreamPlaying = ""
      else
        msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(msemenu.sStreamPlaying)
        
        if A1_3 == "Right" then
          msemenu.fDebugVolume = msemenu.fDebugVolume + 0.025
        else
          msemenu.fDebugVolume = msemenu.fDebugVolume - 0.025
        end
        
        if  msemenu.fDebugVolume < 0.05 then
          msemenu.fDebugVolume = 0.05
        elseif msemenu.fDebugVolume > 1 then
          msemenu.fDebugVolume = 1
        end
        
        Game.DebugSetStreamVol(msemenu.sStreamPlaying, msemenu.fDebugVolume, true)
      end
    end, GetCurrentValue  =
    function()
      return Game.DebugGetStreamVolumeFromData(L6_2)
    end
    }
    table.insert(L1_2, L7_2)
  end
  
  
  L1_2.GetCurrentValue = function()
    if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
        return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
    else
      return "NO_STREAM"
    end
  end
  return L1_2
end



function msemenu.GenerateSetEnvironmentMultiplierItems(_ARG_0_)
  local L1_2 = {}
  for L5_2, L6_2 in ipairs(_ARG_0_) do
    local L7_2 = { ItemKey = L6_2:match("([^/]+)$"):gsub(".wav$", "") }
    
    
    L7_2.ItemContent = { OnDirActivated = 
    function (A0_3, A1_3)
      
      
      
      
      if msemenu.sStreamPlaying ~= L6_2 then
        msemenu.DebugPlayStream(L6_2)
      elseif A1_3 == "ActivationButton" then
        Game.StopStream()
        msemenu.sStreamPlaying = ""
      else
        msemenu.fFactor = Game.DebugGetEnvironmentMultiplier(msemenu.sStreamPlaying)
        
        if A1_3 == "Right" then
          msemenu.fFactor = msemenu.fFactor + 0.025
        else
          msemenu.fFactor = msemenu.fFactor - 0.025
        end
        
        if msemenu.fFactor < 0.05 then
          msemenu.fFactor = 0.05
        elseif msemenu.fFactor > 1 then
          msemenu.fFactor = 1
        end
        Game.DebugSetEnvironmentMultiplier(msemenu.sStreamPlaying, msemenu.fFactor)
      end
    end, GetCurrentValue = 
    function()
      return Game.DebugGetEnvironmentMultiplier(L6_2)
    end
    }
    table.insert(L1_2, L7_2)
  end
  
  
  L1_2.GetCurrentValue = function()
    if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
        return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
    else
      return  "NO_STREAM"
    end
  end
  return L1_2
end



function msemenu.DebugSetStreamVolume()
  
  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(msemenu.sStreamPlaying)
      
      if _ARG_1_ == "Right" then
        msemenu.fDebugVolume = msemenu.fDebugVolume + 0.025
      else
        msemenu.fDebugVolume = msemenu.fDebugVolume - 0.025
      end
      
      if msemenu.fDebugVolume < 0.05 then
        msemenu.fDebugVolume = 0.05
      elseif msemenu.fDebugVolume > 1 then
        msemenu.fDebugVolume = 1
      end
      Game.DebugSetStreamVol(msemenu.sStreamPlaying, msemenu.fDebugVolume, true)
    end, GetCurrentValue = 
    function()
      return msemenu.fDebugVolume
    end
  }
end



function msemenu.DebugSetSpeakerMode()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      local bAreaHeadphonesPlugged = Game.AreHeadphonesPlugged()
      Game.SetForceHeadphonesPlugged(not bAreaHeadphonesPlugged)
    end, GetCurrentValue = 
    function()
      if Game.AreHeadphonesPlugged() then
        return "HEADPHONES"
      else
        return "SPEAKERS"
      end
    end
  }
end



function msemenu.DebugSetHeadPhoneMultiplier()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      local fHeadphonesMultiplier = Game.GetHeadphonesMultiplier()
      
      if _ARG_1_ == "Right" then
         fHeadphonesMultiplier = fHeadphonesMultiplier + 0.025
      else
         fHeadphonesMultiplier = fHeadphonesMultiplier - 0.025
      end
      Game.SetHeadphonesMultiplier(fHeadphonesMultiplier)
    end, GetCurrentValue = 
    function()
      return Game.GetHeadphonesMultiplier()
    end
  }
end


function msemenu.DebugMuteSfx()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      msemenu.bMuteSFX = not msemenu.bMuteSFX
      Game.SetSFXMuted(msemenu.bMuteSFX)
    end, GetCurrentValue = 
    function()
      return msemenu.bMuteSFX
    end
  }

end




function msemenu.GenerateMusicTable(_ARG_0_)
  local oMusicTable = {}
  for _FORV_5_ in string.gmatch(_ARG_0_, "([^|]+)") do
    table.insert(oMusicTable, _FORV_5_)
  end
  return oMusicTable
end


function msemenu.EnableEnvironmentSound()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      if Game.IsEnvironmentSoundEnabled() then
        Game.EnableEnvironmentSounds(false)
      else
        Game.EnableEnvironmentSounds(true)
      end
    end, GetCurrentValue = 
    function()
      return Game.IsEnvironmentSoundEnabled()
    end
  }
end

function msemenu.EnableEnvironmentSoundEffects()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      if Game.IsEnvironmentSoundEffectsEnabled() then
        Game.EnableEnvironmentSoundEffects(false)
      else
        Game.EnableEnvironmentSoundEffects(true)
      end
    end, GetCurrentValue = 
    function()
      return Game.IsEnvironmentSoundEffectsEnabled()
    end
  }
end

function msemenu.EnableMetroidRadarSound()
  
  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
      if Game.IsMetroidRadarSoundEnabled() then
        Game.EnableMetroidRadarSound(false)
      else
        Game.EnableMetroidRadarSound(true)
      end
    end, GetCurrentValue = 
    function()
      return Game.IsMetroidRadarSoundEnabled()
    end
  }
end


function msemenu.SwitchHUDMode()
  
  return { OnDirActivated = 
  function()
    
    if hud.oHUDRoot then
      local L0_3 = hud.oHUDRoot:FindChild("Character")
      if L0_3 then
        if L0_3.StageID == "Up" then
          L0_3.StageID = "Down"
        else
          L0_3.StageID = "Up"
        end
      end
    end
  end, GetCurrentValue = 
  function()
  
    if hud.oHUDRoot then
       local oCharacter = hud.oHUDRoot:FindChild("Character")
       if oCharacter then 
          return oCharacter.StageID
       end
    end
    return ""
  end
  }  
end


function msemenu.SwitchPlayerLifeLocked()

  return { OnDirActivated = 
  function()
      Game.SwitchPlayerLifeLocked()
    end, GetCurrentValue = 
    function()
      return Game.GetPlayerLifeLocked()
    end
  }
end


function msemenu.SwitchInfiniteAmmo()

  return { OnDirActivated = 
  function()
    Game.SwitchInfiniteAmmo()
  end, GetCurrentValue = 
  function()
    return Game.GetInfiniteAmmoEnabled()
  end
  }
end


function msemenu.SwitchPlayerSpecialEnergyLocked()
  
  return { OnDirActivated = 
  function()
    Game.SwitchPlayerSpecialEnergyLocked()
  end, GetCurrentValue = 
  function()
    return Game.GetPlayerSpecialEnergyLocked()
  end
  }
end


function msemenu.SwitchSpaceJump()

  return { OnDirActivated = 
  function()
    Game.SwitchSpaceJump()
  end, GetCurrentValue = 
  function()
    return Game.GetSpaceJump()
  end
  }
end


function msemenu.SwitchDoubleJump()
  
  return { OnDirActivated = 
  function()
    Game.SwitchDoubleJump()
  end, GetCurrentValue = 
  function()
    return Game.GetDoubleJump()
  end
  }
end


function msemenu.UnlockAllRewards()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.UnlockAllRewards", "")
end


function msemenu.KillAllEnemies()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillAllEnemies", "")
end


function msemenu.ResetAmiibosTimestamp()
  Game.ResetAmiibosTimestamp()
end


function msemenu.KillEmmy()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillEmmy", "")
end


function msemenu.KillCurrentBoss()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillCurrentBoss", "")
  Game.SetIAmACheater()
end


function msemenu.SwitchForceSkipCutscenes()

  return { OnDirActivated = 
  function()
    if Game.IsForceSkipCutscenes() then
      Game.SetForceSkipCutscenes(false)
    else
      Game.SetForceSkipCutscenes(true)
    end
  end, GetCurrentValue = 
  function()
    return Game.IsForceSkipCutscenes()
  end
  }
end


function msemenu.RecoverSpecialEnergy()
  local fMaxSpecialEnergy = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY") 
  if fMaxSpecialEnergy ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", fMaxSpecialEnergy)
  end
  Game.GetPlayer().SPECIALENERGY:Fill()
end


function msemenu.RecoverLife()
  Game.GetPlayer().LIFE.fCurrentLife = Game.GetPlayer().LIFE.fMaxLife
end


function msemenu.RecoverAmmo()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_MISSILE_CURRENT", Game.GetItemAmount(Game.GetPlayerName(), "ITEM_WEAPON_MISSILE_MAX"), true)
      oInventory:SetItemAmount("ITEM_WEAPON_POWER_BOMB_CURRENT", Game.GetItemAmount(Game.GetPlayerName(), "ITEM_WEAPON_POWER_BOMB_MAX"), true)
      Game.ReinitPlayerFromBlackboard()
    end
  end
end


function msemenu.UnlockChargeBeam()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 0, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end


function msemenu.UnlockDiffusionBeam()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 1, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end


function msemenu.UnlockGrappleBeam()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_GRAPPLE_BEAM", 1, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end


function msemenu.UnlockPowerBeam()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 0, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end


function msemenu.UnlockWideBeam()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 1, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end


function msemenu.UnlockScrewAttack()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_SCREW_ATTACK", 1, true)
      guicallbacks.OnPlayerReinit()
    end
  end
end



function msemenu.UnlockEnergyShield()
  Samus.SetAbilityUnlocked("EnergyShield", true)
  guicallbacks.OnPlayerReinit()
end



function msemenu.UnlockEnergyWave()
  Samus.SetAbilityUnlocked("EnergyWave", true)
  guicallbacks.OnPlayerReinit()
end



function msemenu.UnlockPhaseDisplacement()
  Samus.SetAbilityUnlocked("PhaseDisplacement", true)
  guicallbacks.OnPlayerReinit()
end



function msemenu.UnlockScanningPulse()
  Samus.SetAbilityUnlocked("ScanningPulse", true)
  guicallbacks.OnPlayerReinit()
end

function msemenu.GainCentralUnitSpbSprWeapon()
  Game.GainCentralUnitSpbSprWeapon()
  Game.ReinitPlayerFromBlackboard()
end



function msemenu.GainAllItemsAndPowerUps()
  
  
  
  
  local oPlayer = Game.GetPlayer()
  
  if oPlayer ~= nil then
    
    
    
    local oSpecialEnergy = oPlayer.SPECIALENERGY
    if oSpecialEnergy ~= nil then
      oSpecialEnergy.fMaxEnergy = 2200
      oSpecialEnergy.fEnergy = 2200
    end
  
    
    
    local oLife = oPlayer.LIFE
    if oLife ~= nil then
      oLife.fMaxLife = 1099
      oLife.fCurrentLife = 1099
    end
    
    
    
    
    local oInventory = oPlayer.INVENTORY
    if oInventory ~= nil then
      oInventory:SetItemAmount("ITEM_MAX_LIFE", 799, true)
      oInventory:SetItemAmount("ITEM_CURRENT_LIFE", 799, true)
      oInventory:SetItemAmount("ITEM_MAX_SPECIAL_ENERGY", 1000, true)
      oInventory:SetItemAmount("ITEM_CURRENT_SPECIAL_ENERGY", 1000, true)
      oInventory:SetItemAmount("ITEM_WEAPON_MISSILE_CURRENT", 150, true)
      oInventory:SetItemAmount("ITEM_WEAPON_MISSILE_MAX", 150, true)
      oInventory:SetItemAmount("ITEM_WEAPON_POWER_BOMB", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_POWER_BOMB_CURRENT", 10, true)
      oInventory:SetItemAmount("ITEM_WEAPON_POWER_BOMB_MAX", 10, true)
      oInventory:SetItemAmount("ITEM_GRAVITY_SUIT", 1, true)
      oInventory:SetItemAmount("ITEM_VARIA_SUIT", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_BOMB", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_GRAPPLE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_ICE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_WAVE_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_SPAZER_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_SUPER_MISSILE", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_ICE_MISSILE", 1, true)
      oInventory:SetItemAmount("ITEM_WEAPON_LINE_BOMB", 1, true)
      oInventory:SetItemAmount("ITEM_MULTILOCKON", 1, true)
      oInventory:SetItemAmount("ITEM_SPECIAL_ENERGY", 1, true)
      oInventory:SetItemAmount("ITEM_DOUBLE_JUMP", 1, true)
      oInventory:SetItemAmount("ITEM_MORPH_BALL", 1, true)
      oInventory:SetItemAmount("ITEM_SCREW_ATTACK", 1, true)
      oInventory:SetItemAmount("ITEM_SPACE_JUMP", 1, true)
      oInventory:SetItemAmount("ITEM_SPRING_BALL", 1, true)
      oInventory:SetItemAmount("ITEM_MAGNET_GLOVE", 1, true)
      oInventory:SetItemAmount("ITEM_FLOOR_SLIDE", 1, true)
      oInventory:SetItemAmount("ITEM_OPTIC_CAMOUFLAGE", 1, true)
      oInventory:SetItemAmount("ITEM_SPEED_BOOSTER", 1, true)
      oInventory:SetItemAmount("ITEM_GHOST_AURA", 1, true)
      oInventory:SetItemAmount("ITEM_SONAR", 1, true)
      Game.ReinitPlayerFromBlackboard()
    end
  end
end


function msemenu.CurrentMinimapVisitAndScanAllCells()
  Game.CurrentMinimapVisitAndScanAllCells()
end


function msemenu.ScanVisitDiscoverEverything()
  Game.ScanVisitDiscoverEverything()
end


function msemenu.HideScenario()
  Game.HideScenario()
end


function msemenu.ShowScenario()
  Game.ShowScenario()
end


function msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, _ARG_1_, ...)
  return function(A0_3)
    local iEntityID = msemenu.FilterEntityIDValue(_ARG_0_)
    local oActor = Game.GetActor(iEntityID)
    oActor[_ARG_1_](oActor, unpack(arg))
  end
end


function msemenu.GenerateBlackboardBoolMsgEntry(_ARG_0_, _ARG_1_)
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    Blackboard.SetProp(_ARG_0_, _ARG_1_, "b", not Blackboard.GetProp(_ARG_0_, _ARG_1_))
  end, GetCurrentValue = 
  function()
    return Blackboard.GetProp(_ARG_0_, _ARG_1_)
  end
  }
end


function msemenu.GenerateInventoryEntry(_ARG_0_, _ARG_1_)
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    local L2_3 = msemenu.FilterEntityIDValue(_sEntity)
    local L3_3 = 1    
    if Game.IsDebugPadButtonPressed("L1") and _ARG_1_.IncrementSlow ~= nil then
      L3_3 = _ARG_1_.IncrementSlow
    elseif  Game.IsDebugPadButtonPressed("R1") and _ARG_1_.IncrementFast ~= nil then
      L3_3 = _ARG_1_.IncrementFast
    elseif _ARG_1_.Increment ~= nil then
      L3_3 = _ARG_1_.Increment
    end
    
    if A1_3 == "Right" then
      Game.SetItemAmount(Game.GetPlayerName(), _ARG_0_, Game.GetItemAmount(Game.GetPlayerName(), _ARG_0_) + L3_3)
    else
      Game.SetItemAmount(Game.GetPlayerName(), _ARG_0_, Game.GetItemAmount(Game.GetPlayerName(), _ARG_0_) - L3_3)
    end
         
    Game.ReinitPlayerFromBlackboard()
    Game.SetIAmACheater()
    end,
    GetCurrentValue = function()
      return Game.GetItemAmount(Game.GetPlayerName(), _ARG_0_)
    end
  }
end


function msemenu.GenerateInventoryItems()
  local L0_2 = {}
  
  
  for L4_2, L5_2 in pairs(debuginventory) do
    L0_2[L4_2] = msemenu.GenerateInventoryEntry(L4_2, L5_2)
  end
  
  return L0_2
end


function msemenu.GenerateWeaponList()
    
  local L0_2 = {}
  
  for L4_2, L5_2 in ipairs(debugweapons) do
    local L6_2 = L5_2[1]
    local L7_2 = { 
      ItemKey = L6_2, 
      ItemContent =  msemenu.GenerateInventoryListEntry(L6_2, L5_2) 
    }
    
    table.insert(L0_2, L7_2)
  end
  
  return L0_2
end


function msemenu.GenerateItemsList()
  local L0_2 = {}
  
  
  for L4_2, L5_2 in ipairs(debugitems) do
    local L6_2 = L5_2[1]
    local L7_2 = {
      ItemKey = L6_2,
      ItemContent = msemenu.GenerateInventoryListEntry(L6_2, L5_2)
    }
  
    table.insert(L0_2, L7_2)    
  end
  
  return L0_2
end


function msemenu.GenerateAbilitiesList()
  local L0_2 = {}
  
  
  for _FORV_4_, _FORV_5_ in ipairs(debugabilities) do
    local L6_2 = _FORV_5_[1]
    local L7_2 = {
      ItemKey = L6_2,
      ItemContent = msemenu.GenerateInventoryListEntry(L6_2, _FORV_5_)
    }
  
    table.insert(L0_2, L7_2)
  end
  
  return L0_2
end


function msemenu.GenerateInventoryListEntry(_ARG_0_, _ARG_1_)
 
  return { OnActivated = 
  function(A0_3)
    local L1_3 = 1
    if _ARG_1_.Amount ~= nil then  L1_3 = _ARG_1_.Amount end    
         
    if Game.GetItemAmount(Game.GetPlayerName(), _ARG_1_.Item) > 0 then
      Game.SetItemAmount(Game.GetPlayerName(), _ARG_1_.Item, 0)
      if _ARG_1_.ItemMax ~= nil then Game.SetItemAmount(Game.GetPlayerName(), _ARG_1_.ItemMax, 0) end
    else
      Game.SetItemAmount(Game.GetPlayerName(), _ARG_1_.Item, L1_3)
      if _ARG_1_.ItemMax ~= nil then  Game.SetItemAmount(Game.GetPlayerName(), _ARG_1_.ItemMax, L1_3) end
    end
      Game.ReinitPlayerFromBlackboard()
    end, GetCurrentValue = 
    function()
      if Game.GetItemAmount(Game.GetPlayerName(), _ARG_1_.Item) > 0 then
        return "ON"
      else
        return "OFF"
      end
    end
  }
end


function msemenu.GeneratePlayCutsceneDefWithPreload(_ARG_0_)
  return function()
  
  
  
  
  
  
  
  
    local sCutscene = "cutscenes/" .. _ARG_0_.Name .. "/takes/01/" .. _ARG_0_.Name .. "01.bmscu"
    Game.LaunchCutsceneInViewerMode(sCutscene)
    Game.FadeIn(0.1, 0.2)
  end
end


function msemenu.GenerateCutscene2DItems(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  for L6_2, L7_2 in pairs(_ARG_0_) do
    if _ARG_1_ then
      L2_2[L7_2.Name] = {}
      L2_2[L7_2.Name][".PlayAll (with Preload)"] = msemenu.GeneratePlayCutsceneDefWithPreload(L7_2)
      for L11_2 = 1, L7_2.NumTakes, 1 do
        local L12_2 = string.format("%02d", L11_2)
        local L13_2 = "cutscenes/" .. L7_2.Name .. "/takes/" .. L12_2 .. "/" .. L7_2.Name .. L12_2 .. ".bmscu"
        
        L2_2[L7_2.Name][L12_2] = 
        function()
          Game.LaunchCutsceneInViewerMode(L13_2)
          Game.FadeIn(0.1, 0.2)
        end
      end
    else
      L2_2[L7_2.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(L7_2)
    end
  end
  
  return L2_2
end


function msemenu.GenerateCutscene3DItems(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  for L6_2, L7_2 in pairs(_ARG_0_) do
    if _ARG_1_ then
      local L8_2 = string.sub(L7_2.Player, 5)
      local L9_2 = string.format("%02d", L7_2.Take)
      local L10_2 = "cutscenes/" .. L7_2.Name .. "/takes/" .. L9_2 .. "/" .. L7_2.Name .. L9_2
      local L11_2 = "packs/cutscenes/" .. L7_2.Name .. ".pkg"
      local L12_2 = "packs/maps_" .. L8_2 .. "/" .. L7_2.Map .. ".pkg"
      local L13_2 = "[" .. L8_2 .. "]" .. L6_2
      L13_2 = string.sub(L13_2, 0, 25)
      L2_2[L13_2] = 
      function()
        Game.CSDirectorSetNumStages(1)
        Game.CSDirectorSetStageCfg(0, L11_2, L10_2, L12_2,  L7_2.Player, L7_2.Map)
        Game.CSDirectorEnableLoadingScreen(true)
        Game.CSDirectorPlay()
      end
    else
      L2_2[L7_2.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(L7_2)
    end
  end
  
  return L2_2
end







msemenu.MenuList = nil
msemenu.CurrentMenuPath = nil
msemenu.CurrentMenu = nil
msemenu.OnClosed = nil
function msemenu.main()
end


function msemenu.close()
  GUI.SetProperties("DebugMenu", {Enabled = false})
  GUI.SetProperties("HUD", {Enabled = true})

  Game.TogglePause()

  if msemenu.OnClosed ~= nil then
    msemenu.OnClosed()
  end
end


function msemenu.GetParentMenuPath(_ARG_0_)
  return string.gmatch(_ARG_0_, "(.*)%.[^%.]+$")()
end


function msemenu.GetMenu(_ARG_0_)
  local L1_2 = msemenu  
  for L5_2 in _ARG_0_:gmatch("[_%w ][_%w #@-%-]*") do
    L1_2 = msemenu.GetMenuItemByKey(L1_2, L5_2)
  end
  
  return L1_2
end


function msemenu.GetValueString(_ARG_0_)
  local L1_2  
  if type(_ARG_0_) == "number" then
    L1_2 = string.format("%.3f", _ARG_0_)
  else
    L1_2 = tostring(_ARG_0_)
  end
  
  return L1_2
end


function msemenu.Update(_ARG_0_)
  
  
  
  
  
  
  
  
  msemenu.CurrentMenuPath = _ARG_0_
  msemenu.CurrentMenu = msemenu.GetMenu(_ARG_0_)
  local L1_2 = true
  local L2_2 = {}
  local L3_2 = {}
  local L4_2 = {}
  local L5_2 = {}
  local L6_2 = {}
  
  if msemenu.CurrentMenu == nil then
    utils.LOG(utils.LOGTYPE_DEFAULT, "MENU IS NIL")
    return
  end
  
  for L10_2, L11_2 in pairs(msemenu.CurrentMenu) do
    local L12_2 = L11_2
    local L13_2 = L10_2
    local L14_2 = ""
    
    if type(L12_2) == "table" and L12_2.ItemKey ~= nil then
      L13_2 = L12_2.ItemKey
      L12_2 = L12_2.ItemContent
      L1_2 = false
    end
    
    if type(L12_2) == "table" then
      if L12_2.GetCurrentValue ~= nil then
        L14_2 = msemenu.GetValueString(L12_2.GetCurrentValue(L13_2))
      elseif L12_2.OnDirActivated == nil and L12_2.OnActivated == nil then
        L14_2 = "[SUBMENU]"
        L13_2 = "[" .. L13_2 .. "]"
      end
    end
    
    table.insert(L2_2, L13_2)
    
    table.insert(L3_2, L14_2)
    
    table.insert(L4_2, true)
    
    table.insert(L5_2, false)
    
    table.insert(L6_2, false)
  end
  GUI.SetMenuListValues(msemenu.DebugMenuMain:FindChild("ListComposition"), L2_2, L3_2, L4_2, L5_2, L6_2, L1_2)
end


function msemenu.Refresh()
  msemenu.Update(msemenu.CurrentMenuPath)
  local L0_2 = msemenu.items[" Debug"]
  if L0_2 ~= nil then
    if L0_2.Entities ~= nil then
      msemenu.UpdateEntitiesMenu()
    end
    if L0_2.Locations ~= nil then
      L0_2.Locations = {}
      local L1_2 = nil
      if CurrentScenarioID ~= nil then
        L1_2 = msemenu_debug_locations[CurrentScenarioID]
      end
      if L1_2 ~= nil then
        
        for L5_2, L6_2 in ipairs(L1_2) do
          local L7_2 = L6_2[1]
          local L8_2 = L6_2[2]         
          L0_2.Locations[L7_2] = 
          function()
            Game.GetPlayer().vPos = V3D(L8_2[1], L8_2[2], L8_2[3])
            Game.CloseDebugMenu(2)
          end
        end
      end
    end
  end
end


function msemenu.OnItemActivated(_ARG_0_, _ARG_1_, _ARG_2_)
  local L3_2 = _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")
  local L4_2 = _ARG_2_.ActivationDir
  local L5_2 = msemenu.GetCurrentMenuItemByKey(L3_2)
  if type(L5_2) == "table" then
    
    if L5_2.OnDirActivated ~= nil then
      local L6_2 = L5_2.OnDirActivated(L3_2, L4_2)
    
      if L5_2.GetCurrentValue then
    
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild("ListComposition"), L3_2, msemenu.GetValueString(L5_2.GetCurrentValue(L3_2)), true, false)
      elseif L6_2 ~= nil and type(L6_2) ~= "table" then
    
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild( "ListComposition"), L3_2, msemenu.GetValueString(L6_2), true, false)
      elseif L6_2 ~= nil and type(L6_2) == "table" and L4_2 == "ActivationButton" then
    
        msemenu.CurrentMenu[L3_2] = L6_2
        msemenu.Update(msemenu.CurrentMenuPath.. "." .. L3_2)
      end
    elseif L5_2.OnActivated ~= nil then
      L5_2.OnActivated(L3_2)
    
      if L5_2.GetCurrentValue then
    
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild("ListComposition"), L3_2, msemenu.GetValueString(L5_2.GetCurrentValue(L3_2)), true, false)
      end
    elseif L4_2 == "ActivationButton" then
    
      msemenu.Update(msemenu.CurrentMenuPath .. "." .. L3_2)
    end
  elseif type(L5_2) == "function" and L4_2 == "ActivationButton" then
    
    L5_2(L3_2)
  end

  return 1
end


function msemenu.OnItemCancel()
    
    
    
    
    
  local L0_2 = msemenu.GetParentMenuPath(msemenu.CurrentMenuPath)
  if L0_2 ~= nil and L0_2 ~= "" then
    msemenu.Update(L0_2)
  end

  return 1
end

function msemenu.OnMenuEnabled()
  msemenu.Update("items")
  
  return 1
end


function msemenu.Create(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  
  
  
  msemenu.CloseOnCancel = _ARG_3_
  msemenu.DebugMenuRoot = GUI.CreateDisplayObjectEx("DebugMenu", "CDisplayObjectContainer", {Enabled = _ARG_2_})
  msemenu.DebugMenuMain = GUI.CreateMenuComposition(msemenu.DebugMenuRoot, "Main")
  msemenu.MenuList = msemenu.DebugMenuMain:FindChild("ListComposition")
  msemenu.MenuList:SetEventHandler("Start", "msemenu.OnMenuEnabled")
  msemenu.MenuList:SetEventHandler("Activated", "msemenu.OnItemActivated")
  msemenu.MenuList:SetEventHandler("Cancel", "msemenu.OnItemCancel")
  
  msemenu.Update("items")
  
  return msemenu.DebugMenuRoot
end


function msemenu.CreateEntityMenu(_ARG_0_)
  local L1_2
  
  
  
  
  
  if _ARG_0_ ~= nil then
    L1_2 = { 
        _Delete = msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, "DelMe"),
        _Kill = msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, "ForceDead", true) 
    }
    local L2_2 = Game.GetActorComponents(_ARG_0_)
    
    if L2_2 ~= nil then
  
      for L6_2, L7_2 in pairs(L2_2) do
        local L8_2 = {}
        local L9_2 = Game.GetActorComponentVariables(_ARG_0_, L6_2)
        local L10_2 = 0
  
        for L14_2, L15_2 in pairs(L9_2) do
          L8_2[L14_2] = msemenu.GenerateComponentVarEntry(_ARG_0_, L6_2, L14_2, L15_2)
          L10_2 = L10_2 + 1
        end
        
        if L10_2 > 0 then
          L1_2[L6_2] = L8_2
        end
      end
    end
  end
  
  return L1_2
end



msemenu.tEntitiesMenuCategories = {
  {Name = "Players", Charclasses = {samus = true, morphball = true} },
  {Name = "AIs", ComponentID = "AI"},
  {Name = "Triggers", ComponentID = "TRIGGER"},
  {Name = "SpawnGroups", ComponentID = "SPAWNGROUP" }
}



function msemenu.UpdateEntitiesMenu()
  local L0_2 = Game.GetEntities()
  local L1_2 = {}
  
  for L5_2, L6_2 in ipairs(msemenu.tEntitiesMenuCategories) do
    L1_2[L6_2.Name] = {}
  end
  
  L1_2._NoCategory_ = {}

  
  for L5_2, L6_2 in pairs(L0_2) do
    local L7_2 = msemenu.CreateEntityMenu(L5_2)

    if L7_2 ~= nil then
      local L8_2 = false
      for L12_2, L13_2 in ipairs(msemenu.tEntitiesMenuCategories) do
        local L14_2 = false

        if L13_2.Charclasses ~= nil and L6_2 ~= nil then
          L14_2 = L13_2.Charclasses[L6_2] == true
        end

        if not L14_2 and L13_2.ComponentID ~= nil then
          L14_2 = Game.HasEntityComponent(L5_2, L13_2.ComponentID)
        end

        if L14_2 then
          L1_2[L13_2.Name][L5_2] = L7_2
          L8_2 = true
          break
        end
      end

      if not L8_2 then
        L1_2._NoCategory_[L5_2] = L7_2
      end
    end
  end

  msemenu.items[" Debug"].Entities = L1_2
end


function msemenu.EnableDroppedItemsAttraction()
  
  return { OnDirActivated = 
  function (A0_3, A1_3)
    if Game.IsDroppedItemsAttractionEnabled() then
      Game.EnableDroppedItemsAttraction(false)
    else
      Game.EnableDroppedItemsAttraction(true)
    end
  end, GetCurrentValue = 
  function() 
    return Game.IsDroppedItemsAttractionEnabled() 
  end
  }
end



function msemenu.ChangeDroppedItemAttractionAcceleration()
  
  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "Right" then
      Game.SetDroppedItemAttractionAcceleration(Game.GetDroppedItemAttractionAcceleration() + 1)
    else
      Game.SetDroppedItemAttractionAcceleration(Game.GetDroppedItemAttractionAcceleration() - 1)
    end
  end, GetCurrentValue = 
  function()
    return Game.GetDroppedItemAttractionAcceleration()
  end
  }
end



function msemenu.DebugBreakablePolyIndex()

  return { OnDirActivated = 
  function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "Right" then
      Game.IncrementNavMeshGeneratorDebugBreakableTileIndex()
    else
      Game.DecrementNavMeshGeneratorDebugBreakableTileIndex()
    end
  end, GetCurrentValue = 
  function()
    return Game.GetNavMeshGeneratorDebugBreakableTileIndex()
  end
  }
end


function msemenu.GenerateSwitchSoundMode()

  return { OnDirActivated =
  function(_ARG_0_, _ARG_1_)
    Game.SwitchSoundMode()
  end, GetCurrentValue = 
  function()
    return Game.GetSoundMode()
  end
  }
  
  
end


function msemenu.GetScenarioAreaName(_ARG_0_)
  local L1_2 = string.match(_ARG_0_, "_(.*)")
  if L1_2:len() >= 2 then
    local L2_2 = L1_2:len()
    local L3_2 = L1_2:sub(L2_2, L2_2)
    local L4_2 = L1_2:sub(L2_2 - 1, L2_2 - 1)

    if tonumber(L3_2) == nil then
      if tonumber(L4_2) ~= nil then
        L1_2 = L1_2:sub(0, L2_2 - 1)
        utils.LOG(utils.LOGTYPE_GUI, "GetScenarioAreaName: Formatting name to " .. L1_2)
      end
    end

    if msemenu.aAreasLevels[L1_2] ~= nil then
      utils.LOG(utils.LOGTYPE_GUI, "GetScenarioAreaName: Changing name to " .. msemenu.aAreasLevels[L1_2])
      L1_2 = msemenu.aAreasLevels[L1_2]
    end
  end
  return L1_2
end


function msemenu.copytable(_ARG_0_, _ARG_1_)
  if type(_ARG_0_) ~= "table" then return _ARG_0_ end
  if _ARG_1_ and _ARG_1_[_ARG_0_] then return _ARG_1_[_ARG_0_] end
  local L2_2 = _ARG_1_ or {}
  local L3_2 = setmetatable({}, getmetatable(_ARG_0_))
  L2_2[_ARG_0_] = L3_2
  for L7_2, L8_2 in pairs(_ARG_0_) do L3_2[msemenu.copytable(L7_2, L2_2)] = msemenu.copytable(L8_2, L2_2) end
  return L3_2
end


function msemenu.GenerateLoadEventItems(_ARG_0_)
  local L1_2 = {}
  local L2_2 = 1

  for L6_2, L7_2 in pairs(_ARG_0_) do
    local L8_2 = msemenu.copytable(L7_2, nil)
    local L9_2 = nil
    for L13_2, L14_2 in  pairs(L1_2) do
      if L14_2.ItemKey == L6_2 then
        L9_2 = L14_2
        break
      end
    end
    if L9_2 == nil then
      L9_2 = { ItemKey = L6_2, ItemContent = {} }
      table.insert(L1_2, L2_2, L9_2)
      L2_2 = L2_2 + 1
    end
    for L13_2, L14_2 in ipairs(L8_2) do
      local L15_2 = L14_2[1]
      local L16_2 = L14_2[2]
      local L17_2 = L14_2[4]
      
      if #L17_2 > 0 then
        local L18_2 = ""
        local L19_2 = ""

        for L23_2, L24_2 in ipairs(L17_2) do
          L19_2 = L19_2 .. L24_2
        end
        L18_2 = L15_2
        
        
        
        
        
        
        
        
        
        
        
        local L20_2 = { ItemKey = L18_2, ItemContent = { OnDirActivated = 
        function(A0_3, A1_3)
          local L2_3 = false
          
          if A1_3 == "ActivationButton" then
            local L3_3 = msemenu_debug_saves[L16_2]
            
            if L3_3 ~= nil then
              local L4_3 = L3_3[L15_2]
              if L4_3 ~= nil then
                L2_3 = true
                utils.LOG(utils.LOGTYPE_GUI, "GenerateLoadEventItems: Loading Game from Save " .. L4_3)
                Game.LoadGameFromAssets(L4_3)
              end
            end
            
            local L4_3 = L14_2[3]
            
            if type(L4_3) == "string" then
              Game.LoadGameFromAssets(L4_3)
            else
              
              if L2_3 == false then
                ScenarioMenu.LoadScenario(L16_2)
              end
              Game.AddPSF(0.2, "Scenario.SetPlayerPosition", "fff", L4_3[1], L4_3[2], L4_3[3])
            end
          end
        end, GetCurrentValue =        
        function() return L19_2 end 
        }
        }
        table.insert(L9_2.ItemContent, L13_2, L20_2)
      end
      L8_2 = nil
    end
  end
  
  
  table.sort(L1_2,
  function(A0_3, A1_3)
    function find(A0_4, A1_4)
      for L5_4, L6_4 in  ipairs(A0_4) do
        if L6_4 == A1_4 then 
            return L5_4 
        end
      end            
      return -1
    end         
    
    local L2_3 = find(msemenu.aAreasPresavedGames, A0_3.ItemKey)
    local L3_3 = find(msemenu.aAreasPresavedGames, A1_3.ItemKey)
    
    return L2_3 < L3_3
  end)
      
      
  return L1_2
end


function msemenu.SwitchFixedSlotTime()
  
  return { OnDirActivated = 
  function()
    Game.ToggleFixedStepTime()
  end, GetCurrentValue = 
  function()
    local bFixedStepTime = Game.GetFixedStepTime() 
    if bFixedStepTime then
      return "ENABLED"
    else
      return "DISABLED"
    end
  end
  }
end


function msemenu.SwitchPostprocessEnabled()
  
  return { OnDirActivated = 
  function()
    Game.SetPostprocessEnabled(not Game.GetPostprocessEnabled())
  end, GetCurrentValue = 
  function()
    local bPostprocessEnabled = Game.GetPostprocessEnabled()
    if bPostprocessEnabled then
      return "ENABLED"
    else
      return "DISABLED"
    end
  end
  }
end


function msemenu.SwitchCrazyDropFactor()
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    local L2_3 = Game.GetCrazyDropFactor()
    if A1_3 == "ActivationButton" or A1_3 == "Right" then
      L2_3 = L2_3 + 1
      if L2_3 > 2 then
        L2_3 = 0
      end
    else
      L2_3 = L2_3 - 1
      if L2_3 < 0 then
        L2_3 = 2
      end
    end
    Game.SetCrazyDropFactor(L2_3)
  end, GetCurrentValue = 
  function()
    local L0_3 = Game.GetCrazyDropFactor()
    if L0_3 == 0 then
      return "DEFAULT"
    elseif L0_3 == 1 then
      return "LESS"
    elseif L0_3 == 2 then
      return "NONE"
    else
      return "ERROR"
    end
  end 
  }
end

msemenu.tGenerateLanguageSelectItems = {
  English = function() Game.SetCurrentLanguage("ENGLISH") end,
  Spanish = function() Game.SetCurrentLanguage("SPANISH") end,
  German = function() Game.SetCurrentLanguage("GERMAN") end,
  French = function() Game.SetCurrentLanguage("FRENCH") end,
  Dutch = function() Game.SetCurrentLanguage("DUTCH") end,
  Italian = function() Game.SetCurrentLanguage("ITALIAN") end,
  Japanese = function() Game.SetCurrentLanguage("JAPANESE") end,
  Korean = function() Game.SetCurrentLanguage("KOREAN") end,
  Chinese = function() Game.SetCurrentLanguage("CHINESE") end
}


function msemenu.GenerateLanguageSelectItems() 
  return msemenu.tGenerateLanguageSelectItems
end





function msemenu.GeneratePopups(_ARG_0_)
  local L1_2 = {}
  for L5_2, L6_2 in ipairs(_ARG_0_) do
    L1_2[L6_2] = 
    function() Game.AddSF(0.1, "utils.GeneratePopupUntilSuccess", "s", L6_2) end
  end
  return L1_2
end



function msemenu.GenerateSwitchFrontByPass()

  return { GetCurrentValue = 
  function()
    if Game.GetSetFrontByPass() then
      return "Enabled"
    else
      return "Disabled"
    end
  end, OnDirActivated = 
  function()
    Game.GetSetFrontByPass(not Game.GetSetFrontByPass())
  end
  }
end


function msemenu.GenerateSetMixValues()
  
  return 
  {
    LeftRear = 
    { 
      OnDirActivated = 
      function(A0_3, A1_3)
        local L2_3 =  Game.GetSetSurroundPan()
        if A1_3 == "Right" then
           L2_3.LR = L2_3.LR + 0.05
        elseif A1_3 == "Left" then
          L2_3.LR = L2_3.LR - 0.05
        end
        
        Game.GetSetSurroundPan(L2_3.LR, L2_3.LF, L2_3.RR, L2_3.RF)
      end, 
      GetCurrentValue =
      function()
        
        local oSurroundPan = Game.GetSetSurroundPan()
        return oSurroundPan.LR
      end
    }, RightRear = 
    {
      OnDirActivated = 
      function(A0_3, A1_3)
        local L2_3 = Game.GetSetSurroundPan()
        if A1_3 == "Right" then
          L2_3.RR = L2_3.RR + 0.05
        elseif A1_3 == "Left" then
          L2_3.RR = L2_3.RR - 0.05
        end
        
        Game.GetSetSurroundPan(L2_3.LR, L2_3.LF, L2_3.RR, L2_3.RF)
      end, 
      GetCurrentValue =   
      function()
        
        local oSurroundPan = Game.GetSetSurroundPan()
        return oSurroundPan.RR
      end
    }, LeftFront = 
    {
      OnDirActivated =
      function(A0_3, A1_3)
        local L2_3 = Game.GetSetSurroundPan()
        if A1_3 == "Right" then
          L2_3.LF = L2_3.LF + 0.05
        elseif A1_3 == "Left" then
          L2_3.LF = L2_3.LF - 0.05
        end
        
        Game.GetSetSurroundPan(L2_3.LR, L2_3.LF, L2_3.RR, L2_3.RF)
      end, 
      GetCurrentValue = 
      function()
        
        local oSurroundPan = Game.GetSetSurroundPan()
        return oSurroundPan.LF
      end
    }, RightFront = 
    {
      OnDirActivated = 
      function(A0_3, A1_3)
        local L2_3 = Game.GetSetSurroundPan()
        if A1_3 == "Right" then
          L2_3.RF = L2_3.RF + 0.05
        elseif A1_3 == "Left" then
          L2_3.RF = L2_3.RF - 0.05
        end
        
        Game.GetSetSurroundPan(L2_3.LR, L2_3.LF, L2_3.RR, L2_3.RF)
      end, 
      GetCurrentValue = 
      function()
        
        local oSurroundPan = Game.GetSetSurroundPan()
        return oSurroundPan.RF
      end
    }
  }



end


function msemenu.GetTunableData(_ARG_0_, _ARG_1_)
  local L2_2 = _ARG_0_ .. "." .. _ARG_1_
  print(L2_2)
  local L3_2 = Game.GetTunables()
  local L4_2 = nil
  for L8_2 in string.gmatch(L2_2, "[A-z|0-9]+") do
    if L4_2 ~= nil then
      L3_2 = L3_2[L4_2]
    end
    L4_2 = L8_2
  end
  return { category = L3_2, property = L4_2 }
end


function msemenu.GenerateTunableModePropertyEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  
  return { OnDirActivated = 
  function(A0_3, A1_3)
    local L2_3 = _ARG_2_
    local L3_3 =  msemenu.GetTunableData(_ARG_0_, _ARG_1_)
    
    
    
    if A1_3 == "Right" then
      L2_3 = L3_3.category[L3_3.property] + 1
    else
      L2_3 = L3_3.category[L3_3.property] - 1
    end
    
    if L2_3 > _ARG_3_ then
      L2_3 = _ARG_2_
    elseif L2_3 < _ARG_2_ then
      L2_3 = _ARG_3_
    end
    L3_3.category[L3_3.property] = L2_3
  end, GetCurrentValue = 
  function()
    local L0_3 = msemenu.GetTunableData(_ARG_0_, _ARG_1_)
    local L1_3 = L0_3.category[L0_3.property]
    print(L1_3)
    
    L1_3 = L1_3 + (1 - _ARG_2_)
    return _ARG_4_[L1_3]
  end, 
  sCategoryId = _ARG_0_,  
  sPropertyId = _ARG_1_
  }
end


function msemenu.GenerateTunableNumberPropertyEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)

  return { OnDirActivated = 
  function(A0_3, A1_3)
    local L2_3 = _ARG_2_
    
    if Game.IsDebugPadButtonPressed("L1") then
      fIncrement = _ARG_4_ / 10
    elseif Game.IsDebugPadButtonPressed("R1") then
      fIncrement = _ARG_4_ * 10
    else
      fIncrement = _ARG_4_
    end
    
    local L3_3 = msemenu.GetTunableData(_ARG_0_, _ARG_1_)
    
    if A1_3 == "Right" then
      L2_3 = L3_3.category[L3_3.property] + fIncrement
    else
      L2_3 = L3_3.category[L3_3.property] - fIncrement
    end
    
    if L2_3 > _ARG_3_ then
      L2_3 = _ARG_3_
    elseif L2_3 < _ARG_2_ then
        L2_3 = _ARG_2_
    end
    
    L3_3.category[L3_3.property] = L2_3
  end, GetCurrentValue = 
  function()
    
    
    local L0_3 = msemenu.GetTunableData(_ARG_0_, _ARG_1_)
    return L0_3.category[L0_3.property]
  end,
  sCategoryId = _ARG_0_,
  sPropertyId = _ARG_1_
  }
end


function msemenu.GenerateTunableBoolPropertyEntry(_ARG_0_, _ARG_1_)
  return {
    OnDirActivated = 
    function(A0_3, A1_3)
      local L2_3 = msemenu.GetTunableData(_ARG_0_, _ARG_1_)
      L2_3.category[L2_3.property] = not L2_3.category[L2_3.property]
    end,
    GetCurrentValue = function()
      local L2_3 = msemenu.GetTunableData(_ARG_0_, _ARG_1_)
      return L2_3.category[L2_3.property] and "ENABLED" or "DISABLED"
    end,
    sCategoryId = _ARG_0_,
    sPropertyId = _ARG_1_
  }
end


function msemenu.FindItemContent(_ARG_0_, _ARG_1_)
  local L2_2
  
  
  for L6_2, L7_2 in ipairs(_ARG_0_) do
    if L7_2 ~= nil and L7_2.ItemKey ~= nil and L7_2.ItemKey == _ARG_1_ and L7_2.ItemContent ~= nil then
      L2_2 = L7_2.ItemContent
      break
    end
  end
  
  if L2_2 == nil then
    table.insert(_ARG_0_, { ItemKey = _ARG_1_, ItemContent = {} })
    for L6_2, L7_2 in ipairs(_ARG_0_) do
      if L7_2 ~= nil and L7_2.ItemKey ~= nil and L7_2.ItemKey == _ARG_1_ and L7_2.ItemContent ~= nil then
        L2_2 = L7_2.ItemContent
        break
      end
    end
  end
  
  return L2_2
end


function msemenu.SwitchPerformanceInfoEnabled()

  return {
    OnDirActivated = function()
      if Game.GetPerformanceInfoEnabled() then
        Game.SetPerformanceInfoEnabled(false)
      else
        Game.SetPerformanceInfoEnabled(true)
      end
    end,
    GetCurrentValue = function()
      return Game.GetPerformanceInfoEnabled()
    end
  }
end
