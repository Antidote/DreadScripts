loadingscreen = {oGUIRoot = nil}

loadingscreen.sTooltipTextTagPreffix = "#GUI_TIPS_"

loadingscreen.asTooltips = {}

loadingscreen.tInitUnlockedTooltips = {}

loadingscreen.tOnScenarioLoadUnlockTooltip = {}

loadingscreen.asUnlockedTooltips = {}













function loadingscreen.UpdateUnlockedTooltips()
  loadingscreen.asUnlockedTooltips = utils.DeepCopy(loadingscreen.tInitUnlockedTooltips)
  
  for _FORV_3_, _FORV_4_ in ipairs(loadingscreen.asTooltips) do
    if loadingscreen.IsTooltipUnlocked(_FORV_4_) then
      table.insert(loadingscreen.asUnlockedTooltips, _FORV_4_)
    end
  end
end


function loadingscreen.IsTooltipUnlocked(_ARG_0_)
  local sToolTip = "TOOLTIP_" .. _ARG_0_
  return Blackboard.GetProp("GAME_PROGRESS", sToolTip)
end


function loadingscreen.UnlockTooltip(_ARG_0_)
    
  local bUnlocked = false
  local sToolTip = "TOOLTIP_" .. _ARG_0_
  local bProgress = Blackboard.GetProp("GAME_PROGRESS", sToolTip)
  if bProgress ~= true then
    Blackboard.SetProp("GAME_PROGRESS", sToolTip, "b", true)
    table.insert(loadingscreen.asUnlockedTooltips, _ARG_0_)
    bUnlocked = true
  end
  
  return bUnlocked
end


function loadingscreen.GetRandomTooltip()
  local sTooltip = ""
  
  if #loadingscreen.asUnlockedTooltips > 0 then
    local i = math.random(#loadingscreen.asUnlockedTooltips)
    sTooltip = loadingscreen.asUnlockedTooltips[i]
  end
  
  return sTooltip
end


loadingscreen.sImageTexturePreffix = "gui/textures/Load"
loadingscreen.tCutscenesImages = {}
loadingscreen.tScenarioDefaultImages = {}
loadingscreen.tScenarioInBossImages = {}






















function loadingscreen.Create(_ARG_0_)
    
    
  loadingscreen.oGUIRoot = GUI.CreateDisplayObjectEx("LoadingScreen", "CDisplayObjectContainer", {})
  
  local oComposition = GUI.CreateMSCPInstanceEx("LoadScreenComposition")
  
  oComposition.Enabled = false
  oComposition.Focusable = false
  oComposition:SetSortKeyOverride(-20000, true)
  oComposition:SetSceneIdx(3)
  loadingscreen.oGUIRoot:AddChild(oComposition)
  loadingscreen.UpdateUnlockedTooltips()
  
  return loadingscreen.oGUIRoot
end


function loadingscreen.ReleaseImage()




end


function loadingscreen.SetImage(_ARG_0_)








end


function loadingscreen.SetTooltip(_ARG_0_)










end


function loadingscreen.SetText(_ARG_0_)


end


function loadingscreen.SetNextLoadingScreenText(_ARG_0_)

end


function loadingscreen.SetScenarioLoadingScreen(_ARG_0_)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  loadingscreen.ShowLoadingScreen()
end


function loadingscreen.SetIngameStartButtonEnabled(_ARG_0_)

end


function loadingscreen.ShowLoadingScreen()
  local oChild = loadingscreen.oGUIRoot:FindChild("loadscreencomposition")
  
  oChild.Enabled = true
  oChild:ForceRedraw()
  
  oChild:ChangeSkinStateWithStrId("RotateClockwise")
  oChild:ChangeSkinStateWithStrId("RotateCounterclockwise")
  oChild:ChangeSkinStateWithStrId("RotateCounterClockwiseFast")
  oChild:ChangeSkinStateWithStrId("OnLoading")
  
  loadingscreen.oGUIRoot:ForceRedraw()
end



function loadingscreen.HideLoadingScreen()
  local oChild = loadingscreen.oGUIRoot:FindChild("loadscreencomposition")
  
  oChild.Enabled = false
  oChild:ForceRedraw()
  
  oChild:ChangeSkinStateWithStrId("Default")
  
  loadingscreen.oGUIRoot:ForceRedraw()
end


function loadingscreen.OnLoadScenarioRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)

    
  loadingscreen.SetScenarioLoadingScreen(_ARG_1_)
end


function loadingscreen.OnNewScenarioLoaded(_ARG_0_, _ARG_1_, _ARG_2_)
    
    
end


function loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
  loadingscreen.ShowLoadingScreen()
  Game.SetLoadingScreen(true)
end


function loadingscreen.HideCutsceneLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end


function loadingscreen.SetMainMenuLoadingScreen()
  loadingscreen.ShowLoadingScreen()
  Game.SetLoadingScreen(true)
end


function loadingscreen.HideMainMenuLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end


function loadingscreen.OnCutsceneLoadingRequest(_ARG_0_)
    
    
  loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
end


function loadingscreen.OnCutsceneRequestProcessed()
    
    
  loadingscreen.HideCutsceneLoadingScreen()
end


function loadingscreen.OnCutsceneLoadingStarts(_ARG_0_)
  loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
end


function loadingscreen.OnCutsceneLoaded()
  loadingscreen.HideCutsceneLoadingScreen()
end
