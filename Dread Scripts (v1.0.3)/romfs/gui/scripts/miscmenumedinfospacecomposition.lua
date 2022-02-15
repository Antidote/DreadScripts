MiscMenuMedInfoSpaceComposition = MiscMenuMedInfoSpaceComposition or {}



function MiscMenuMedInfoSpaceComposition.Create(_ARG_0_, _ARG_1_)

    
    
    
    return (MiscMenuMedInfoSpaceComposition.CreateMiscMenuMedInfoSpaceComposition(_ARG_0_, _ARG_1_))
end




function MiscMenuMedInfoSpaceComposition.CreateMiscMenuMedInfoSpaceComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  
  oChild = GUI.CreateDisplayObjectEx("Label", "CLabel", { X = "0.01563", Y = "0.03750", SizeX = "0.59370", SizeY = "0.08333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "INFO_GOES_HERE", Font = "digital_medium", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end
