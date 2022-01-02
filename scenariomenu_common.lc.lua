Game.ImportLibrary("gui/scripts/msemenu_inventory.lua", false)
Game.ImportLibrary("gui/scripts/scenariomenu_game.lua", false)
ScenarioMenu = {}






function ScenarioMenu.InitScenarioMenuGameBlackboard(_ARG_0_)
  Blackboard.WriteSaveGameVersion()
  Blackboard.SetProp("GAME", "HUD", "b", true)
  
  local oProp = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE")
  if oProp == nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  end

  for sPropName, oProp in pairs(debuginventory) do
    Blackboard.SetProp("PLAYER_INVENTORY", sPropName, "f", oProp.Default)
  end
  
  
  
  
  Blackboard.InitDebugGameBlackboard()
  
  local oDebugBlackBoard = _G[_ARG_0_]
  if oDebugBlackBoard then
    if oDebugBlackBoard.SetupDebugGameBlackboard then
        oDebugBlackBoard.SetupDebugGameBlackboard()
    end
  end  
end


function ScenarioMenu.AddScenario(_ARG_0_, _ARG_1_)

  local bFound = false
  for L6_2, L7_2 in ipairs(tScenarioMenuDefs.aScenarioDefs) do
    if L7_2 == _ARG_1_ then
      bFound = true
      break
    end
  end
  
  if not bFound then
    tScenarioMenuDefs.aScenarioDefs[_ARG_1_] = _ARG_0_
    table.insert(tScenarioMenuDefs.aScenarioDefs, _ARG_1_)
  end
end


function ScenarioMenu.LoadScenario(_ARG_0_, _ARG_1_, _ARG_2_)
  return Scenario.LoadScenario(_ARG_0_, _ARG_1_, _ARG_2_)
end



function ScenarioMenu.TeleportToScenario(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil or not _ARG_1_ then
    _ARG_1_ = true
  end
  local oProp = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")
  if _ARG_1_ or oProp == nil or oProp ~= _ARG_0_ then
    Game.LoadScenario(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], _ARG_0_, "StartPoint0", string.gmatch(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], "%_(.+)$")(), 1)
  end
  return true
end
