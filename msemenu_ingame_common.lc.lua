Game.ImportLibrary("gui/scripts/msemenu_inventory.lua", false)
msemenu_ingame_common = {}






function msemenu_ingame_common.GetAllInventory()
    
  
  for L3_2, L4_2 in pairs(debuginventory) do
    Game.SetItemAmount(Game.GetPlayerName(), L3_2, L4_2.Default)
  end
  
  local oPlayer =  Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.MaxEnergy = Blackboard.GetProp( "PLAYER_INVENTORY", "ITEM_MAX_MAGIC") or 0
    oPlayer.MagicEnergy = oPlayer.MaxEnergy
  end
  
  if hud then
    hud.UpdatePlayerInfo(true)
  end
  
end


function msemenu_ingame_common.CleanAllInventory()
  
  for _FORV_3_, _FORV_4_ in pairs(debuginventory) do
    Game.SetItemAmount(Game.GetPlayerName(), _FORV_3_, -1)
  end
end
