IngameMenuLowerSpaceComposition = IngameMenuLowerSpaceComposition or {}



function IngameMenuLowerSpaceComposition.Create(_ARG_0_, _ARG_1_)
  
    
    
    local ret = IngameMenuLowerSpaceComposition.CreateIngameMenuLowerSpaceComposition(_ARG_0_, _ARG_1_)
    return ret;
end

Game.ImportLibrary("gui/scripts/sprites_texturehud.lua")



function IngameMenuLowerSpaceComposition.CreateIngameMenuLowerSpaceComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  oChild = GUI.CreateDisplayObjectEx("StandardOrnamentLowerBL", "CSprite", {X = "0.00000", Y = "0.00417", SizeX = "0.50000", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true,SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonStandardOrnament", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("BackgroundOrnamentDown", "CSprite", 
                                                 {X = "0.50000", Y = "0.00417", SizeX = "0.51875",SizeY = "0.12499",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false,Enabled = true,SkinItemType = "",Autosize = false,SpriteSheetItem = "ButtonDownOrnament_03",BlendMode = "AlphaBlend",USelMode = "Scale",VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = IngameMenuLowerSpaceComposition.CreateLowerInfoComposition("LowerInfoComposition", 
                                                                                  {X = "0.18750",Y = "0.00417",SizeX = "0.63438",SizeY = "0.12500",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectMiscBase", "CSprite", 
                                                 {X = "0.00000",Y = "0.01250",SizeX = "0.18751",SizeY = "0.09582",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false,Enabled = true,SkinItemType = "",Autosize = false,SpriteSheetItem = "ButtonFooterCorner",BlendMode = "AlphaBlend",USelMode = "Scale",VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectMiscIconA", "CSprite", {X = "0.03125",Y = "0.02500",SizeX = "0.07812",SizeY = "0.07916",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false,Enabled = true,SkinItemType = "",Autosize = false,SpriteSheetItem = "Icon_MapMenu",BlendMode = "Additive",USelMode = "Scale",VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function IngameMenuLowerSpaceComposition.CreateLowerInfoComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("DNACounter", "CText", {X = "0.07500", Y = "0.02500", SizeX = "0.04407", SizeY = "0.05833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "", Font = "digital_hefty", TextAlignment = "Left", Autosize = true, Outline = true, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MetroidCounter", "CText", {X = "0.50000", Y = "0.02500", SizeX = "0.04407", SizeY = "0.05833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "", Font = "digital_hefty", TextAlignment = "Left", Autosize = true, Outline = true, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DNAMechCounter", "CText", {X = "0.24688", Y = "0.02500", SizeX = "0.12499", SizeY = "0.05833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "10 / 10", Font = "digital_hefty", TextAlignment = "Left", Autosize = true, Outline = true, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("IconDNA", "CSprite", {X = "0.01875", Y = "0.03333", SizeX = "0.04687", SizeY = "0.07500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_MetroidDNACount", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MetroidRadar", "CSprite", {X = "0.42812", Y = "0.02917", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Metroid_Base", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MetroidRadarColor", "CSprite", {X = "0.42812", Y = "0.02917", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Metroid_Color", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MetroidRadarWhite", "CSprite", {X = "0.42812", Y = "0.02917", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Metroid_Highlight", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DNAMechIcon", "CSprite", {X = "0.17188", Y = "0.02500", SizeX = "0.06562", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconL_MetroidDNAData", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DNAFlare", "CSprite", {X = "-0.02813", Y = "0.00833", SizeX = "0.18751", SizeY = "0.12498", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MechFlare", "CSprite", {X = "0.11250", Y = "0.00833", SizeX = "0.31251", SizeY = "0.12498", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MetroidFlare", "CSprite", {X = "0.39063", Y = "0.00833", SizeX = "0.21564", SizeY = "0.12498", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Flare_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale"})
  oContainer:AddChild(oChild)
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end
