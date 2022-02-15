SaveGame = SaveGame ~= nil and SaveGame or {}






function SaveGame.OnNoDeviceSelected()
    
end


function SaveGame.OnOverridePermissionNeeded()
    
end


function SaveGame.OnOverrideSelected()
    
end


function SaveGame.OnOverrideConfirmed()
  Game.CommitSaveDataDeviceSelection()
end


function SaveGame.OnOverrideCancel()
  Game.InitSaveData()
end


function SaveGame.OnDeviceChanged(_ARG_0_)
  if _ARG_0_ then
    if menu_root ~= nil then
        
        
        
        
        
        
        
        
        
    else
      SaveGame.SaveDataToNewDevice()
    end
  end
end


function SaveGame.SaveDataToNewDevice()
  Game.SaveDataToNewDevice()
end


function SaveGame.OnSaveDataToNewDeviceFinished()
    
end


function SaveGame.NotEnoughSpaceDeviceSelected(_ARG_0_)
  local L1_2 = Game.GetLiteral("#GUI_ERROR_SAVEDEVICESELECTEDFULL_NOOLDDEVICE")
  
  
  L1_2 = string.gsub(L1_2, "@%[$HDDFREESPACE%]", tostring(_ARG_0_))
end


function SaveGame.NotEnoughSpaceToCreateSlot(_ARG_0_)
  local L1_2 = Game.GetLiteral("#GUI_ERROR_SAVEDEVICESELECTEDFULL_USEOLDDEVICE")
  
  
  L1_2 = string.gsub(L1_2, "@%[$HDDFREESPACE%]", tostring(_ARG_0_))
end


function SaveGame.InvalidDeviceSelected()
    
end


function SaveGame.OnSaveDataDeviceInitFinished()
end


function SaveGame.OnContinueWithoutSavingConfirmed()
  Game.CommitSaveDataDeviceSelection()
end


function SaveGame.OnContinueWithoutSavingSelected()
    
end



function SaveGame.OnDeviceInvalidated(_ARG_0_)

















    
end
