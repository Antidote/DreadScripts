LoadScreenComposition = LoadScreenComposition or {}



function LoadScreenComposition.Create(_ARG_0_, _ARG_1_)
    local oCompo = LoadScreenComposition.CreateLoadScreenComposition(_ARG_0_, _ARG_1_)
    
    
    
    return oCompo
end




function LoadScreenComposition.CreateLoadScreenComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("Background", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "1.00000", SizeY = "1.00000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, Autosize = false, SpriteSheetItem = "global/WhiteSquare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CircleA", "CSprite", { X = "0.82500", Y = "0.70833", SizeX = "0.16000", SizeY = "0.26666", ScaleX = "0.00000", ScaleY = "0.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.9000", ColorG = "0.15000", ColorB = "0.15000", ColorA = "1.00000", Enabled = true, Autosize = false, SpriteSheetItem = "TextureHudOpaque/circle_InnerAndOuter", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CircleB", "CSprite", { X = "0.48", Y = "0.8", SizeX = "0.16000", SizeY = "0.26666", ScaleX = "0.250000", ScaleY = "0.250000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.9000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, Autosize = false, SpriteSheetItem = "TextureHudOpaque/circle_central", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end
