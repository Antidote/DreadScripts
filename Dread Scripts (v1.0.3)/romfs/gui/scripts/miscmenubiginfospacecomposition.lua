MiscMenuBigInfoSpaceComposition = MiscMenuBigInfoSpaceComposition or {}



function MiscMenuBigInfoSpaceComposition.Create(_ARG_0_, _ARG_1_)
    
    
    
    
  return (MiscMenuBigInfoSpaceComposition.CreateMiscMenuBigInfoSpaceComposition(_ARG_0_, _ARG_1_))
end




function MiscMenuBigInfoSpaceComposition.CreateMiscMenuBigInfoSpaceComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    
    oChild = GUI.CreateDisplayObjectEx("Label", "CLabel", { X = "0.02187", Y = "0.02917", SizeX = "0.76868", SizeY = "0.15000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "INFO_GOES_HERE", Font = "digital_medium", TextAlignment = "Centered", Autosize = true, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end
