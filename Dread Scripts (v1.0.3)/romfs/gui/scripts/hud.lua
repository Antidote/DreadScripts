hud = {oHUDRoot = nil, iContinuousDamageCount = 0}

Game.ImportLibrary("gui/scripts/scenariomenu_game.lua", false)

hud_settings = hud_settings or {}

hud.sDefaultTutorialFont = "digital_hefty"







function hud.Create(_ARG_0_)
  hud.bIngameMinimapEnabledOverride = nil
  
  hud.bBossHUDEnabled = false
  
  hud.oHUDRoot = GUI.GetDisplayObject("IngameMenuRoot.BasicHUDComposition")
  return hud.oHUDRoot
end
