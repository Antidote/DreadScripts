Game.ImportLibrary("system/scripts/class.lua")
Game.ImportLibrary("gui/scripts/msemenu.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_common.lua", false)
msemenu_start = {}




function msemenu_start.Create(_ARG_0_)

  Game.InitSaveData()
  slots.RetrieveSlotsInfo(class.BindMethod(self, msemenu_start.OnSlotsInfoRetrieved))
  return nil
end

function msemenu_start.OnSaveDataInitialized(_ARG_0_)
end

function msemenu_start.OnSlotsInfoRetrieved()
  Game.AddSF(0.1, "msemenu_start.OnSlotsInfoRetrievedDelayed", "", "")
end

function msemenu_start.OnSlotsInfoRetrievedDelayed()

    
    
    
  if Game.IsSaveDataBusy() then
    Game.AddSF(0.1, "msemenu_start.OnSlotsInfoRetrievedDelayed", "", "")
  else
    
    if slots.tSlotInfo and slots.tSlotInfo.SLOT1 then
      if slots.tSlotInfo.SLOT1.bSlotEnabled then
        Game.LoadProfile(slots.tSlotDefs.SLOT1.sProfile, true)
      else
        Game.CreateProfile(slots.tSlotDefs.SLOT1.sProfile)
      end
    end
    
    GUI.ResetMainMenuDebugGUI("gui/scripts/msemenu_mainmenu.lua", "")
  end
end
