Scenario = Scenario or {}
local LocalG = _G

setmetatable(Scenario, {__index = _G})

Scenario.Cameras = _G.Cameras

setfenv(1, Scenario)

tCharacterScenarioLevels = {Samus = "c10_samus"}

Scenario.LUAPropIDs = {
  CAVES_GAME_INTRO = Blackboard.RegisterLUAProp("CAVES_GAME_INTRO", "bool"),
  CAVES_EMMY_SPAWNED = Blackboard.RegisterLUAProp("CAVES_EMMY_SPAWNED", "bool"),
  CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED = Blackboard.RegisterLUAProp("CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED", "bool"),
  CAVES_TUTO_MAP_DONE = Blackboard.RegisterLUAProp("CAVES_TUTO_MAP_DONE", "bool"),
  CAVES_TUTO_MAP_ROOM_DONE = Blackboard.RegisterLUAProp("CAVES_TUTO_MAP_ROOM_DONE", "bool"),
  LAB_EMMY_SPAWNED = Blackboard.RegisterLUAProp("LAB_EMMY_SPAWNED", "bool"),
  HYDROGIGA_DEAD = Blackboard.RegisterLUAProp("HYDROGIGA_DEAD", "bool"),
  COOLDOWN_FINISHED = Blackboard.RegisterLUAProp("COOLDOWN_FINISHED", "bool"),
  SHIP_EMMY_METROIDNIZATION = Blackboard.RegisterLUAProp("SHIP_EMMY_METROIDNIZATION", "bool"),
  SHIP_STRONG_REACTION = Blackboard.RegisterLUAProp("SHIP_STRONG_REACTION", "bool"),
  SHIP_CWXELITE_PRESENTATION = Blackboard.RegisterLUAProp("SHIP_CWXELITE_PRESENTATION", "bool"),
  CAVES_COOLDOWN_APPLIED = Blackboard.RegisterLUAProp("CAVES_COOLDOWN_APPLIED", "bool"),
  CAVES_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("CAVES_POSTXRELEASE_APPLIED", "bool"),
  MAGMA_COOLDOWN_APPLIED = Blackboard.RegisterLUAProp("MAGMA_COOLDOWN_APPLIED", "bool"),
  MAGMA_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("MAGMA_POSTXRELEASE_APPLIED", "bool"),
  LAB_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("LAB_POSTXRELEASE_APPLIED", "bool"),
  AQUA_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("AQUA_POSTXRELEASE_APPLIED", "bool"),
  FOREST_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("FOREST_POSTXRELEASE_APPLIED", "bool"),
  SANC_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("SANC_POSTXRELEASE_APPLIED", "bool"),
  SANC_EMMY_DEACTIVATED_ENABLED = Blackboard.RegisterLUAProp("SANC_EMMY_DEACTIVATED_ENABLED", "bool")
}














function main()
  SetSpawneableCharClassInFINAL()
  ResetCurrentScenarioInfo()
end


function SetSpawneableCharClassInFINAL()
    
    
    
    
  AI.AddSpawneableCharClassInFINAL("armadigger")
  AI.AddSpawneableCharClassInFINAL("autclast")
  AI.AddSpawneableCharClassInFINAL("autector")
  AI.AddSpawneableCharClassInFINAL("autool")
  AI.AddSpawneableCharClassInFINAL("autsharp")
  AI.AddSpawneableCharClassInFINAL("autsniper")
  AI.AddSpawneableCharClassInFINAL("batalloon")
  AI.AddSpawneableCharClassInFINAL("bigfist")
  AI.AddSpawneableCharClassInFINAL("bigkranx")
  AI.AddSpawneableCharClassInFINAL("blindfly")
  AI.AddSpawneableCharClassInFINAL("caterzilla")
  AI.AddSpawneableCharClassInFINAL("chozozombiex")
  AI.AddSpawneableCharClassInFINAL("daivo")
  AI.AddSpawneableCharClassInFINAL("depthorn")
  AI.AddSpawneableCharClassInFINAL("dizzeansprite")
  AI.AddSpawneableCharClassInFINAL("dredhed")
  AI.AddSpawneableCharClassInFINAL("dropter")
  AI.AddSpawneableCharClassInFINAL("fing")
  AI.AddSpawneableCharClassInFINAL("fulmite")
  AI.AddSpawneableCharClassInFINAL("gobbler_chozowarriorx")
  AI.AddSpawneableCharClassInFINAL("gobbler_cooldownx")
  AI.AddSpawneableCharClassInFINAL("gobbler_hydrogiga")
  AI.AddSpawneableCharClassInFINAL("gobbler_kraid")
  AI.AddSpawneableCharClassInFINAL("gobbler_scorpius")
  AI.AddSpawneableCharClassInFINAL("gobbler_supergoliath")
  AI.AddSpawneableCharClassInFINAL("gobbler_superquetzoa")
  AI.AddSpawneableCharClassInFINAL("goliath")
  AI.AddSpawneableCharClassInFINAL("gooplot")
  AI.AddSpawneableCharClassInFINAL("gooshocker")
  AI.AddSpawneableCharClassInFINAL("groundshocker")
  AI.AddSpawneableCharClassInFINAL("hecathon")
  AI.AddSpawneableCharClassInFINAL("iceflea")
  AI.AddSpawneableCharClassInFINAL("infester")
  AI.AddSpawneableCharClassInFINAL("klaida")
  AI.AddSpawneableCharClassInFINAL("kreep")
  AI.AddSpawneableCharClassInFINAL("nailong")
  AI.AddSpawneableCharClassInFINAL("nailugger")
  AI.AddSpawneableCharClassInFINAL("obsydomithon")
  AI.AddSpawneableCharClassInFINAL("omnithon")
  AI.AddSpawneableCharClassInFINAL("poisonfly")
  AI.AddSpawneableCharClassInFINAL("quetshocker")
  AI.AddSpawneableCharClassInFINAL("quetzoa")
  AI.AddSpawneableCharClassInFINAL("redenki")
  AI.AddSpawneableCharClassInFINAL("rockdiver")
  AI.AddSpawneableCharClassInFINAL("rodomithonx")
  AI.AddSpawneableCharClassInFINAL("rodotuk")
  AI.AddSpawneableCharClassInFINAL("sabotoru")
  AI.AddSpawneableCharClassInFINAL("sakai")
  AI.AddSpawneableCharClassInFINAL("sclawk")
  AI.AddSpawneableCharClassInFINAL("scourge")
  AI.AddSpawneableCharClassInFINAL("shakernaut")
  AI.AddSpawneableCharClassInFINAL("sharpaw")
  AI.AddSpawneableCharClassInFINAL("shelmit")
  AI.AddSpawneableCharClassInFINAL("slidle")
  AI.AddSpawneableCharClassInFINAL("slugger")
  AI.AddSpawneableCharClassInFINAL("specimen_x4a")
  AI.AddSpawneableCharClassInFINAL("spitclawk")
  AI.AddSpawneableCharClassInFINAL("spittail")
  AI.AddSpawneableCharClassInFINAL("sunnap")
  AI.AddSpawneableCharClassInFINAL("takumaku")
  AI.AddSpawneableCharClassInFINAL("vulkran")
  AI.AddSpawneableCharClassInFINAL("warlotus")
  AI.AddSpawneableCharClassInFINAL("yampa")
  AI.AddSpawneableCharClassInFINAL("yojimbee")
  AI.AddSpawneableCharClassInFINAL("rinka")
  AI.AddSpawneableCharClassInFINAL("cucannon")
  AI.AddSpawneableCharClassInFINAL("hydrogiga")
  AI.AddSpawneableCharClassInFINAL("chozorobotsoldier")
  AI.AddSpawneableCharClassInFINAL("chozowarrior")
  AI.AddSpawneableCharClassInFINAL("chozowarriornormal")
  AI.AddSpawneableCharClassInFINAL("chozowarriorelite")
  AI.AddSpawneableCharClassInFINAL("chozowarriorx")
  AI.AddSpawneableCharClassInFINAL("chozowarriorxnormal")
  AI.AddSpawneableCharClassInFINAL("chozowarriorxelite")
  AI.AddSpawneableCharClassInFINAL("superquetzoa")
  AI.AddSpawneableCharClassInFINAL("supergoliath")
  AI.AddSpawneableCharClassInFINAL("core_x")
  AI.AddSpawneableCharClassInFINAL("core_x_superquetzoa")
  AI.AddSpawneableCharClassInFINAL("cooldownxboss")
  AI.AddSpawneableCharClassInFINAL("chozocommander")
  AI.AddSpawneableCharClassInFINAL("scorpius")
  AI.AddSpawneableCharClassInFINAL("kraid")
end


function ResetCurrentScenarioInfo()
  LocalG.CurrentScenario = nil
  LocalG.CurrentScenarioID = nil
  LocalG.CurrentScenarioBlackboard = nil
end


function OnLoadGameFromSaveData()
    
end

function OnLoadScenarioFinished()
  if LocalG.CurrentScenario.OnLoadScenarioFinished ~= nil then
    LocalG.CurrentScenario.OnLoadScenarioFinished()
  end
end


function SetCurrentScenario(_ARG_0_)
  local L1_2 = LocalG.CurrentScenarioID
  
  LocalG.CurrentScenario = LocalG[_ARG_0_]
  LocalG.CurrentScenarioID = _ARG_0_
  LocalG.CurrentScenarioBlackboard = Game.GetScenarioBlackboardSectionID(_ARG_0_)
end





function InitScenario(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  SetCurrentScenario(_ARG_1_)
  
  LocalG.Character = Game.GetPlayer()
  bWaitingForScenarioChange = false
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  if msemenu ~= nil and msemenu.items ~= nil and msemenu.items.CurrentScenario ~= nil then
    msemenu.items.CurrentScenario.Contextual = LocalG.CurrentScenario.DebugMenuEntry ~= nil and LocalG.CurrentScenario.DebugMenuEntry or {}
  end
  
  LocalG.CurrentScenario.main()
  if _ARG_3_ ~= "Editor" then
    if LocalG.CurrentScenario.InitFromBlackboard ~= nil then
      LocalG.CurrentScenario.InitFromBlackboard()
    else
      utils.LOG_WARN(utils.LOGTYPE_LOGIC, "InitFromBlackboard method does not exist in Scenario " .. tostring(_ARG_1_))
    end
  elseif LocalG.CurrentScenario.CreateWorldGraph ~= nil then
    LocalG.CurrentScenario.CreateWorldGraph()
  else
    utils.LOG_WARN(utils.LOGTYPE_LOGIC, "CreateWorldGraph method does not exist in Scenario " .. tostring(_ARG_1_))
  end
end


function HideLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end




function ReadFromBlackboard(_ARG_0_, _ARG_1_)
  local oProp
  
  if LocalG.CurrentScenarioBlackboard ~= nil then
    oProp = Blackboard.GetProp(LocalG.CurrentScenarioBlackboard, _ARG_0_)
  end
  
  if oProp == nil then
    oProp = _ARG_1_
  end
  
  return oProp
end




function WriteToBlackboard(_ARG_0_, _ARG_1_, _ARG_2_)
  if LocalG.CurrentScenarioBlackboard ~= nil then
    Blackboard.SetProp(LocalG.CurrentScenarioBlackboard, _ARG_0_, _ARG_1_, _ARG_2_)
  end
end




function WriteToSharedBlackboard(_ARG_0_, _ARG_1_, _ARG_2_)
  if LocalG.CurrentScenarioBlackboard ~= nil then
    Blackboard.SetProp("ScenarioShared", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end




function ReadFromSharedBlackboard(_ARG_0_, _ARG_1_)
  local oProp
  
  if LocalG.CurrentScenarioBlackboard ~= nil then
    oProp = Blackboard.GetProp("ScenarioShared", _ARG_0_)
  end
  
  if oProp == nil then
    oProp = _ARG_1_
  end
  
  return oProp
end




function GetBlackboardProp(_ARG_0_, _ARG_1_, _ARG_2_)
  local oProp
  
  if _ARG_0_ ~= nil then
    oProp = Blackboard.GetProp(_ARG_0_, _ARG_1_)
  end
  
  if oProp == nil then
    oProp = _ARG_2_
  end
  
  return oProp
end




function SetBlackboardProp(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ ~= nil then
    Blackboard.SetProp(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  end
end



function RecoverPlayerMaxItemsAmounts()
  local oMaxLife = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE")  
  if oMaxLife ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", oMaxLife)
  end
  
  local oSpecialEnergy = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY")
  if oSpecialEnergy ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", oSpecialEnergy)
  end
  
  local oMissile = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX")
  if oMissile ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", oMissile)
  end
  
  local oBomb = Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX")
  if oBomb ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", oBomb)
  end
  
  Game.ReinitPlayerFromBlackboard()
end




function ActivateDefaultCamera(_ARG_0_)
    
  if _ARG_0_ == nil then
    _ARG_0_ = true
  end
  
  local oCamName = "CAM_Default"
  LocalG.InitialCamera = Game.GetActor("MainCamera")
  
  if LocalG.InitialCamera ~= nil then
      
    if not Game.ExistsLogicCamera(oCamName) then
      CreateDefaultLogicCamera(oCamName)
    end
    
    LocalG.InitialCamera.CAMERA:SetLogicCameraParams(oCamName, _ARG_0_)
  end
  
  if LocalG.InitialCamera ~= nil then
    local tmp = LocalG.InitialCamera.CAMERA:GetLogicCameraController(oCamName)
    if tmp == nil then
      tmp = "METROID"
      LocalG.InitialCamera:ChangeCameraMode(tmp, _ARG_0_)
    end
    
    LocalG.InitialCamera.CAMERA.bIgnoreSlomo = false
  end
end





function CreateDefaultLogicCamera(_ARG_0_)
    
    local oProps = {
    Controller = "METROID",
    MinExtraZDist = "1665.807358",
    MaxExtraZDist = "1665.807358",
    DefaultInterp = "10.0",
    ParamsInterp = "1.5"
  }
  Game.CreateLogicCamera(_ARG_0_, oProps)
  
end



function FadeOutAndLoadWithoutFadeIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not bWaitingForScenarioChange then
      
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.3
    end
    
    Game.FadeOut(_ARG_3_)
    Game.FadeOutStream(_ARG_3_ * 0.8)
    
    local L4_2 = tCharacterScenarioLevels[_ARG_0_]
    if L4_2 == nil or not L4_2 then
      L4_2 = _ARG_0_
    end
    
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenarioWithoutFadeIn", "ssssi", L4_2, _ARG_1_, _ARG_2_, "", 1)
  end
end


function ResetBlackboardAndReload()
  
local oPlayer = Blackboard.GetProp("GAME", "Player")
  local sPlayerSectionName = Game.GetPlayerBlackboardSectionName()
  local iLevelID = Blackboard.GetProp(sPlayerSectionName, "LevelID")
  local iScenarioID = Blackboard.GetProp(sPlayerSectionName, "ScenarioID")
  local sStartPoint = Blackboard.GetProp(sPlayerSectionName, "StartPoint")
  
  Init.InitGameBlackboard()

  Game.SaveGame("checkpoint", "", "", false)
  Game.LoadScenario(iLevelID, iScenarioID, sStartPoint, oPlayer)
end



function FadeOutAndLoad(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)

  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    
    local tLevel = tCharacterScenarioLevels[_ARG_0_]
    if tLevel == nil or not tLevel then
      tLevel = _ARG_0_
    end
    
    if _ARG_4_ then
      Game.TransitionFadeOut(_ARG_3_)
    else
      Game.FadeOut(_ARG_3_)
    end
    
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1,  "Game.LoadScenario", "ssssi", tLevel, _ARG_1_, _ARG_2_, "", 1)
  end
end



function FadeOutBGAndLoad(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    
    local tLevel = tCharacterScenarioLevels[_ARG_0_]
    if tLevel == nil or not tLevel then
      tLevel = _ARG_0_
    end
    
    Game.FadeOutBG(_ARG_3_)
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenario", "ssssi", tLevel, _ARG_1_, _ARG_2_, "", 2)
  end
end



function FadeOutAndReloadCurrentScenario(_ARG_0_)
  if not bWaitingForScenarioChange then
      
    bWaitingForScenarioChange = true
    if _ARG_0_ == nil then
      _ARG_0_ = 0.66
    end
    
    
    Game.FadeOut(_ARG_0_)
    
    Game.FadeOutStream(_ARG_0_ * 0.8)
    
    Game.AddPSF(_ARG_0_ + 0.1, "Game.ReloadCurrentScenario", "")
  end
end



function FadeOutAndLoadWithPlayer(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    
    local tLevel = tCharacterScenarioLevels[_ARG_0_]
    if tLevel == nil or not tLevel then
      tLevel = _ARG_0_
    end
    
    Game.TransitionFadeOut(_ARG_3_)

    Game.FadeOutStream(_ARG_3_ * 0.8)

    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenario", "ssssi", tLevel, _ARG_1_, _ARG_2_, _ARG_4_, 1)
  end
end



function FadeOutAndCutscene(_ARG_0_, _ARG_1_)
    
  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  
  Game.FadeOut(_ARG_1_)
 
  Game.AddPSF(_ARG_1_ + 0.1, "Game.LaunchCutscene", "s", _ARG_0_)
end



function FadeOutAndUnloadScenario(_ARG_0_, _ARG_1_)

  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  
  Game.FadeOut(_ARG_1_)
  
  Game.AddPSF(_ARG_1_ + 0.1, "Game.UnloadScenario", "s", _ARG_0_)
end



function FadeOutAndSetCutsceneMode(_ARG_0_, _ARG_1_)
  
  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.INPUT:IgnoreInputFor(_ARG_1_ + 0.1, "FadeOutAndSetCutsceneMode", true)
  end
  
  Game.FadeOut(_ARG_1_)
  
  Game.AddPSF(_ARG_1_ + 0.1, "Game.SetCutsceneMode", "s", _ARG_0_)
end



function FadeOutAndLoadWithCutscene(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  
  Cutscenes.NextLevelId = _ARG_0_
  Cutscenes.NextScenearioId = _ARG_1_
  Cutscenes.NextStartPoint = _ARG_2_
  
  if _ARG_4_ == nil then
    _ARG_4_ = 0.3
  end
  
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.INPUT:IgnoreInputFor(_ARG_4_ + 0.1, "FadeOutAndLoadWithCutscene", true)
  end
  
  Game.FadeOut(_ARG_4_)
  
  Game.AddPSF(_ARG_4_ + 0.1, "Game.SetLoadingMode", "s", _ARG_3_)
end



function FadeOutAndGoToMainMenu(_ARG_0_, _ARG_1_, _ARG_2_)

  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  
  if _ARG_1_ == nil then
    _ARG_1_ = false
  end
  
  if _ARG_2_ == nil then
    _ARG_2_ = false
  end
  
  
  
  Game.FadeOut(_ARG_0_)
  
  Game.AddPSF(_ARG_0_ + 0.1, "Scenario.GoToMainMenu", "bb", _ARG_1_, _ARG_2_)
end



function GoToMainMenu(_ARG_0_, _ARG_1_)

  
  if _ARG_0_ == true and loadingscreen then
    loadingscreen.SetMainMenuLoadingScreen()
  end
  
  if _ARG_1_ then
    GUI.ResetMainMenuDebugGUI("gui/scripts/msemenu_start.lua", "")
  end
  
  Game.GoToMainMenu()
end



function FadeOut(_ARG_0_)

 if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  Game.FadeOut(_ARG_0_)
end



function FadeIn(_ARG_0_)

  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  Game.FadeIn(0.1, _ARG_0_)
end


function ForEachEntityIn(_ARG_0_, _ARG_1_, ...)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
    local oActor = Game.GetActor(_FORV_7_)
    if oActor ~= nil then
        local tmp = oActor[_ARG_1_]
        if tmp ~= nil then
            tmp(oActor, unpack(arg))
        end
    end
  end
end


fSweetDeadStartDelay = 0.2
fSweetDeadFadeOutTime = 0.5
fSweetDeadBlackScreenTime = 0.5
fSweetDeadFadeInTime = 0.5




function CheckSweetDead(_ARG_0_)
    
  local oPlayer = Game.GetPlayer()
  if oPlayer.CurrentLife > 0 then
    
    Scenario.DisableInput()
    oPlayer:IgnoreDamageFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    oPlayer.ATTACK.bWantsEnabled = false
    oPlayer:IgnoreHangFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    oPlayer.Invulnerable = true
    if _ARG_0_ == nil then
      _ARG_0_ = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "StartPoint")
    end
    Game.AddSF(fSweetDeadStartDelay, "Scenario.OnSweetDeadFadeOut", "s", _ARG_0_)
  end
end


function OnSweetDeadFadeOut(_ARG_0_)
    
  Game.FadeOut(fSweetDeadFadeOutTime)
  local oArg = _ARG_0_
  Game.AddSF(fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime, "Scenario.OnSweetDeadTeleport", "s", oArg)
end


function OnSweetDeadTeleport(_ARG_0_)
  Game.TeleportEntityToStartPoint(Game.GetPlayerName(), _ARG_0_, fSweetDeadFadeInTime, true)
  Game.FadeIn(0.1, fSweetDeadFadeInTime)
  Game.AddSF(0, "Scenario.OnSweetDeadFinished", "")
end


function OnSweetDeadFinished()
  local oPlayer = Game.GetPlayer()
  
  oPlayer.ATTACK.bWantsEnabled = true
  oPlayer.Invulnerable = false
  Scenario.EnableInput()
  if CurrentScenario ~= nil and CurrentScenario.OnSweetDeadFinished ~= nil then
    CurrentScenario.OnSweetDeadFinished()
  end
end






function EnableInput()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.INPUT.bWantsEnabled = true
    Game.DelSF("Scenario.OnEndDisableInputFor")
  end
end


function DisableInput()
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.INPUT.bWantsEnabled = false
    Game.DelSF("Scenario.OnEndDisableInputFor")
  end
end


function DisableInputFor(_ARG_0_)
  local oPlayer = Game.GetPlayer()
  if oPlayer ~= nil then
    oPlayer.INPUT.bWantsEnabled = false
    Game.AddSF(_ARG_0_, "Scenario.OnEndDisableInputFor", "")
  end
end


function OnEndDisableInputFor()
  local oPlayer = Game.GetPlayer()
  if oPlayer  ~= nil then
    oPlayer.INPUT.bWantsEnabled = true
  end
end


function IsUserInteractionEnabled(_ARG_0_)
    
    
  if _ARG_0_ == nil then
    _ARG_0_ = false
  end
  
  local bEnabled = true

  local sMode = Game.GetCurrentGameModeID()
  if sMode == "CUTSCENE" then
    bEnabled = false
  end
  
  if bEnabled then
    bEnabled = not Game.IsCutscenePlaying()
  end
  
  if bEnabled and _ARG_0_ then
    local oPlayer = Game.GetPlayer()
    
    if oPlayer ~= nil then
      bEnabled = oPlayer.INPUT.bWantsEnabled
    end
  end
  
  return bEnabled
end






function PlayLogicCamera(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  
  
    
  
  Game.DelSF("Scenario.PlayLogicCameraEnd")
  
  local L6_2 = InitialCamera.LastLogicCameraID
  
  if _ARG_3_ ~= nil then
    L6_2 = _ARG_3_
  end
  
  Game.OverrideSoundListener("OnTarget")
  
  InitialCamera.CAMERA:SetLogicCameraParams(_ARG_0_, _ARG_1_)
  
  local L7_2 = true
  
  if _ARG_5_ ~= nil and not _ARG_5_ then
    L7_2 = false
  end
  
  if L7_2 then
    DisableInput()
  end
  
  Game.AddSF(_ARG_2_, "Scenario.PlayLogicCameraEnd", "sbb", L6_2, _ARG_4_, L7_2)
end


function PlayLogicCameraEnd(_ARG_0_, _ARG_1_, _ARG_2_)
  
  utils.LOG(utils.LOGTYPE_LOGIC, "called PlayLogicCameraEnd " .. _ARG_0_)
  
  Game.ResetOverrideSoundListener()
  
  if _ARG_2_ then
    EnableInput()
  end
  
  
  
  InitialCamera.CAMERA:SetLogicCameraParams(_ARG_0_, _ARG_1_)
end


function GetPlayerCurrentScenario(_ARG_0_)
  return Blackboard.GetProp(string.upper(_ARG_0_), "ScenarioID")
end


function GetGameProgressPct()
  local iMin = 0
  
  return math.min(iMin, 100)
end


tGetGameProgressPctInTable = {GameProgressPct = nil}
function GetGameProgressPctInTable()
  local sPercent = string.format("%0.2f", GetGameProgressPct())
  tGetGameProgressPctInTable = sPercent
  return tGetGameProgressPctInTable
end






function SetSmartObjectStateUse(_ARG_0_, _ARG_1_)
  local oActor = Game.GetActor(_ARG_0_)
  
  if oActor ~= nil then
    local oSmartObj = oActor.SMARTOBJECT
    if oSmartObj ~= nil then
        oSmartObj:SetUseState(_ARG_1_)
    end
  end
end

function SetItemAmount(_ARG_0_, _ARG_1_)
  Game.SetItemAmount(Game.GetPlayerName(), _ARG_0_, _ARG_1_)
  Game.ReinitPlayerFromBlackboard()
end

function SetPlayerPosition(_ARG_0_, _ARG_1_, _ARG_2_)
    
  utils.LOG(utils.LOGTYPE_LOGIC, "Scenario Setting player position to " .. _ARG_0_ .. "," .. _ARG_1_ .. "," .. _ARG_2_)
  Game.GetPlayer().vPos = V3D(_ARG_0_, _ARG_1_, _ARG_2_)
end


function CanaManageHazarousEntity(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  for L7_2, L8_2 in pairs(CurrentScenario.tHazarous) do
    if L7_2 ~= _ARG_0_ then
      local L9_2 = CurrentScenario.tHazarous[L7_2]
      if not _ARG_3_ then
        if Game.IsPoolActivated(L7_2) ~= _ARG_3_ then
          for L13_2, L14_2 in pairs(L9_2[_ARG_1_]) do
            if L14_2 == _ARG_2_ then
              return false
            end
          end
        end
      end
    end
  end
  
  return true
end

function EnableHazarous(_ARG_0_, _ARG_1_)
    
  if CurrentScenario.EnableHazarous ~= nil then
    CurrentScenario.EnableHazarous(_ARG_0_, _ARG_1_)
  end
  
  local L2_2 = CurrentScenario.tHazarous[_ARG_0_]
  if L2_2 ~= nil then
  
    for L6_2, L7_2 in pairs(L2_2.Triggers) do
        
      if CanaManageHazarousEntity(_ARG_0_, "Triggers", L7_2, _ARG_1_) then
        local L8_2 = Game.GetActor(L7_2)
        if L8_2 ~= nil then
          L8_2:SetWantsEnabled(not _ARG_1_)
        end
      end
    end
    
    for L6_2, L7_2 in pairs(L2_2.SpawnGroups) do
        
      if CanaManageHazarousEntity(_ARG_0_, "SpawnGroups", L7_2, _ARG_1_) then
        local L8_2 = Game.GetActor(L7_2)
        if L8_2 ~= nil then
          if _ARG_1_ then
            L8_2.SPAWNGROUP:DisableSpawnGroup()
          else
            L8_2.SPAWNGROUP:EnableSpawnGroup()
          end
        end
      end
    end
    
    for L6_2, L7_2 in pairs(L2_2.Usables) do
        
      if CanaManageHazarousEntity(_ARG_0_, "Usables", L7_2, _ARG_1_) then
        local L8_2 = Game.GetActor(L7_2)
        if L8_2 ~= nil then
          L8_2.USABLE:Activate(not _ARG_1_)
        end
      end
    end
  end
end

function IncrementNumberOfNonReachableTriggers()
  print("IncrementNumberOfNonReachableTriggers")
  Game.GetPlayerInfo():IncrementNumberOfNonReachableTriggers()
end

function DecrementNumberOfNonReachableTriggers()
  print("DecrementNumberOfNonReachableTriggers")
  Game.GetPlayerInfo():DecrementNumberOfNonReachableTriggers()
end





function CheckEmmyAlive(_ARG_0_)
  if _ARG_0_ ~= nil and _ARG_0_.AI ~= nil then
    return true
  else
    return false
  end
end



function LoadScenario(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ == nil or not _ARG_1_ then
    _ARG_1_ = true
  end

  local oProp = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")
  if _ARG_1_ or oProp == nil or oProp ~= _ARG_0_ then
    Game.SetRecoveryModeTemporarilyDisabled(true)
    Blackboard.Reset()
    local L4_2 = "StartPoint0"
    
    if _ARG_2_ ~= nil and _ARG_2_ ~= "" then
      L4_2 = _ARG_2_
    end
  
    if tScenarioMenuDefs.aScenarioPlayers[_ARG_0_] == nil then
      Game.DebugLoadScenario(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], _ARG_0_, L4_2, string.gmatch(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], "%_(.+)$")(), 1)
    else
      Game.DebugLoadScenario(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], _ARG_0_, L4_2, tScenarioMenuDefs.aScenarioPlayers[_ARG_0_], 1)
    end
  end
  
  return true
end


function AddFadeTransition(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  local L5_2 = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")
  if L5_2 == nil then
    return
  end
  if ScenarioFadeTable == nil then
    ScenarioFadeTable = {}
  end
  if ScenarioFadeTable[L5_2] == nil then
    ScenarioFadeTable[L5_2] = {}
  end
  local oFadeTable = ScenarioFadeTable[L5_2]
  if oFadeTable[_ARG_0_] == nil then
    oFadeTable[_ARG_0_] = {}
  end
  if oFadeTable[_ARG_0_][_ARG_1_] == nil then
    oFadeTable[_ARG_0_][_ARG_1_] =  {}
  end
  if oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_] == nil then
    oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_] = {}
  end
  if oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] == nil then
    oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] = _ARG_4_
  end
  if oFadeTable[_ARG_2_] == nil then
    oFadeTable[_ARG_2_] =  {}
  end
  if oFadeTable[_ARG_2_][_ARG_3_] == nil then
    oFadeTable[_ARG_2_][_ARG_3_] = {}
  end
  if oFadeTable[_ARG_2_][_ARG_3_][_ARG_0_] == nil then
    oFadeTable[_ARG_2_][_ARG_3_][_ARG_0_] = {}
  end
  if oFadeTable[_ARG_2_][_ARG_3_][_ARG_0_][_ARG_1_] == nil then
    oFadeTable[_ARG_2_][_ARG_3_][_ARG_0_][_ARG_1_] = _ARG_4_
  end
end


function GetTransitionTypeOverride(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    if ScenarioFadeTable == nil then
        return nil
    end
    local oProp = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")
    if ScenarioFadeTable[oProp] == nil then
        return nil
    end
    local oFadeTable = ScenarioFadeTable[oProp]
    if oFadeTable[_ARG_0_] == nil then
        return nil
    elseif oFadeTable[_ARG_0_][_ARG_1_] == nil then
        return nil
    elseif oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_] == nil then
        return nil
    elseif oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] == nil then
        return nil
    else
        return oFadeTable[_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_]
    end
end


function SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local oTransitionTypeOverride = GetTransitionTypeOverride(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if oTransitionTypeOverride ~= nil then
    Game.SetSubAreasPreferredTransitionType(oTransitionTypeOverride)
  else
    Game.SetSubAreasPreferredTransitionType("FakeFade")
  end
end








function SetSamusAbilities_STANDARD_EARLY()
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 20)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 20)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  
  print("SetSamusAbilities_CAVE")
end


function SetSamusAbilities_CAVE()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_CAVE")
end

function SetSamusAbilities_MAGMA()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_MAGMA")
end

function SetSamusAbilities_MAGMA_AFTERWIDE()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_MAGMA_AFTERWIDE")
end

function SetSamusAbilities_CAVE_AFTERVARIA()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_CAVE_AFTERVARIA")
end

function SetSamusAbilities_LAB()
    
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_LAB")
end

function SetSamusAbilities_AQUA()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_AQUA")
end

function SetSamusAbilities_FOREST()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  
  print("SetSamusAbilities_FOREST")
end

function SetSamusAbilities_QUARANTINE()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  
  print("SetSamusAbilities_QUARANTINE")
end

function SetSamusAbilities_SANCTUARY()
    
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 699)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 699)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY")
end

function SetSamusAbilities_AQUA_AFTERGRAVITY()
    
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_AQUA_AFTERGRAVITY")
end

function SetSamusAbilities_COOLDOWN()
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  
  print("SetSamusAbilities_COOLDOWN")
end

function SetSamusAbilities_SHIPYARD()
    
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SHIPYARD")
end

function SetSamusAbilities_SANCTUARY_AFTERWAVE()
    
    
    
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY_AFTERWAVE")
end

function SetSamusAbilities_FULLEQUIP()
        
    
    
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 50)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 50)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 15)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_FULLEQUIP")
end





function Activation_TG_PostBoss(_ARG_0_)
  local L1_2 = string.gsub(_ARG_0_, "SG_", "TG_PostBossCheckpoint_")
  local L2_2 = Game.GetActor(L1_2)
  if L2_2 ~= nil then
    print("--- ACTIVATION TRIGGER " .. L1_2 .. " ---")
    L2_2.bEnabled = true
  end
  
  local L3_2 = string.gsub(_ARG_0_, "SG_", "TG_SnapshotCheckpoint_")
  local L4_2 = Game.GetActor(L3_2)
  if L4_2 ~= nil then
    print("--- DEACTIVATION TRIGGER " .. L3_2 .. " ---")
    L4_2.bEnabled = true
  end
end


fEmmyAbilityObtainedTimeToStart = 0.3
fEmmyAbilityObtainedFadeOutTime = 0.5
fEmmyAbilityObtainedFadeTime = 0.05
fEmmyAbilityObtainedFadeInTime = 1
sEmmyAbilityObtainedCallback = ""
sEmmyAbilityObtainedFinalCallback = ""



function EmmyAbilityObtained_Start()
    
    
    
  Game.PowerBombFade(fEmmyAbilityObtainedFadeOutTime, fEmmyAbilityObtainedFadeTime, fEmmyAbilityObtainedFadeInTime)
  Game.AddSF(fEmmyAbilityObtainedFadeOutTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_ResetDarkness", "")
end

function EmmyAbilityObtained_ResetDarkness()
    
    
  Game.AddSF(fEmmyAbilityObtainedFadeInTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_RecoverInput", "")
  EmmyAbilityObtained_ShowMessageLaunchCallbacks()
  Game.StopForceDarkness("emmydeath", 0)
  CurrentScenario.OnEmmyAbilityObtainedFadeOutCompleted()
end

function EmmyAbilityObtained_RecoverInput()
  
  EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff()
  
  local oPlayer = Game.GetPlayer()
  
  if oPlayer ~= nil then
    oPlayer.INPUT:IgnoreInput(false, false, "EmmyAbilityObtained")
  end
end

function EmmyAbilityObtained_ShowMessage(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  sEmmyAbilityObtainedCallback = _ARG_1_
  sEmmyAbilityObtainedFinalCallback = _ARG_2_
  
  
  
  if _ARG_3_ then
    GUI.SetSamusMenuCompositionLuaCallbackOnClosed("Scenario.EmmyAbilityObtained_ShowMessageLaunchCallbacks")
    GUI.ShowMessage(_ARG_0_, true, "", false)
  else
    GUI.SetSamusMenuCompositionLuaCallbackOnClosed("Scenario.EmmyAbilityObtained_ShowMessageCallback")
    GUI.ShowMessage(_ARG_0_, true, "", false)
  end
end

function EmmyAbilityObtained_ShowMessageLaunchCallbacks()
    
    
  Game.AddSF(-1, sEmmyAbilityObtainedCallback, "")
  Game.AddSF(-1, sEmmyAbilityObtainedFinalCallback, "")
end

function EmmyAbilityObtained_ShowMessageCallback()
  local oPlayer = Game.GetPlayer()
  
  
  if oPlayer ~= nil then
    oPlayer.INPUT:IgnoreInput(true, false, "EmmyAbilityObtained")
  end
  
  Game.AddSF(fEmmyAbilityObtainedTimeToStart, "Scenario.EmmyAbilityObtained_Start", "")
end

function EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff()
  GUI.ShowMessage("#GUI_OMEGA_EMMY_1", true, "")
end
