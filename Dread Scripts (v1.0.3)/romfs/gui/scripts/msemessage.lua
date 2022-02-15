Game.ImportLibrary("gui/scripts/gui_global_constants.lua", false)
msemessage = {
  oRoot = nil,
  oRootFPS = nil,
  oMessageFPS = nil,
  oMessageVersion = nil,
  oMessageFreeCam = nil
}
function msemessage.Create(_ARG_0_)
    
  
    
  
    

  msemessage.oRoot = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", { StageID = "Up" })
  msemessage.oRootFPS = GUI.CreateDisplayObject(msemessage.oRoot, "FPS", "CDisplayObjectContainer", { StageID = "Up", ColorA = "0.0" })
  msemessage.oMessageFPS = GUI.CreateDisplayObject(msemessage.oRootFPS, "FPSLabel", "CLabel", { MinCharWidth = "14", RightX = "0.05", TopY = "0.9", Font = "digital_big" })
  
  GUI.SetProperties(msemessage.oMessageFPS, gui_global_colors.tFPS)
  GUI.SetLabelText(msemessage.oMessageFPS, "FPS")
  
  msemessage.oMessageVersion = GUI.CreateDisplayObject(msemessage.oRoot, "Version", "CLabel", { StageID = "Down", LeftX = "0.01", BottomY = "0.01" })
  GUI.SetProperties(msemessage.oMessageVersion, { ColorA = "0.4", Outline = true, Enabled = false })
  
  msemessage.oMessageFreeCam = GUI.CreateDisplayObject(msemessage.oRoot, "FreeCam", "CLabel", { LeftX = "0.05", BottomY = "0.11", Font = "digital_medium" })
  msemessage.oMemoryStats = GUI.CreateDisplayObject(msemessage.oRoot, "MemoryStats", "CText", { StageID = "Down", LeftX = "0.1", BottomY = "0.01", TextAlignment = "Left", Font = "digital_small" })
  return msemessage.oRoot
end


function msemessage.SetTextFreeCam(_ARG_0_)
  if _ARG_0_ ~= nil and msemessage.oMessageFreeCam ~= nil then
    GUI.SetLabelText(msemessage.oMessageFreeCam, _ARG_0_)
  end
end


function msemessage.SetTextVersion(_ARG_0_)
  if _ARG_0_ ~= nil and msemessage.oMessageVersion ~= nil then
    GUI.SetLabelText(msemessage.oMessageVersion, _ARG_0_)
    GUI.SetProperties(msemessage.oMessageVersion, { ColorR = "1.0", ColorG = "1.0", ColorB = "1.0" })
  end
end



function msemessage.SetTextVersionEnabled(_ARG_0_)
  GUI.SetProperties(msemessage.oMessageVersion, {Enabled = _ARG_0_})
end


function msemessage.SetMemoryStatsEnabled(_ARG_0_)
  GUI.SetProperties(msemessage.oMemoryStats, {Enabled = _ARG_0_})
end


function msemessage.SetMemoryStatsText(_ARG_0_)
  if _ARG_0_ ~= nil and msemessage.oMemoryStats ~= nil then
    GUI.SetLabelText(msemessage.oMemoryStats, _ARG_0_)
    GUI.SetProperties(msemessage.oMemoryStats, { ColorR = "1.0", ColorG = "1.0", ColorB = "1.0" })
  end
end


function msemessage.SetTextFPS(_ARG_0_)
  if _ARG_0_ ~= nil and msemessage.oMessageFPS ~= nil then
    GUI.SetLabelText(msemessage.oMessageFPS, _ARG_0_)
  end
end


function msemessage.ShowFPS(_ARG_0_)
  msemessage.SetTextFPS(_ARG_0_)
  
  if msemessage.oRootFPS ~= nil then
    GUI.SetProperties(msemessage.oRootFPS, { Enabled = true, FadeColorR = "-1.0", FadeColorG = "-1.0", FadeColorB = "-1.0", FadeColorA = "0.6", FadeTime = "0.5" })
  end
end


function msemessage.HideFPS(_ARG_0_)
  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  
  if msemessage.oRootFPS ~= nil then
    if _ARG_0_ == 0 then
      GUI.SetProperties(msemessage.oRootFPS, { Enabled = true, ColorA = "0.0", FadeTime = "0.0" })
    else
      GUI.SetProperties(msemessage.oRootFPS, { Enabled = true, FadeColorR = "-1.0", FadeColorG = "-1.0", FadeColorB = "-1.0", FadeColorA = "0.0", FadeTime = _ARG_0_ })
    end
  end
end
