function Pickup.main()
end


function Pickup.BeginPlay(_ARG_0_)
  if CurrentScenario ~= nil and CurrentScenario.OnPickableItemBeginPlay ~= nil then
    CurrentScenario.OnPickableItemBeginPlay(_ARG_0_)
  end
end


function Pickup.EndPlay(_ARG_0_)
  if CurrentScenario ~= nil and CurrentScenario.OnPickableItemEndPlay ~= nil then
    CurrentScenario.OnPickableItemEndPlay(_ARG_0_)
  end
end
