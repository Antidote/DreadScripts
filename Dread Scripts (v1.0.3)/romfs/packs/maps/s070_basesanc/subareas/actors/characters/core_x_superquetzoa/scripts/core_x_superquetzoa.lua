function CoreX_SuperQuetzoa.main()
end


function CoreX_SuperQuetzoa.LaunchDamageSound(_ARG_0_)
end


function CoreX_SuperQuetzoa.OnBigXAbsorbed(_ARG_0_)
  Game.PushSetup("PostSuperQuetzoaDead", true, false)
  GUI.ShowMessage("#GUI_ITEM_ACQUIRED_MULTI_LOCK", true, "", false)
  local door = Game.GetActor("doorpowerpower_014")
  if  door ~= nil then
    door.LIFE:UnLockDoor()
  end
  Game.SaveGame("checkpoint", "SuperQuetzoa_Dead", "SP_Checkpoint_MultiLockOn", true)
end
