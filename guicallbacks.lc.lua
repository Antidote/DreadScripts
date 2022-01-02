Game.ImportLibraryWithName("system/scripts/logiccallbacks.lua", "logiccallbacks")

guicallbacks = {
    bAudioModified = false, 
    OnASyncLoadProfileFinishedCallback = nil
}






function guicallbacks.GoToStateItemSpecialAbilities()
  Game.PlayCurrentEnvironmentMusic()
  Game.GoToStateItemSpecialAbilities()
end


function guicallbacks.GoToStateItemStatus()
  Game.GoToStateItemStatus()
end


function guicallbacks.OnPickableItemPickedUp(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    GUI.LaunchMessageAbilityAdquired(_ARG_0_, "guicallbacks.GoToStateItemSpecialAbilities")
  else
    GUI.LaunchMessagePowerUpAdquired(_ARG_0_, "guicallbacks.GoToStateItemStatus")
  end
end


function guicallbacks.OnScanningPulsePickedUp()
  GUI.LaunchMessageSequence(4)
end


function guicallbacks.OnAbilityActivatedChanged(_ARG_0_, _ARG_1_)
  if hud then
    hud.OnPlayerAbilityActivatedChanged(_ARG_1_)
  end
end


function guicallbacks.OnPlayerFailedToSelectAbility(_ARG_0_)
  if hud then
    hud.OnPlayerFailedToSelectAbility(_ARG_0_)
  end
end


function guicallbacks.OnPlayerFailedToActivateAbility(_ARG_0_, _ARG_1_)
  if hud then
    hud.OnPlayerFailedToActivateAbility(_ARG_0_, _ARG_1_)
  end
end


function guicallbacks.OnMinimapCellVisited(_ARG_0_, _ARG_1_, _ARG_2_)
  if minimap then
      
  end
end




function guicallbacks.OnLoadScenarioRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if loadingscreen then
    loadingscreen.OnLoadScenarioRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  end
  
  if minimap then
      
  end
end


function guicallbacks.OnTeleporterUse(_ARG_0_)
end


function guicallbacks.OnPlayerContinuousDamageStart()
  if hud then
    hud.OnContinuousDamageStart()
  end
end


function guicallbacks.OnPlayerContinuousDamageEnd()
  if hud then
    hud.OnContinuousDamageEnd()
  end
end


function guicallbacks.OnFakeDeadFinished(_ARG_0_)
end


function guicallbacks.OnNewPlayerCreated(_ARG_0_, _ARG_1_)
  if hud then
    hud.OnNewPlayerCreated(_ARG_0_, _ARG_1_)
  end
  
  if WeaponSelector then
    WeaponSelector.OnNewPlayerCreated(_ARG_0_, _ARG_1_)
  end
end


function guicallbacks.OnProgressionDefItemAdded(_ARG_0_)
end


function guicallbacks.OnEnemyDefeated(_ARG_0_, _ARG_1_)
end


function guicallbacks.OnSpecialControlEnabled(_ARG_0_)
end


function guicallbacks.OnASyncLoadProfileFinished(_ARG_0_, _ARG_1_)
  if guicallbacks.OnASyncLoadProfileFinishedCallback then
    guicallbacks.OnASyncLoadProfileFinishedCallback.oCallback(guicallbacks.OnASyncLoadProfileFinishedCallback.sItemName, guicallbacks.OnASyncLoadProfileFinishedCallback.fActivate)
  end
end


function guicallbacks.OnTeleporterUndisclosed(_ARG_0_, _ARG_1_)
end


function guicallbacks.OnTravelBookOpened()
end


function guicallbacks.OnTravelBookClosed()
end


function guicallbacks.OnMessageWindowOpened()
end


function guicallbacks.OnMessageWindowClosed()
end


function guicallbacks.OnMinimapCustomMarkCreated(_ARG_0_)
end


function guicallbacks.OnMinimapCustomMarkDestroyed(_ARG_0_)
end


function guicallbacks.OnCurrentScenarioChanged(_ARG_0_)
  if hud then
      hud.OnCurrentScenarioChanged(_ARG_0_)
  end
end


function guicallbacks.OnCurrentMinimapStateUpdated()
    
end


function guicallbacks.OnProgressionDefItemReviewed()
  if hud then
    hud.OnProgressionDefItemReviewed()
  end
end


function guicallbacks.OnSheetItemReviewed()
  if hud then
    hud.OnSheetItemReviewed()
  end
end


function guicallbacks.OnCreatureItemReviewed()
  if hud then
    hud.OnCreatureItemReviewed()
  end
end


function guicallbacks.OnASyncOpIOError(_ARG_0_, _ARG_1_)
    
    
    
    
  if menu_root ~= nil then      
    menu_root.PopAllPopUps()
  end
  
  slots.SetAllDirty()
end


function guicallbacks.OnPadDisconnected(_ARG_0_)   
end


function guicallbacks.OnPadReconnected(_ARG_0_)
end


function guicallbacks.OnPurchased()
end
