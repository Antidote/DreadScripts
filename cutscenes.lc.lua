Game.ImportLibrary("system/scripts/scenario.lua")
local LocalG = _G

setmetatable(Cutscenes, {__index = _G})
setfenv(1, Cutscenes)




function main()
end







function OnEnd_LoadingCutscene()
  Game.LoadScenario(NextLevelId, NextScenearioId, NextStartPoint, "", 1)
end



function HideEntities(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
    Game.HideScenarioItemByName(string.lower(_FORV_5_), true)
  end
end



function ShowEntities(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
    Game.HideScenarioItemByName(string.lower(_FORV_5_), false)
  end
end
