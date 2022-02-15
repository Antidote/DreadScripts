Init = Init ~= nil and Init or {}

Init.EnableDebugger = false

Init.DEBUG = Game.IsDebug()

Game.ImportLibrary("system/scripts/class.lua")

Game.ImportLibrary("gui/scripts/scenariomenu_game.lua", false)

Game.ImportLibrary("system/scripts/logiccallbacks.lua", false)

Init.aBlkCharacterPackages = {
  Samus = {
    aScenarioSections = tScenarioMenuDefs.aScenarios,
    aSections = {"SAMUS"}
  }
}

Init.tNewGameInventory = {
  ITEM_MAX_LIFE = 99,
  ITEM_MAX_SPECIAL_ENERGY = 1000,
  ITEM_WEAPON_MISSILE_MAX = 15,
  ITEM_WEAPON_POWER_BOMB_MAX = 0,
  ITEM_METROID_COUNT = 0,
  ITEM_METROID_TOTAL_COUNT = 40,
  ITEM_FLOOR_SLIDE = 1
}

Init.tMaxGameProgressStats = {
    NumTanksPickedUp = 123
}

Init.tReserveTanksInitialConfiguration = {
  ITEM_RESERVE_TANK_LIFE_SIZE = 99,
  ITEM_RESERVE_TANK_SPECIAL_ENERGY_SIZE = 500,
  ITEM_RESERVE_TANK_MISSILE_SIZE = 30
}





function Init.GetNewGameInventory()
  return Init.tNewGameInventory
end


function Init.GetMaxGameProgressStats()
  return Init.tMaxGameProgressStats
end


function Init.InitScenariosBlackboardsSections()
    
end


function Init.InitGameBlackboardTOC()
  Blackboard.SetDefaultPackage("Common")
  
  for L3_2, L4_2 in pairs(Init.aBlkCharacterPackages) do
    local L5_2 = {}
  
    if L4_2.aScenarioSections then
      for L9_2, L10_2 in ipairs(L4_2.aScenarioSections) do
        table.insert(L5_2, L10_2)
      end
    end
    
    for L9_2, L10_2 in ipairs(L4_2.aSections) do
      table.insert(L5_2, L10_2)
    end
    
    Blackboard.AddPackage(L3_2, L5_2)
  end
end


function Init.SetupNewGameProfileBlackboard(_ARG_0_)
    
  ProfileBlackboard.ResetWithExceptionList({"GAME", "SETTINGS", "MINIMAP", "CHOZO_ARCHIVES", "ENDING_REWARDS"})
  
  ProfileBlackboard.SetProp("SETTINGS", "Difficulty", "i", _ARG_0_)
end


function Init.InitGameBlackboard()
    
    
    
    
    
    
    
    
    
    
    
    
  Blackboard.Reset()
  
  Blackboard.WriteSaveGameVersion()
  
  for L3_2, L4_2 in pairs(Init.tNewGameInventory) do
    local oProp = Blackboard.GetProp("PLAYER_INVENTORY", L3_2)
    if oProp == nil then
      oProp = L4_2
    end
    Blackboard.SetProp("PLAYER_INVENTORY", L3_2, "f", oProp)
  end
  
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROID_COUNT", "f", 0)
  
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", Init.tNewGameInventory.ITEM_MAX_LIFE)
  
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", Init.tNewGameInventory.ITEM_WEAPON_MISSILE_MAX)
  
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", Init.tNewGameInventory.ITEM_WEAPON_POWER_BOMB_MAX)
  
  local SectionName =  Game.GetPlayerBlackboardSectionName()
  Blackboard.SetProp(SectionName, "LevelID", "s", "c10_samus")
  
  Blackboard.SetProp(SectionName, "ScenarioID", "s", "s010_cave")
  
end


function Init.InitDefaultSettings()
  local iSubtitles = 0
  
  if Game.GetCurrentLanguage() == "ENGLISH" then
      iSubtitles = 1
  else
      iSubtitles = 2
  end
  
  ProfileBlackboard.SetProp("SETTINGS", "Subtitles", "i", iSubtitles)
  
  
  ProfileBlackboard.SetProp("SETTINGS", "Brightness", "i", 5)
end


function Init.CreateNewGameData(_ARG_0_)
  Init.InitGameBlackboard()
  Init.SetupNewGameProfileBlackboard(_ARG_0_)
  Game.ResetTotalPlayTime()
  Game.SaveNewGame()
end


function Init.CreateAndInitNewGame(_ARG_0_, _ARG_1_, _ARG_2_)
  Init.CreateNewGameData(_ARG_0_)
  Init.InitNewGame(_ARG_1_, _ARG_2_)
end


function Init.ResetGameBlackboardAndReloadGame()
    
  Blackboard.Reset()
  
  Init.InitGameBlackboard()
  
  Game.ReloadCurrentScenario()
end


function Init.InitNewGame(_ARG_0_, _ARG_1_)
  Game.StartPrologue("c10_samus", _ARG_0_, _ARG_1_, "samus", 1)
end




function Init.CreateDebuggerConnection()
    
  package.path = package.path .. ";system/scripts/?.lc;system/scripts/LuaSockets/?.lc"
  loadfile("system/scripts/LuaSockets/mime.lc")()
  loadfile("system/scripts/LuaSockets/socket.lc")()
  
  local debugger = require("debugger")
  debugger(nil, nil, nil)
end



function Init.main()
    
  Game.SetDefaultPath("")
  
  if Init.EnableDebugger and not pcall(Init.CreateDebuggerConnection) then
      
      
    utils.LOG(utils.LOGTYPE_LUA, "ERROR creating debugger connection. Skipping...")
  end
  
  Init.InitScenariosBlackboardsSections()
  
  Init.InitGameBlackboardTOC()
  
  Game.ImportLibrary("system/scripts/savegame.lua", false)
  
  Game.ImportLibrary("system/scripts/difficulty.lua", false)
  
  Game.ImportLibrary("system/scripts/slots.lua", false)
end




function Init.StartGameAttractMode()
  Game.CreateProfile("profile0")
  Game.ApplySettingsFromProfileBlackboard()
  Init.InitGameBlackboard()
  Init.SetupNewGameProfileBlackboard()
  Game.FadeOut(0.5)
  Game.AddGUISF(1, "Init.CreateNewGameData", "")
  Game.AddGUISF(1.1, "Init.InitNewGame", "")
end
