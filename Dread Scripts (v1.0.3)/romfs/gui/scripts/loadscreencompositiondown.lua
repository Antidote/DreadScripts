LoadScreenCompositionDown = LoadScreenCompositionDown or {}



function LoadScreenCompositionDown.Create(_ARG_0_, _ARG_1_)
    local oCompo = LoadScreenCompositionDown.CreateLoadScreenCompositionDown(_ARG_0_, _ARG_1_)
  
    
    
    return oCompo
end




function LoadScreenCompositionDown.CreateLoadScreenCompositionDown(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("BackgroundBot", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "1.00000", SizeY = "1.00000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.34000", ColorG = "0.57000", ColorB = "0.84000", ColorA = "1.00000", Enabled = true, Autosize = false, SpriteSheetItem = "TextureHudOpaque/Background", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CircleBot", "CSprite", { X = "0.23750", Y = "0.15000", SizeX = "0.52500", SizeY = "0.70000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "0.50000", ColorB = "0.66000", ColorA = "1.00000", Enabled = true, Autosize = false, SpriteSheetItem = "TextureHudOpaque/Circle_Logo", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale"})
    oContainer:AddChild(oChild)
    
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end
