



MenuListController = class.New(
function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  
  
  
  
  _ARG_0_.oOwner = _ARG_1_
  _ARG_0_.oList = _ARG_2_
  _ARG_0_.tMenuDef = _ARG_3_
  _ARG_0_.bAllEnabled = false
  _ARG_3_.tItemDefaults = _ARG_3_.tItemDefaults or {}

  for L8_2, L9_2 in ipairs(_ARG_0_.tMenuDef.aItems) do
    setmetatable(L9_2, { __index = _ARG_0_.tMenuDef.tItemDefaults })
  end

  local L5_2 = _ARG_3_.tListConfig or {}

  if L5_2.sNumItemRenderers ~= nil then
    GUI.SetProperties(_ARG_0_.oList, { NumItemRenderers = L5_2.sNumItemRenderers })
  else
    GUI.SetProperties(_ARG_0_.oList, { NumItemRenderers = #_ARG_0_.tMenuDef.aItems })
  end

  GUI.AddLuaEventHandler(_ARG_0_.oList, "Activated", class.BindMethodByName(_ARG_0_, "OnItemActivated"))
  GUI.SetListOnItemSelectedCallback(_ARG_0_.oList, class.BindMethodByName(_ARG_0_, "OnItemSelected"))

  if L5_2.fListHeightPerItem ~= nil then
    local L6_2 = #_ARG_3_.aItems
    L6_2 = L6_2 * L5_2.fListHeightPerItem
    GUI.SetProperties(_ARG_2_, { SizeY = L6_2 })
  end
  if _ARG_4_ ~= false then
    _ARG_0_:RefreshList()
  end
  
  _ARG_2_:ForceRedraw()
end)


function MenuListController.SetAllEnabled(_ARG_0_, _ARG_1_)
  if _ARG_0_.bAllEnabled ~= _ARG_1_ then
    _ARG_0_.bAllEnabled = _ARG_1_
    _ARG_0_:RefreshList()
  end
end


function MenuListController.GetTooltip(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return ""
end


function MenuListController.RefreshList(_ARG_0_)
  local L1_2 = _ARG_0_.oList
  local L2_2 = {}
  local L3_2 = {}
  local L4_2 = {}
  local L5_2 = {}
  local L6_2 = {}

  
  
  
  
  
  
  
  
  
  
  
  
  
  for L10_2, L11_2 in ipairs(_ARG_0_.tMenuDef.aItems) do
    local L12_2 = true
    
    if not _ARG_0_.bAllEnabled and L11_2.fnIsEnabled ~= nil then
      L12_2 = L11_2.fnIsEnabled(_ARG_0_.oOwner, L11_2)
    end
    L3_2[L10_2] = L12_2
    local L13_2 = false
    
    if L11_2.fnIsNew ~= nil then
      L13_2 = L11_2.fnIsNew(_ARG_0_.oOwner, L11_2)
    end
    L4_2[L10_2] = L13_2
    local L14_2 = false
    
    if L11_2.fnIsUpdated ~= nil then
      L14_2 = L11_2.fnIsUpdated(_ARG_0_.oOwner, L11_2)
    end
    L5_2[L10_2] = L14_2
    local L15_2 = L11_2.sID
    
    if L11_2.fnGetText ~= nil then
      L15_2 = L11_2.fnGetText(_ARG_0_.oOwner, L11_2, L12_2, L13_2)
    end
    L2_2[L10_2] = L15_2
    local L16_2 = nil
    
    if L11_2.fnGetTooltip ~= nil then
      L16_2 = L11_2.fnGetTooltip(_ARG_0_.oOwner, L11_2, L12_2, L13_2)
    end
    
    if L16_2 == nil then
      L16_2 = _ARG_0_:GetTooltip(L11_2, L12_2, L13_2)
    end
    L6_2[L10_2] = L16_2
  end
  GUI.SetMenuListValues(L1_2, L2_2, L6_2, L3_2, L4_2, L5_2, false)
end


function MenuListController.GetItemByItemTextID(_ARG_0_, _ARG_1_)
  local L2_2
  
  
  
  
  for L6_2, L7_2 in ipairs(_ARG_0_.tMenuDef.aItems) do
    local L8_2 = L7_2.sID
    
    if L7_2.fnGetText ~= nil then
      local L9_2 = true
      
      if not _ARG_0_.bAllEnabled and L7_2.fnIsEnabled ~= nil then
        L9_2 = L7_2.fnIsEnabled(_ARG_0_.oOwner, L7_2)
      end
      local L10_2 = false
      
      if L7_2.fnIsNew ~= nil then
        L10_2 = L7_2.fnIsNew(_ARG_0_.oOwner, L7_2)
      end
      L8_2 = L7_2.fnGetText(_ARG_0_.oOwner, L7_2, L9_2, L10_2)
    end

    utils.LOG(utils.LOGTYPE_GUI,  "Compare :" .. L8_2 .. " == " .. _ARG_1_)
    if L8_2 == _ARG_1_ then
      L2_2 = L7_2
      break
    end
  end
  
  return L2_2
end


function MenuListController.GetItemByID(_ARG_0_, _ARG_1_)
  local L2_2
  for L6_2, L7_2 in ipairs( _ARG_0_.tMenuDef.aItems) do
  
    if L7_2.sID == _ARG_1_ then
      L2_2 = L7_2
      break
    end
  end
  
  return L2_2
end


function MenuListController.OnItemSelected(_ARG_0_)
  utils.LOG(utils.LOGTYPE_GUI, "MenuListController:OnItemSelected")
  Game.PlayGUISound(gui_global_sounds.tSelect.sPath, 1, 1)
  local L1_2 = _ARG_0_:GetItemByID(_ARG_0_.oList:GetSelectedItemID())
  
  if L1_2.fnOnSelected ~= nil then
    L1_2.fnOnSelected(_ARG_0_.oOwner, L1_2)
  end
end


function MenuListController.OnItemActivated(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local L4_2 = _ARG_3_.SelectedItem
  local L5_2 = _ARG_3_.ActivationDir
  if L5_2 == "ActivationButton" then
    utils.LOG(utils.LOGTYPE_GUI, "tItem.fnOnActivated: " .. tostring(L4_2) ..  "-> " .. tostring(_ARG_0_:GetItemByItemTextID(L4_2)))
    local L6_2 = _ARG_0_:GetItemByItemTextID(L4_2)
    
    if L6_2 ~= nil then
      local L7_2 = false
      
      if L6_2.fnOnActivated ~= nil then
        L6_2.fnOnActivated(_ARG_0_.oOwner, L6_2, L5_2)
        L7_2 = true
      end
      
      if L7_2 then
        Game.PlayGUISound(gui_global_sounds.tAccept.sPath, 1, 1)
      end
    end
  end
end


function MenuListController.OnAccept(_ARG_0_)
  local L1_2 = _ARG_0_.oList
  if L1_2 ~= nil then
    GUI.DispatchEvent(L1_2, "Activated", {})
  end
end
