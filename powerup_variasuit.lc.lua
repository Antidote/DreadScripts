function PowerUpVariaSuit.main()
end

PowerUpVariaSuit.Self = nil



function PowerUpVariaSuit.OnPickedUp(_ARG_0_)
    
    
    
    
    
    
    
    
    
    
  Game.PlayEntitySoundContinueOnDead("generic/obtencion.wav", _ARG_0_.sName, 1, 500, 4000, 1)
  local oActor = Game.GetActor("cutsceneplayer_30")
  if oActor ~= nil then
    _ARG_0_.MODELUPDATER.bWantsEnabled = false
    oActor.CUTSCENE:TryLaunchCutscene()
  end
  PowerUpVariaSuit.Self = _ARG_0_
end

function PowerUpVariaSuit.ShowMessage()
  if PowerUpVariaSuit.Self ~= nil then
    PowerUpVariaSuit.Self.PICKABLE:OnItemEnd()
    Game.SaveGame("checkpoint", "", "SP_CUT_VariaSuit", false)
  end
end

function PowerUpVariaSuit.ChangeSuit()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_VARIA_SUIT", 1, true)
  Game.GetPlayer().MODELUPDATER.sModelAlias = "Varia"
  Game.GetPlayer().MODELUPDATER:ForceUpdate()
end



function PowerUpVariaSuit.OnItemEnd(_ARG_0_)

end
