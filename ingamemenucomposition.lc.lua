Game.ImportLibrary("gui/scripts/sprites_texturehud.lua")
Game.ImportLibrary("gui/scripts/sprites_texturehudopaque.lua")
Game.ImportLibrary("gui/scripts/hud.lua", false)
IngameMenuComposition = IngameMenuComposition or {}




function IngameMenuComposition.Create(_ARG_0_, _ARG_1_)

    
    
    local oCompo = IngameMenuComposition.CreateIngameMenuComposition(_ARG_0_, _ARG_1_)
    return oCompo
end




function IngameMenuComposition.CreateIngameMenuComposition(_ARG_0_, _ARG_1_)
  local oHud = GUI.CreateDisplayObjectEx(_ARG_0_, "CHUD", {})
  
  GUI.SetHierarchyProperties(oHud, _ARG_1_)
  
  return oHud
end
