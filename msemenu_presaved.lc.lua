Game.ImportLibrary("gui/scripts/msemenu.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_common.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_scenarios.lua", false)
msemenu_presaved = {}




function msemenu_presaved.Create(_ARG_0_)
  local L1_2

    
    
    
    
    
    
    
    
  L1_2 = msemenu.Create("Up", "items", true, false, true, 11, "CDebugMenuEntryItemRenderer")
  return L1_2
end

msemenu_presaved.checkpoints = {
  s010_cave = {
    { ID = "protoemmy", Desc = "Proto Emmy", StartPoint = "SP_Checkpoint_ProtoEmmy" },
    { ID = "emmycave", Desc = "Emmy Cave", StartPoint = "SP_Checkpoint_EmmyCave" },
    { ID = "focustuto", Desc = "Emmy Range Tutorial", StartPoint = "SP_Checkpoint_FocusTutorial" },
    { ID = "watervalve", Desc = "Water Valve", StartPoint = "SP_Checkpoint_WaterValve" },
    { ID = "chargebeam", Desc = "Charge Beam", StartPoint = "SP_Checkpoint_ChargeBeam" },
    { ID = "thermaldevice", Desc = "Thermal Device", StartPoint = "SP_Checkpoint_ThermalDevice" },
    { ID = "centralunit", Desc = "Central Unit", StartPoint = "SP_Checkpoint_CentralUnit" },
    { ID = "magnetglove", Desc = "Magnet Glove", StartPoint = "SP_Checkpoint_MagnetGlove" },
    { ID = "opticalcamo", Desc = "Optical Camo", StartPoint = "SP_Checkpoint_OpticalCamo" },
    { ID = "chainreaction", Desc = "Chain Reaction", StartPoint = "SP_Checkpoint_ChainReaction" },
    { ID = "variasuit", Desc = "Varia Suit", StartPoint = "SP_Checkpoint_VariaSuit" },
    { ID = "grapple", Desc = "Grapple", StartPoint = "SP_Checkpoint_Grapple" }
  },
  s020_magma = {
    { ID = "startmagma", Desc = "Start Magma", StartPoint = "LE_Platform_Elevator_FromCave" },
    { ID = "emmymagma", Desc = "Emmy Magma", StartPoint = "SP_Checkpoint_EmmyMagma" },
    { ID = "centralunit", Desc = "Central Unit", StartPoint = "SP_Checkpoint_CentralUnit" },
    { ID = "morphball", Desc = "MorphBall", StartPoint = "SP_Checkpoint_MorphBall" },
    { ID = "kraid", Desc = "Kraid", StartPoint = "SP_Checkpoint_Kraid" }
  },
  s030_baselab = {
    { ID = "startbaselab", Desc = "Start Base Lab", StartPoint = "wagontrain_magma_000_platform" },
    { ID = "blackout", Desc = "Blackout", StartPoint = "SP_Checkpoint_Blackout" },
    { ID = "emmybaselab", Desc = "Emmy Base Lab", StartPoint = "SP_Checkpoint_EmmyBaseLab" },
    { ID = "afterdiffusion", Desc = "After Difussion", StartPoint = "SP_Checkpoint_AfterDiffusion" },
    { ID = "blackout2", Desc = "Blackout 2", StartPoint = "SP_Checkpoint_Blackout2" },
    { ID = "bomb", Desc = "Bomb", StartPoint = "SP_Checkpoint_Bomb" },
    { ID = "afteraqua", Desc = "After Aqua", StartPoint = "SP_Checkpoint_AfterAqua" },
    { ID = "speedbooster", Desc = "Speed Booster", StartPoint = "SP_Checkpoint_SpeedBooster" },
    { ID = "afterprofessor", Desc = "After Professor", StartPoint = "SP_Checkpoint_AfterProfessor" }
  }
}


msemenu_presaved.playthroughts = {
  pt_official = "playdata:playthroughs/pt_official/pt_official"
}


function msemenu_presaved.GenerateCheckpointItem(_ARG_0_, _ARG_1_, _ARG_2_)  
  return { ItemKey = _ARG_0_, ItemContent = { OnDirActivated = 
    function(A0_3, A1_3)
      if A1_3 == "ActivationButton" then
        Game.LoadGameFromPlaythrough(_ARG_1_, _ARG_2_)
      end
    end
    }
  }
end

function msemenu_presaved.GenerateLoadMenuForPlaythrought(_ARG_0_)
  local L1_2 = { 
      Playthrough = {}, 
      ["Select Area"] = {},
      ["Select Emmys"] = {},
      ["Select Central Units"] = {},
      ["Select Bosses"] = {},
      ["Select Cutscenes"] = {},
      ["Select Fake Adam Communication"] = {},
      ["Select Events"] = {},
      ["Select Abilities"] = {}
    }
  local L2_2 = Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_])
  local L3_2 = L2_2:GetDef()
  local L4_2 = L3_2:GetCheckpointDefs()
  
  for L8_2 = 0, L4_2:Size() - 1, 1 do
    local L9_2 = L4_2:AtIndex(L8_2)
    local L10_2 = L9_2.sCheckpointID
    local L11_2 = string.format("%03d", L8_2) .. " - " .. L9_2.sScenarioID .. " - " .. L9_2.strDesc
    local L12_2 = msemenu_presaved.GenerateCheckpointItem(L11_2, _ARG_0_, L10_2)
    table.insert(L1_2.Playthrough, L12_2)
    local L13_2 = msemenu_presaved.GenerateCheckpointItem(L9_2.strDesc, _ARG_0_, L10_2)
   
    if L1_2["Select Area"][L9_2.sScenarioID] == nil then
      L1_2["Select Area"][L9_2.sScenarioID] = {}
    end

    table.insert(L1_2["Select Area"][L9_2.sScenarioID], L13_2)
    if L9_2:HasTag("EMMY") then
      table.insert(L1_2["Select Emmys"], L13_2)
    end

    if L9_2:HasTag("BOSS") then
      table.insert(L1_2["Select Bosses"], L13_2)
    end

    if L9_2:HasTag("CUTSCENE") then
      table.insert(L1_2["Select Cutscenes"], L13_2)
    end

    if L9_2:HasTag("CU") then
      table.insert(L1_2["Select Central Units"], L13_2)
    end

    if L9_2:HasTag("ADAM") then
      table.insert(L1_2["Select Fake Adam Communication"], L13_2)
    end

    if L9_2:HasTag("EVENT") then
      table.insert(L1_2["Select Events"], L13_2)
    end

    if L9_2:HasTag("ABILITY") then
      table.insert(L1_2["Select Abilities"], L13_2)
    end
  end
  
  return L1_2
end

function msemenu_presaved.GenerateSaveMenuForPlaythrought(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  local L3_2 = Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_])
  local L4_2 = L3_2:GetDef()
  local L5_2 = L3_2.dctCheckpointDatas

  for L9_2 = 0, L5_2:Size() - 1, 1 do
    local L10_2 = L5_2:AtIndex(L9_2)
    local L11_2 = L4_2:FindCheckpointDef(L10_2.sCheckpointDefID)

    if L11_2.sScenarioID == _ARG_1_ then
    
      local L12_2 = { ItemKey = L10_2.sCheckpointDefID, ItemContent = { OnDirActivated = 
        function(A0_3, A1_3)
          if A1_3 == "ActivationButton" then
            Game.LoadGameFromPlaythrough(_ARG_0_, L10_2.sCheckpointDefID)
          end
        end
        }
      }
      table.insert(L2_2, L12_2)
    end
  end
  return L2_2
end
