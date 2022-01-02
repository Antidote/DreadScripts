MainMenuComposition = MainMenuComposition or {}



function MainMenuComposition.Create(_ARG_0_, _ARG_1_)

    
    
  local oCompo = MainMenuComposition.CreateMainMenuComposition(_ARG_0_, _ARG_1_)
  return oCompo
end

Game.ImportLibrary("gui/scripts/sprites_texturehud.lua")
Game.ImportLibrary("gui/scripts/sprites_texturehudopaque.lua", false)




function MainMenuComposition.CreateMainMenuComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("Background", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "1.00001", SizeY = "1.00006", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.34000", ColorG = "0.57000", ColorB = "0.84000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Background", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("CircleBackground", "CSprite", { X = "0.23750", Y = "0.15000", SizeX = "0.52498", SizeY = "0.69994", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Circle_Background_01", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateBotComposition("BotComposition", { X = "0.00000", Y = "0.87500", SizeX = "1.00313", SizeY = "0.17917", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateTopComposition("TopComposition", { X = "0.00000", Y = "0.00000", SizeX = "1.01563", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateMidComposition("MidComposition", { X = "0.00000", Y = "0.12500", SizeX = "0.99062", SizeY = "0.76667", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LabelDebug", "CLabel", { X = "0.43750", Y = "0.92083", SizeX = "0.56245", SizeY = "0.09167", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "0.55000", ColorB = "0.55000", ColorA = "1.00000", Enabled = false, SkinItemType = "", Text = "Press START -> Debug", Font = "digital_hefty", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("BackgroundLogo", "CSprite", { X = "0.23750", Y = "0.15000", SizeX = "0.52500", SizeY = "0.70004", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "1.00000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Circle_Logo", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateGalleryComposition("GalleryComposition", { X = "0.00000", Y = "0.12500", SizeX = "0.78125", SizeY = "0.50417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateIntroComposition("IntroComposition", { X = "0.06250", Y = "0.08333", SizeX = "0.89375", SizeY = "0.83333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreatePopUpBotComposition("PopUpBotComposition", { X = "0.00000", Y = "0.00000", SizeX = "0.87500", SizeY = "0.83333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("AmiiboReader", "CSprite", { X = "0.27500", Y = "0.18333", SizeX = "0.44997", SizeY = "0.57492", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.70000", ColorB = "0.80000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_AmiiboBig", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("Fade", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "1.00001", SizeY = "1.00006", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.00000", ColorG = "0.00000", ColorB = "0.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WhiteSquare", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateBotComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("StandardOrnamentBR", "CSprite", { X = "0.50000", Y = "0.00417", SizeX = "0.50000", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonStandardOrnament", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("StandardOrnamentBL", "CSprite", { X = "0.00000", Y = "0.00417", SizeX = "0.50000", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonStandardOrnament", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LabelInfoBig", "CLabel", { X = "0.24063", Y = "-0.00833", SizeX = "0.70932", SizeY = "0.15000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", MaxLinesPerPage = "2", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonOrnament", "CSprite", { X = "0.50000", Y = "0.01667", SizeX = "0.50000", SizeY = "0.03750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonDown_Line", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DescriptionOrnament01", "CSprite", { X = "0.00000", Y = "0.06250", SizeX = "0.19688", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonDescriptionOrnament_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DescriptionOrnament02", "CSprite", { X = "0.15625", Y = "-0.03750", SizeX = "0.34375", SizeY = "0.10000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonDescriptionOrnament_02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectBackBase", "CSprite", { X = "0.00000", Y = "0.01250", SizeX = "0.18751", SizeY = "0.09582", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectBackIconA", "CSprite", { X = "0.01250", Y = "0.03333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectBackIconB", "CSprite", { X = "0.07500", Y = "0.03333", SizeX = "0.05312", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconBack", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptBase", "CSprite", { X = "0.81250", Y = "0.01250", SizeX = "0.18750", SizeY = "0.09582", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptIconA", "CSprite", { X = "0.94063", Y = "0.03333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptIconB", "CSprite", { X = "0.87187", Y = "0.03333", SizeX = "0.05312", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconOK", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectCopyBase", "CSprite", { X = "0.14688", Y = "0.01667", SizeX = "0.35001", SizeY = "0.10416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterBig", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectEraseBase", "CSprite", { X = "0.50313", Y = "0.01667", SizeX = "0.35000", SizeY = "0.10416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterBig", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectCopyIcon", "CSprite", { X = "0.31250", Y = "0.02917", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Copy", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectEraseIcon", "CSprite", { X = "0.62500", Y = "0.02917", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Erase", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectDownBase", "CSprite", { X = "0.95937", Y = "0.05833", SizeX = "0.04063", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectUpBase", "CSprite", { X = "0.95937", Y = "-0.01250", SizeX = "0.04063", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectDownIconA", "CSprite", { X = "0.95625", Y = "0.05834", SizeX = "0.00313", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectUpIconB", "CSprite", { X = "0.96562", Y = "0.00000", SizeX = "0.02812", SizeY = "0.03749", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Arrow", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectDownIconB", "CSprite", { X = "0.96562", Y = "0.07500", SizeX = "0.02812", SizeY = "0.03750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Arrow", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectUpIconA", "CSprite", { X = "0.95625", Y = "-0.01250", SizeX = "0.00312", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MenuTextIndicator", "CSprite", { X = "0.95625", Y = "0.06250", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Arrow_Glow", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
    
    
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateTopComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = MainMenuComposition.CreateUpperButtonlessInfoComposition("UpperButtonlessInfoComposition", { X = "-0.01563", Y = "0.00833", SizeX = "1.01563", SizeY = "0.11250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("AmiiboTitle", "CSprite", { X = "0.37188", Y = "0.01250", SizeX = "0.25626", SizeY = "0.07915", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.70000", ColorG = "0.80000", ColorB = "0.90000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_AmiiboBigSmall", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("StandardOrnamentTR", "CSprite", { X = "0.50000", Y = "0.00000", SizeX = "0.50000", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonStandardOrnament", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("StandardOrnamentTL", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.50000", SizeY = "0.12083", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonStandardOrnament", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpLeftBase", "CSprite", { X = "0.00000", Y = "0.01667", SizeX = "0.18751", SizeY = "0.09583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpLeftIconA", "CSprite", { X = "0.00937", Y = "0.03333", SizeX = "0.05625", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "L", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpLeftIconB", "CSprite", { X = "0.08125", Y = "0.02917", SizeX = "0.04375", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "AmiiboMetroid", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpRightBase", "CSprite", { X = "0.81250", Y = "0.01667", SizeX = "0.18750", SizeY = "0.09583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonFooterCorner", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpRightIconA", "CSprite", { X = "0.93437", Y = "0.03333", SizeX = "0.05625", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "R", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAmiiboHelpRightIconB", "CSprite", { X = "0.87187", Y = "0.02917", SizeX = "0.04375", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "AmiiboReserveTank", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
    
    
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateUpperButtonlessInfoComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("HeaderLineDown", "CSprite", { X = "0.34687", Y = "0.06667", SizeX = "0.33751", SizeY = "0.04581", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineDown", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateTopButtonlessLeftComposition("TopButtonlessLeftComposition", { X = "0.00000", Y = "0.01667", SizeX = "0.51563", SizeY = "0.09583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateTopButtonlessRightComposition("TopButtonlessRightComposition", { X = "0.51563", Y = "0.01667", SizeX = "0.51563", SizeY = "0.09583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LabelTitle", "CLabel", { X = "0.20313", Y = "0.00000", SizeX = "0.62497", SizeY = "0.06667", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.80000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "TITLE_GOES_HERE", Font = "digital_hefty", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
    
    
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateTopButtonlessLeftComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("HeaderDown", "CSprite", { X = "0.34688", Y = "0.05000", SizeX = "0.16875", SizeY = "0.04583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineDown", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("HeaderDiagonal", "CSprite", { X = "0.28750", Y = "0.00000", SizeX = "0.05937", SizeY = "0.09583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineDiagonal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("HeaderUp", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.28750", SizeY = "0.04166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineUp", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
    
    
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateTopButtonlessRightComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("HeaderUp", "CSprite", { X = "0.22812", Y = "0.00000", SizeX = "0.28750", SizeY = "0.04166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineUp", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("HeaderDiagonal", "CSprite", { X = "0.16875", Y = "0.00000", SizeX = "0.05938", SizeY = "0.09582", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineDiagonal", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("HeaderDown", "CSprite", { X = "0.00000", Y = "0.05000", SizeX = "0.16875", SizeY = "0.04583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Header_LineDown", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateMidComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = MainMenuComposition.CreateButtonMenuHugeTopComposition("ButtonMenuHugeTopComposition", { X = "0.10938", Y = "-0.00417", SizeX = "0.87813", SizeY = "0.22500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuHugeMid", "CSprite", { X = "0.10938", Y = "0.21250", SizeX = "0.87812", SizeY = "0.00417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_SelectedMiddle_Alt", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuHugeBot", "CSprite", { X = "0.10938", Y = "0.21667", SizeX = "0.87812", SizeY = "0.03333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_SelectedDown_Alt", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("Label", "CLabel", { X = "0.03125", Y = "0.33333", SizeX = "0.93743", SizeY = "0.10000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "PRESS START", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("IconSamus", "CSprite", { X = "0.00625", Y = "0.12500", SizeX = "0.10312", SizeY = "0.12499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Samus", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LabelSlot", "CLabel", { X = "0.15313", Y = "0.25000", SizeX = "0.78744", SizeY = "0.25000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "Text goes here.", Font = "digital_medium", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateButtonMenuComposition("ButtonMenuComposition", { X = "0.00000", Y = "0.00000", SizeX = "0.99062", SizeY = "0.65000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateSlotComposition("ButtonMenuHuge1", { X = "0.10938", Y = "-0.00417", SizeX = "0.87813", SizeY = "0.25000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateSlotComposition("ButtonMenuHuge2", { X = "0.10938", Y = "0.24583", SizeX = "0.87813", SizeY = "0.25417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateSlotComposition("ButtonMenuHuge3", { X = "0.10938", Y = "0.49583", SizeX = "0.87813", SizeY = "0.25417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateControlsComposition("ControlsComposition", { X = "0.00000", Y = "0.00000", SizeX = "0.92500", SizeY = "0.75417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LabelInfo", "CLabel", { X = "0.12500", Y = "0.05417", SizeX = "0.74995", SizeY = "0.20834", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "Text goes here.", Font = "digital_medium", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateButtonMenuHugeTopComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuHugeTop", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.87812", SizeY = "0.21665", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_SelectedUp_Alt", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotTrama", "CSprite", { X = "0.01563", Y = "0.02083", SizeX = "0.52187", SizeY = "0.20832", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_Trama", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotFederation", "CSprite", { X = "0.01563", Y = "0.05417", SizeX = "0.12187", SizeY = "0.15416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Federation", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotID", "CLabel", { X = "0.04063", Y = "0.08750", SizeX = "0.06876", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "A", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotEnergy", "CLabel", { X = "0.13437", Y = "0.04583", SizeX = "0.06876", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "99", Font = "digital_big", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotMetroids", "CLabel", { X = "0.77187", Y = "0.04583", SizeX = "0.09376", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "40", Font = "digital_big", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotNewGame", "CLabel", { X = "0.13125", Y = "0.08750", SizeX = "0.60944", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_NEW_FILE", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotDifficulty", "CLabel", { X = "0.13437", Y = "0.12917", SizeX = "0.24376", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "NORMAL", Font = "digital_hefty", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotTime", "CLabel", { X = "0.59062", Y = "0.12917", SizeX = "0.25004", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "23:05:46", Font = "digital_hefty", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotIcon", "CSprite", { X = "0.70000", Y = "0.04167", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Metroid_Color", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotCompletion", "CLabel", { X = "0.39063", Y = "0.12917", SizeX = "0.18751", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "100%", Font = "digital_hefty", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateEnergyTanksContainerComposition("EnergyTanksContainerComposition", { X = "0.21250", Y = "0.05833", SizeX = "0.29688", SizeY = "0.08750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankE", "CSprite", { X = "0.50313", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_E_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankS", "CSprite", { X = "0.56563", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_S_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankM", "CSprite", { X = "0.62813", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_M_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateEnergyTanksContainerComposition(_ARG_0_, _ARG_1_)
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


function MainMenuComposition.CreateButtonMenuComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig4Base", "CSprite", { X = "0.20625", Y = "0.53333", SizeX = "0.58438", SizeY = "0.17499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig3Base", "CSprite", { X = "0.20625", Y = "0.37500", SizeX = "0.58438", SizeY = "0.17499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig2Base", "CSprite", { X = "0.20625", Y = "0.21667", SizeX = "0.58438", SizeY = "0.17499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig1Base", "CSprite", { X = "0.20625", Y = "0.05833", SizeX = "0.58438", SizeY = "0.17499", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig4Label", "CLabel", { X = "0.24688", Y = "0.57500", SizeX = "0.49998", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Text = "test", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig3Label", "CLabel", { X = "0.24688", Y = "0.41667", SizeX = "0.49998", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Text = "test", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig2Label", "CLabel", { X = "0.24688", Y = "0.25833", SizeX = "0.49998", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Text = "test", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonMenuBig1Label", "CLabel", { X = "0.24688", Y = "0.10000", SizeX = "0.49998", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Text = "test", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SelectionHighlightBot", "CSprite", { X = "0.00625", Y = "0.20833", SizeX = "0.99064", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_SelectLinesDown", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SelectionHighlightTop", "CSprite", { X = "0.00625", Y = "0.12500", SizeX = "0.99065", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Button_SelectLinesDown", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateSlotComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("Background", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.87811", SizeY = "0.25417", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_Normal", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotTrama", "CSprite", { X = "0.01563", Y = "0.02083", SizeX = "0.52187", SizeY = "0.20832", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonInfo_Trama", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotFederation", "CSprite", { X = "0.01563", Y = "0.05417", SizeX = "0.12187", SizeY = "0.15416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Federation", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotID", "CLabel", { X = "0.04063", Y = "0.08750", SizeX = "0.06876", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "A", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotEnergy", "CLabel", { X = "0.13437", Y = "0.04583", SizeX = "0.06876", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "99", Font = "digital_big", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotMetroids", "CLabel", { X = "0.77187", Y = "0.04583", SizeX = "0.09376", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "40", Font = "digital_big", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotNewGame", "CLabel", { X = "0.13125", Y = "0.08750", SizeX = "0.60944", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_NEW_FILE", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotDifficulty", "CLabel", { X = "0.13437", Y = "0.12917", SizeX = "0.24379", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "NORMAL", Font = "digital_hefty", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotTime", "CLabel", { X = "0.59062", Y = "0.12917", SizeX = "0.25004", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "23:05:46", Font = "digital_hefty", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotIcon", "CSprite", { X = "0.70000", Y = "0.04167", SizeX = "0.06250", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_Metroid_Color", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("SlotCompletion", "CLabel", { X = "0.39063", Y = "0.12917", SizeX = "0.18751", SizeY = "0.09166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.76000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "100%", Font = "digital_hefty", TextAlignment = "Right", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = MainMenuComposition.CreateEnergyTanksContainerComposition("EnergyTanksContainerComposition", { X = "0.21250", Y = "0.05833", SizeX = "0.29688", SizeY = "0.08750", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankE", "CSprite", { X = "0.50313", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_E_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankS", "CSprite", { X = "0.56563", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_S_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ReserveTankM", "CSprite", { X = "0.62813", Y = "0.05833", SizeX = "0.05312", SizeY = "0.05416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ReseveTank_M_Empty_BN", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateControlsComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("WindowTop5", "CSprite", { X = "0.03750", Y = "0.59583", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot5", "CSprite", { X = "0.03750", Y = "0.66250", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid5", "CSprite", { X = "0.03750", Y = "0.60000", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop4", "CSprite", { X = "0.03750", Y = "0.45000", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot4", "CSprite", { X = "0.03750", Y = "0.51667", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid4", "CSprite", { X = "0.03750", Y = "0.45417", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("N3Ds", "CSprite", { X = "0.55312", Y = "-0.01250", SizeX = "0.37189", SizeY = "0.30413", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.20000", ColorG = "0.82000", ColorB = "0.92000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "N3Ds", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("B", "CSprite", { X = "0.06250", Y = "0.62917", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("YText", "CLabel", { X = "0.13437", Y = "0.45000", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_SHOOT", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("BText", "CLabel", { X = "0.13437", Y = "0.59583", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_JUMP", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLA2", "CSprite", { X = "0.09375", Y = "0.70417", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLB2", "CSprite", { X = "0.20313", Y = "0.70417", SizeX = "0.15624", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLC2", "CSprite", { X = "0.35938", Y = "0.70417", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop3", "CSprite", { X = "0.03750", Y = "0.30417", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot3", "CSprite", { X = "0.03750", Y = "0.37083", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid3", "CSprite", { X = "0.03750", Y = "0.30833", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LText", "CLabel", { X = "0.13437", Y = "0.30417", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_FREE_AIM", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("Y", "CSprite", { X = "0.06250", Y = "0.48333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Y", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("L", "CSprite", { X = "0.05937", Y = "0.33750", SizeX = "0.05625", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "L", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop2", "CSprite", { X = "0.03750", Y = "0.15833", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot2", "CSprite", { X = "0.03750", Y = "0.22500", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid2", "CSprite", { X = "0.03750", Y = "0.16250", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("DText", "CLabel", { X = "0.13437", Y = "0.15833", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_SELECT_SPECIAL_ABILITY", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("D", "CSprite", { X = "0.06250", Y = "0.19167", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "D", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop1", "CSprite", { X = "0.03750", Y = "0.01250", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot1", "CSprite", { X = "0.03750", Y = "0.07917", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid1", "CSprite", { X = "0.03750", Y = "0.01667", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LSText", "CLabel", { X = "0.13437", Y = "0.01250", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_MOVE", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LS", "CSprite", { X = "0.06250", Y = "0.04583", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "LS", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLA1", "CSprite", { X = "0.09375", Y = "-0.00833", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLB1", "CSprite", { X = "0.20313", Y = "-0.00833", SizeX = "0.15624", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLC1", "CSprite", { X = "0.35938", Y = "-0.00833", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop8", "CSprite", { X = "0.51875", Y = "0.59583", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot8", "CSprite", { X = "0.51875", Y = "0.66250", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid8", "CSprite", { X = "0.51875", Y = "0.60000", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("A", "CSprite", { X = "0.54375", Y = "0.62917", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("AText", "CLabel", { X = "0.61562", Y = "0.59583", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_USE_SPECIAL_ABILITY", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLA4", "CSprite", { X = "0.57500", Y = "0.70417", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLB4", "CSprite", { X = "0.68437", Y = "0.70417", SizeX = "0.15624", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLC4", "CSprite", { X = "0.84063", Y = "0.70417", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop7", "CSprite", { X = "0.51875", Y = "0.45000", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot7", "CSprite", { X = "0.51875", Y = "0.51667", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid7", "CSprite", { X = "0.51875", Y = "0.45417", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("XText", "CLabel", { X = "0.61562", Y = "0.45000", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_MELEE_ACTION", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("X", "CSprite", { X = "0.54375", Y = "0.48333", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "X", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowTop6", "CSprite", { X = "0.51875", Y = "0.30417", SizeX = "0.44373", SizeY = "0.00416", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02A", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowBot6", "CSprite", { X = "0.51875", Y = "0.37083", SizeX = "0.44373", SizeY = "0.06666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02B", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("WindowMid6", "CSprite", { X = "0.51875", Y = "0.30833", SizeX = "0.44373", SizeY = "0.06249", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "WindowControls_02C", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("RText", "CLabel", { X = "0.61562", Y = "0.30417", SizeX = "0.34685", SizeY = "0.13333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "#GUI_CONTROLS_MISSILE_MODE", Font = "digital_medium", TextAlignment = "Left", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLA3", "CSprite", { X = "0.57500", Y = "0.28333", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLB3", "CSprite", { X = "0.68437", Y = "0.28333", SizeX = "0.15624", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_B", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("LWLC3", "CSprite", { X = "0.84063", Y = "0.28333", SizeX = "0.10937", SizeY = "0.05000", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, ColorR = "0.50000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "0.50000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "legend_window_line_A", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("R", "CSprite", { X = "0.54063", Y = "0.33750", SizeX = "0.05625", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.60000", ColorG = "0.60000", ColorB = "0.60000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "R", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateGalleryComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("GalleryLabel", "CLabel", { X = "0.34375", Y = "0.33750", SizeX = "0.31249", SizeY = "0.12501", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "0 / 0", Font = "digital_big", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowLeftBase", "CSprite", { X = "0.10938", Y = "0.12500", SizeX = "0.21563", SizeY = "0.50419", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Hook", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowRightBase", "CSprite", { X = "0.67500", Y = "0.12500", SizeX = "0.21562", SizeY = "0.50419", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Hook", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowRight", "CSprite", { X = "0.76563", Y = "0.32083", SizeX = "0.07813", SizeY = "0.11251", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Arrow_Button", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowLeft", "CSprite", { X = "0.15625", Y = "0.32083", SizeX = "0.07813", SizeY = "0.11251", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Arrow_Button", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowRightHighlight", "CSprite", { X = "0.76563", Y = "0.32083", SizeX = "0.07813", SizeY = "0.11251", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Arrow_Button_Highlight", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ArrowLeftHighlight", "CSprite", { X = "0.15625", Y = "0.32083", SizeX = "0.07813", SizeY = "0.11251", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Arrow_Button_Highlight", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
    
    
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreateIntroComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("IntroLabel", "CLabel", { X = "0.00000", Y = "0.00000", SizeX = "0.87495", SizeY = "0.83334", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.68000", ColorG = "0.83000", ColorB = "0.93000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "Text goes here.", Font = "digital_hefty", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("MenuTextIndicator", "CSprite", { X = "0.87500", Y = "0.75000", SizeX = "0.01875", SizeY = "0.02500", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "MenuTextIndicator", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function MainMenuComposition.CreatePopUpBotComposition(_ARG_0_, _ARG_1_)
  local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
  local oChild = nil
  
  oChild = GUI.CreateDisplayObjectEx("PopUpTL", "CSprite", { X = "0.06250", Y = "0.08333", SizeX = "0.08124", SizeY = "0.10832", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box04", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpTR", "CSprite", { X = "0.85625", Y = "0.08333", SizeX = "0.08124", SizeY = "0.10832", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box05", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpT", "CSprite", { X = "0.14375", Y = "0.08333", SizeX = "0.71246", SizeY = "0.10832", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpBL", "CSprite", { X = "0.06250", Y = "0.80834", SizeX = "0.08125", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box05", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpBR", "CSprite", { X = "0.85625", Y = "0.80833", SizeX = "0.08125", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box03", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpB", "CSprite", { X = "0.14375", Y = "0.80834", SizeX = "0.71250", SizeY = "0.10833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = true, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box02", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpM", "CSprite", { X = "0.14375", Y = "0.19167", SizeX = "0.71251", SizeY = "0.61663", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpR", "CSprite", { X = "0.85625", Y = "0.19167", SizeX = "0.08125", SizeY = "0.61666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = true, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box06", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpL", "CSprite", { X = "0.06250", Y = "0.19167", SizeX = "0.08124", SizeY = "0.61666", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "BotScreen_Box06", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("PopUpMessage", "CLabel", { X = "0.10938", Y = "0.17083", SizeX = "0.78120", SizeY = "0.64166", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, ColorR = "0.80000", ColorG = "0.90000", ColorB = "1.00000", ColorA = "1.00000", Enabled = true, SkinItemType = "", Text = "Text goes here.", Font = "digital_medium", TextAlignment = "Centered", Autosize = false, Outline = false, EmbeddedSpritesSuffix = "", BlinkColorR = "1.00000", BlinkColorG = "1.00000", BlinkColorB = "1.00000", BlinkAlpha = "1.00000", Blink = "-1.00000" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptBase", "CSprite", { X = "0.74375", Y = "0.80833", SizeX = "0.19063", SizeY = "0.10415", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonUpWindow", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptIconA", "CSprite", { X = "0.87500", Y = "0.84167", SizeX = "0.04687", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "A_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  oChild = GUI.CreateDisplayObjectEx("ButtonSelectAcceptIconB", "CSprite", { X = "0.80625", Y = "0.83750", SizeX = "0.05312", SizeY = "0.06250", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "IconOK_01", BlendMode = "AlphaBlend", USelMode = "Scale", VSelMode = "Scale" })
  oContainer:AddChild(oChild)
  
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end
