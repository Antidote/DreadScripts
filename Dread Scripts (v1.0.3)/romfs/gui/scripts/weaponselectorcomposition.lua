WeaponSelectorComposition = WeaponSelectorComposition or {}



function WeaponSelectorComposition.Create(_ARG_0_, _ARG_1_)
    
    
    
    local oCompo = WeaponSelectorComposition.CreateWeaponSelectorComposition(_ARG_0_, _ARG_1_)
    return oCompo
end




function WeaponSelectorComposition.CreateWeaponSelectorComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    oChild = WeaponSelectorComposition.CreateSamusWeaponsComposition("SamusWeapons", 
             {X = "0.00313", Y = "0.04583", SizeX = "0.21250", SizeY = "0.59583", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
    oChild = WeaponSelectorComposition.CreateMorphWeaponsComposition("MorphWeapons", 
            { X = "0.00313", Y = "0.67083", SizeX = "0.21250", SizeY = "0.28333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false })
    oContainer:AddChild(oChild)
  
  GUI.SetHierarchyProperties(oContainer, _ARG_1_)
  return oContainer
end


function WeaponSelectorComposition.CreateSamusWeaponsComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("Weapon4Base", "CSprite", {X = "0.00000",Y = "0.00000",SizeX = "0.21250",SizeY = "0.59583",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false,Enabled = true,SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonHexagonBoost_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon4Icon", "CSprite", { X = "0.02813", Y = "0.19167", SizeX = "0.15625", SizeY = "0.20833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_WeaponBoostBeam", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon1Base", "CSprite", {X = "0.00000",Y = "0.00000",SizeX = "0.21250",SizeY = "0.28333",ScaleX = "1.00000",ScaleY = "1.00000",Angle = "0.00000",FlipX = false,FlipY = false,Enabled = true,SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonHexagonBig_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon2Base", "CSprite", { X = "0.00000", Y = "0.31250", SizeX = "0.21250", SizeY = "0.28333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonHexagonBig_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon1Icon", "CSprite", { X = "0.02813", Y = "0.03750", SizeX = "0.15625", SizeY = "0.20833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_PowerBeam", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon2Icon", "CSprite", { X = "0.02813", Y = "0.35000", SizeX = "0.15625", SizeY = "0.20833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_PowerBeam", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    
    
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return oContainer
end


function WeaponSelectorComposition.CreateMorphWeaponsComposition(_ARG_0_, _ARG_1_)
    local oContainer = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {})
    local oChild = nil
    
    oChild = GUI.CreateDisplayObjectEx("Weapon3Base", "CSprite", { X = "0.00000", Y = "0.00000", SizeX = "0.21250", SizeY = "0.28333", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, 
                                                                   Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "ButtonHexagonBig_Selected", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    oChild = GUI.CreateDisplayObjectEx("Weapon3Icon", "CSprite", { X = "0.02813", Y = "0.03750", SizeX = "0.15625", SizeY = "0.20833", ScaleX = "1.00000", ScaleY = "1.00000", Angle = "0.00000", FlipX = false, FlipY = false, 
                                                                   Enabled = true, SkinItemType = "", Autosize = false, SpriteSheetItem = "Icon_PowerBeam", BlendMode = "Additive", USelMode = "Scale", VSelMode = "Scale" })
    oContainer:AddChild(oChild)
    GUI.SetHierarchyProperties(oContainer, _ARG_1_)
    return (oContainer)
end
