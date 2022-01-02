function SuperQuetzoa.main()
end


function SuperQuetzoa.BeginPlay(_ARG_0_)
    local oActor =  Game.GetActor("doorpowerpower_014")
  if oActor ~= nil then
    oActor.LIFE:LockDoor()
  end
end
