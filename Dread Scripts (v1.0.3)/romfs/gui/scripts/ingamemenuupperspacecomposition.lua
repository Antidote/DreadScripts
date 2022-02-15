IngameMenuUpperSpaceComposition = IngameMenuUpperSpaceComposition or {}



function IngameMenuUpperSpaceComposition.Create(_ARG_0_, _ARG_1_)
    
    
  
  local oComposition = IngameMenuUpperSpaceComposition.CreateIngameMenuUpperSpaceComposition(_ARG_0_, _ARG_1_)  
  return oComposition
end




function IngameMenuUpperSpaceComposition.CreateIngameMenuUpperSpaceComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = IngameMenuUpperSpaceComposition.CreateSpecialAbilitiesIconsComposition("SpecialAbilitiesIconsComposition", 
            {X = "0.00000", Y = "0.00000", SizeX = "0.18750", SizeY = "0.25000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    
    oChild = IngameMenuUpperSpaceComposition.CreateStatusComposition("StatusComposition",         { X = "0.18750", Y = "0.00000", SizeX = "1.01875", SizeY = "0.26667", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function IngameMenuUpperSpaceComposition.CreateSpecialAbilitiesIconsComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    oChild = GUI.CreateDisplayObjectEx("Background", "CSprite", 
    { X = "0.00000", Y = "0.00000", SizeX = "0.18750", SizeY = "0.25000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.14000", 
      ColorG = "0.14000", ColorB = "0.14000", ColorA = "0.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = IngameMenuUpperSpaceComposition.CreateAbilitySelectorComposition("AbilitiesSelector", 
           { X = "0.00000",  Y = "0.00833", SizeX = "0.16875", SizeY = "0.22500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function IngameMenuUpperSpaceComposition.CreateAbilitySelectorComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    oChild = GUI.CreateDisplayObjectEx("CancelTL", "CSprite", { X = "0.01563", Y = "0.03750", SizeX = "0.06875", SizeY = "0.09167", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Cancel12", BlendMode = "Additive",  USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CancelTR", "CSprite", 
            { X = "0.08438", Y = "0.03750", SizeX = "0.06875", SizeY = "0.09167", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", 
              Autosize = false, SpriteSheetItem = "Cancel12", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale"  })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CancelBL", "CSprite", { X = "0.01563", Y = "0.12917", SizeX = "0.06875", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000",FlipX = false, FlipY = true, Enabled = true,  SkinItemType = "", Autosize = false, SpriteSheetItem = "Cancel12", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("CancelBR", "CSprite", { X = "0.08438", Y = "0.12917", SizeX = "0.06875", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Cancel12", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreateScanningPulseComposition("ScanningPulse", { X = "0.03750", Y = "0.01667", SizeX = "0.08750", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreateEnergyShieldComposition("EnergyShield", { X = "0.00000", Y = "0.06667", SizeX = "0.08125", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreateEnergyWaveComposition("EnergyWave", { X = "0.10625", Y = "0.06667", SizeX = "0.08125", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreatePhaseDisplacementComposition("PhaseDisplacement", { X = "0.03750", Y = "0.15833", SizeX = "0.08750", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ClosureTL", "CSprite", { X = "0.02813", Y = "0.05417", SizeX = "0.01563", SizeY = "0.02083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Close", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ClosureTR", "CSprite", { X = "0.12500", Y = "0.05417", SizeX = "0.01562", SizeY = "0.02083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Close", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ClosureBL", "CSprite", { X = "0.02813", Y = "0.18334", SizeX = "0.01562", SizeY = "0.02083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX =  false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Close", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ClosureBR", "CSprite", { X = "0.12500", Y = "0.18334", SizeX = "0.01562", SizeY = "0.02083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Close", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
    oContainer:AddChild(oChild)
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateScanningPulseComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    oChild = GUI.CreateDisplayObjectEx("FX_Static", "CSprite", { X = "0.08750", Y = "0.00417", SizeX = "0.08125", SizeY = "0.07083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "1.57044", FlipX = false, FlipY = false,
                                                                 Enabled = true, SkinItemType = "", Autosize = true, SpriteSheetItem = "FX_Base", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FX_Dynamic", "CSprite", { X = "0.08750", Y = "0.00417", SizeX = "0.05312", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "1.56999", FlipX = false, FlipY = false,
                                                                  Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Frame", "CSprite", { X = "0.09375", Y = "0.00000", SizeX = "0.08125", SizeY = "0.12499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "1.57027", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Normal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Icon", "CSprite", { X = "0.02500", Y = "0.00417", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconS_ScanningPulse", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateEnergyShieldComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("FX_Static", "CSprite", { 
    X = "0.00313", Y = "0.00833", SizeX = "0.05312", SizeY = "0.10834", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = true, SpriteSheetItem = "FX_Base", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale"})
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FX_Dynamic", "CSprite", { X = "0.00313", Y = "0.00833", SizeX = "0.05312", SizeY = "0.10834", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Frame", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.08125", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Normal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Icon", "CSprite", { X = "0.00313", Y = "0.03333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconS_EnergyShield", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateEnergyWaveComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("FX_Static", "CSprite", { X = "0.00625", Y = "0.00834", SizeX = "0.05312", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = true, SpriteSheetItem = "FX_Base", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FX_Dynamic", "CSprite", { X = "0.00625", Y = "0.00834", SizeX = "0.05312", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Frame", "CSprite", { X = "-0.01875", Y = "-0.00000", SizeX = "0.08125", SizeY = "0.12500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Normal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Icon", "CSprite", { X = "0.01250", Y = "0.03333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconS_EnergyWave", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreatePhaseDisplacementComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil    
    
    oChild = GUI.CreateDisplayObjectEx("FX_Static", "CSprite", { X = "0.00625", Y = "0.07917", SizeX = "0.08125", SizeY = "0.07083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "-1.57044", FlipX = false, FlipY = false,Enabled = true, SkinItemType = "", Autosize = true, SpriteSheetItem = "FX_Base", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FX_Dynamic", "CSprite", { X = "0.00625", Y = "0.07917", SizeX = "0.05312", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "-1.56999", FlipX = false, FlipY = false,Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Frame", "CSprite", { X = "0.00000", Y = "0.08333", SizeX = "0.08125", SizeY = "0.12499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "-1.57027", FlipX = false, FlipY = false,
                                         Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonSpecialHabilities_Normal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Icon", "CSprite", { X = "0.02500", Y = "0.01667", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconS_PhaseDisplacement", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateStatusComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    
    oChild = IngameMenuUpperSpaceComposition.CreateUpperScreenHighlightComposition("UpperScreenHighlight", { X = "-0.03141", Y = "-0.21458", SizeX = "-0.03141", SizeY = "-0.21458", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("BackgroundOrnamentUpLeftLower", "CSprite", { X = "-0.20625", Y = "0.08750", SizeX = "0.49375", SizeY = "0.10000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Head_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("BackgroundOrnamentUpRightLower", "CSprite", { X = "0.28750", Y = "0.08750", SizeX = "0.49375", SizeY = "0.10000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Head_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("BackgroundOrnamentUpRightUpper", "CSprite", { X = "0.33125", Y = "-0.00416", SizeX = "0.49999", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Head_A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("BackgroundOrnamentUpLeftUpper", "CSprite", { X = "-0.25624", Y = "-0.00416", SizeX = "0.49999", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Head_A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreateEnergyTanksContainerComposition("EnergyTanksContainerComposition", { X = "0.09062", Y = "0.02083", SizeX = "0.29688", SizeY = "0.08750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("EnergyCounter", "CText", { X = "0.01250", Y = "0.00833", SizeX = "0.06876", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Text = "test", Font = "digital_big", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
    oContainer:AddChild(oChild)
    oChild = IngameMenuUpperSpaceComposition.CreateSpecialEnergyBarComponentsComposition("SpecialEnergyBarComponents", { X = "-0.01250", Y = "0.15833", SizeX = "0.52187", SizeY = "0.08333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ReserveTankE", "CSprite", { X = "0.38125", Y = "0.02083", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_E_Empty", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ReserveTankS", "CSprite", { X = "0.44375", Y = "0.02083", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_S_Empty", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("ReserveTankM", "CSprite", { X = "0.50625", Y = "0.02083", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_M_Empty", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("MissilesSelection", "CSprite", { X = "0.06250", Y = "0.09167", SizeX = "0.15001", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Weaponflare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SuperMissilesSelection", "CSprite", { X = "0.23125", Y = "0.09167", SizeX = "0.13125", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Weaponflare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("PowerBombsSelection", "CSprite", { X = "0.38125", Y = "0.09167", SizeX = "0.13126", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Weaponflare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGI_Missile", "CSprite", { X = "0.07500", Y = "0.10000", SizeX = "0.02501", SizeY = "0.04583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Missiles", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGC_Missile", "CText", { X = "0.10938", Y = "0.07917", SizeX = "0.10001", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "250", Font = "digital_hefty", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGI_SuperMissile", "CSprite", { X = "0.24375", Y = "0.10000", SizeX = "0.04063", SizeY = "0.04583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_SuperMissiles", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGC_SuperMissile", "CText", { X = "0.29375", Y = "0.07917", SizeX = "0.06564", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "50", Font = "digital_hefty", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGI_PowerBomb", "CSprite", { X = "0.39375", Y = "0.10000", SizeX = "0.03750", SizeY = "0.04583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_PowerBombs", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SGC_PowerBomb", "CText", { X = "0.44062", Y = "0.07917", SizeX = "0.06564", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "30", Font = "digital_hefty", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("EnergyFlare", "CSprite", { X = "-0.04688", Y = "-0.00833", SizeX = "0.48440", SizeY = "0.12498", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FlareReserveTankE", "CSprite", { X = "0.34687", Y = "0.00417", SizeX = "0.12501", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = false, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FlareReserveTankA", "CSprite", { X = "0.40937", Y = "0.00417", SizeX = "0.12501", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = false, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FlareReserveTankM", "CSprite", { X = "0.47187", Y = "0.00417", SizeX = "0.12501", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = false, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("FlareSE", "CSprite", { X = "0.02813", Y = "0.14167", SizeX = "0.53128", SizeY = "0.12498", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("MissilesFlare", "CSprite", { X = "0.05000", Y = "0.07917", SizeX = "0.17189", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SuperMissilesFlare", "CSprite", { X = "0.21563", Y = "0.07917", SizeX = "0.15626", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("PowerBombsFlare", "CSprite", { X = "0.36875", Y = "0.07917", SizeX = "0.15626", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_02", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateUpperScreenHighlightComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)   
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateEnergyTanksContainerComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("Tank7", "CSprite", { X = "0.15625", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank8", "CSprite", { X = "0.18438", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank6", "CSprite", { X = "0.12812", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank9", "CSprite", { X = "0.21250", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank10", "CSprite", { X = "0.24063", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank2", "CSprite", { X = "0.01563", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank3", "CSprite", { X = "0.04375", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank1", "CSprite", { X = "-0.01250", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank4", "CSprite", { X = "0.07187", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Tank5", "CSprite", { X = "0.10000", Y = "-0.01667", SizeX = "0.04376", SizeY = "0.08752", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function IngameMenuUpperSpaceComposition.CreateSpecialEnergyBarComponentsComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    
    oChild = GUI.CreateDisplayObjectEx("LineBarsLow_01", "CSprite", { X = "0.03125", Y = "0.02917", SizeX = "0.11250", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "LineBarsLow_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Max_Middle", "CSprite", { X = "0.08125", Y = "0.03333", SizeX = "0.43750", SizeY = "0.01666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.07000", ColorG = "0.25000", ColorB = "0.34000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("LineBarsLow_00", "CSprite", { X = "-0.00625", Y = "0.01250", SizeX = "0.04063", SizeY = "0.03750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "LineBarsLow_05", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("LineBarsLow_03", "CSprite", { X = "0.44063", Y = "0.05417", SizeX = "0.06562", SizeY = "0.03750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "LineBarsLow_03", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("LineBarsLow_02", "CSprite", { X = "0.14375", Y = "0.05417", SizeX = "0.29686", SizeY = "0.03750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "LineBarsLow_02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Previous_Left", "CSprite", { X = "0.06563", Y = "0.01667", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Previous_Middle", "CSprite", { X = "0.08125", Y = "0.01667", SizeX = "0.43748", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Previous_Right", "CSprite", { X = "0.51875", Y = "0.01668", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, ColorR = "1.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Current_Left", "CSprite", { X = "0.06563", Y = "0.01667", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Current_Middle", "CSprite", { X = "0.08125", Y = "0.01667", SizeX = "0.43748", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "1.00000", ColorG = "1.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_Current_Right", "CSprite", { X = "0.51875", Y = "0.01668", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, ColorR = "1.00000", ColorG = "1.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_01_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_SPH_Left", "CSprite", { X = "0.45937", Y = "0.01667", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_02_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_SPH_Right", "CSprite", { X = "0.51875", Y = "0.01668", SizeX = "0.01563", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_02_B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("SEB_SPH_Middle", "CSprite", { X = "0.47500", Y = "0.01667", SizeX = "0.04375", SizeY = "0.04999", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Bar_02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end
