


ScenarioData = class.New(function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  _ARG_0_.sName = _ARG_1_
  _ARG_0_.sMap = _ARG_2_
  _ARG_0_.sStartPoint = _ARG_3_
  _ARG_0_.bIsInFinal = _ARG_4_
end)


function ScenarioData.Load(_ARG_0_)
  Scenario.LoadScenario(_ARG_0_.sMap, true, _ARG_0_.sStartPoint)
  return true
end





CheckpointData = class.New(function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  _ARG_0_.sName = _ARG_1_
  _ARG_0_.sMap = _ARG_2_
  _ARG_0_.sPlaythrough = _ARG_3_
  _ARG_0_.sCheckpoint = _ARG_4_
  _ARG_0_.bIsInFinal = _ARG_5_
end)


function CheckpointData.Load(_ARG_0_)
  return Game.LoadGameFromPlaythrough(_ARG_0_.sPlaythrough, _ARG_0_.sCheckpoint)
end
