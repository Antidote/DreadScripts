function PowerUpGravitySuit.main()
end
PowerUpGravitySuit.Self = nil




function PowerUpGravitySuit.OnPickedUp(self)
  Game.PlayEntitySoundContinueOnDead("generic/obtencion.wav", self.sName, 1, 500, 4000, 1)
  
  
  
  
  
  
  
  
  
  
  
  
  
  local oActor = Game.GetActor("cutsceneplayer_31")
  if  oActor ~= nil then
    self.MODELUPDATER.bWantsEnabled = false
    oActor.CUTSCENE:TryLaunchCutscene()
  end
  PowerUpGravitySuit.Self = self
end

function PowerUpGravitySuit.ShowMessage()
  if PowerUpGravitySuit.Self ~= nil then
    PowerUpGravitySuit.Self.PICKABLE:OnItemEnd()
    Game.SaveGame("checkpoint", "", "SP_CUT_GravitySuit", false)
  end
end

function PowerUpGravitySuit.ChangeSuit()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_GRAVITY_SUIT", 1, true)
  Game.GetPlayer().MODELUPDATER.sModelAlias = "Gravity"
  Game.GetPlayer().MODELUPDATER:ForceUpdate()
end




function PowerUpGravitySuit.OnItemEnd(_ARG_0_)

end
