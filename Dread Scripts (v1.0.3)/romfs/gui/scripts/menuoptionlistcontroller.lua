Game.ImportLibrary("gui/scripts/MenuListController.lua")











MenuOptionListController = class.New(MenuListController, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  MenuListController.init(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
                                    
  _ARG_0_.bDirty = false
  _ARG_0_.tCurValueIdx = {}
  _ARG_0_.tPrevValueIdx = {}
  _ARG_0_.fnOnItemActivatedButton = nil
  _ARG_0_.fnOnItemActivatedLeftRight = class.BindMethod(_ARG_0_, MenuOptionListController.OnLeftRightActivationDefault)
  _ARG_0_:LoadFromBlackboard()
end)


function MenuOptionListController.OnLeftRightActivationDefault(_ARG_0_, _ARG_1_, _ARG_2_)
  local iRet = 0
  local oItem = _ARG_0_:GetItemByID(_ARG_1_)
  
  
  
  
  
  
  
  if oItem ~= nil then
    local iValueIdx = _ARG_0_:GetOptionCurValueIdx(oItem)
    if _ARG_2_ == "Right" then
      iValueIdx = iValueIdx + 1
      if iValueIdx > oItem.iMaxUnlockItem then
        iValueIdx = 1
      end
      iRet = 1
    elseif _ARG_2_ == "Left" then
      iValueIdx = iValueIdx - 1
      if iValueIdx == 0 then
        iValueIdx = oItem.iMaxUnlockItem
      end
      iRet = 1
    end
  
    _ARG_0_:SetOptionCurValueIdx(oItem, iValueIdx)
    Game.PlayGUISound(gui_global_sounds.tSelect.sPath, 1, 1)
  end
  return iRet
end


function MenuOptionListController.OnItemActivated(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  local L4_2 = 0
  local SelectedItem = _ARG_3_.SelectedItem
  local ActivationItem = _ARG_3_.ActivationDir
  
  
  

  if ActivationItem == "ActivationButton" then
    if _ARG_0_.fnOnItemActivatedButton then
      L4_2 = _ARG_0_.fnOnItemActivatedButton(_sItemID)
    else
      Game.PlayGUISound(gui_global_sounds.tWrong.sPath, 1, 1)
    end
  else
    if _ARG_0_.fnOnItemActivatedLeftRight then
      L4_2 = _ARG_0_.fnOnItemActivatedLeftRight(SelectedItem, ActivationItem)
    else
      Game.PlayGUISound(gui_global_sounds.tWrong.sPath, 1, 1)
    end
  end
  return L4_2
end


function MenuOptionListController.GetTooltip(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_.asOptionValues[_ARG_0_:GetOptionCurValueIdx(_ARG_1_)]
end


function MenuOptionListController.IsDirty(_ARG_0_)
  return _ARG_0_.bDirty
end


function MenuOptionListController.LoadFromBlackboard(_ARG_0_)
  for L4_2, L5_2 in ipairs(_ARG_0_.tMenuDef.aItems) do
    if L5_2.sBlackboardIdxProp ~= nil then
      local L6_2 = ProfileBlackboard.GetProp("SETTINGS", L5_2.sBlackboardIdxProp)
      if L6_2 == nil then
        L6_2 = L5_2.iDefaultIdx
      end      
      
      if L6_2 ~= nil then
        _ARG_0_:SetOptionCurValueIdx(L5_2, L6_2)
      end
    end
  end
  _ARG_0_.bDirty = false
end


function MenuOptionListController.SetValueIdxs(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    for L5_2, L6_2 in pairs(_ARG_1_) do
      utils.LOG(utils.LOGTYPE_GUI, "_tValueIdxs, sID: " .. tostring(L5_2) .. ", iValueIdx: " .. tostring(L6_2))
      local _tValueIdxs = _ARG_0_:GetItemByID(L5_2)
      if _tValueIdxs then
        _ARG_0_:SetOptionCurValueIdx(_tValueIdxs, L6_2)
      end
    end
  end
end


function MenuOptionListController.SaveToBlackboard(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_.tMenuDef.aItems) do
    if _FORV_5_.sBlackboardIdxProp ~= nil then
      ProfileBlackboard.SetProp("SETTINGS", _FORV_5_.sBlackboardIdxProp, "i", _ARG_0_:GetOptionCurValueIdx(_FORV_5_))
    end
  end
  
  _ARG_0_.bDirty = false
end


function MenuOptionListController.LoadFromDefault(_ARG_0_)
  for L4_2, L5_2 in ipairs(_ARG_0_.tMenuDef.aItems) do
    if L5_2.iDefaultIdx ~= nil then
      local L6_2 = true
      if L5_2.fnIsEnabled ~= nil then
        L6_2 = L5_2.fnIsEnabled(_ARG_0_.oOwner, L5_2)
      end
      
      if L6_2 then
        _ARG_0_:SetOptionCurValueIdx(L5_2,  L5_2.iDefaultIdx)
      end
    end
  end
end


function MenuOptionListController.GetOptionsByValueIdx(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  
  for L6_2, L7_2 in pairs(_ARG_0_.tCurValueIdx) do
    if L7_2 == _ARG_1_ then
      table.insert(L2_2, L6_2)
    end
  end
  
  return L2_2
end


function MenuOptionListController.GetOptionCurValue(_ARG_0_, _ARG_1_)
  local oCurValue
  local oValueIdx = _ARG_0_:GetOptionCurValueIdx(_ARG_1_)  
  
  if oValueIdx ~= nil then
    oCurValue = _ARG_1_.asOptionValues[oValueIdx]
  end
  
  return oCurValue
end


function MenuOptionListController.GetOptionCurValueIdx(_ARG_0_, _ARG_1_)
  local L2_2 = _ARG_1_.iDefaultIdx
  if _ARG_0_.tCurValueIdx ~= nil and _ARG_0_.tCurValueIdx[_ARG_1_.sID] then
      L2_2 = _ARG_0_.tCurValueIdx[_ARG_1_.sID]
  end 
  
  return L2_2
end


function MenuOptionListController.GetOptionPrevValueIdx(_ARG_0_, _ARG_1_)
  local L2_2 = _ARG_1_.iDefaultIdx
  if _ARG_0_.tCurValueIdx ~= nil and _ARG_0_.tPrevValueIdx[_ARG_1_.sID] then
      L2_2 = _ARG_0_.tPrevValueIdx[_ARG_1_.sID]
  end
  
  return L2_2
end


function MenuOptionListController.SetOptionCurValue(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_.asOptionValues then
    for _FORV_6_, _FORV_7_ in ipairs(_ARG_1_.asOptionValues) do
      if _ARG_2_ == _FORV_7_ then
        _ARG_0_:SetOptionCurValueIdx(_ARG_1_, _FORV_6_)
        break
      end
    end
  end
end


function MenuOptionListController.SetOptionCurValueIdx(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_2_ ~= _ARG_0_:GetOptionCurValueIdx(_ARG_1_) then
    _ARG_0_.tPrevValueIdx[_ARG_1_.sID] = _ARG_0_.tCurValueIdx[_ARG_1_.sID]
    _ARG_0_.tCurValueIdx[_ARG_1_.sID] = _ARG_2_
    local L3_2 = true
    if _ARG_1_.fnIsEnabled ~= nil then
      L3_2 = _ARG_1_.fnIsEnabled(_ARG_0_.oOwner, _ARG_1_)
    end
    
    GUI.SetMenuListValue(_ARG_0_.oList, _ARG_1_.sID, _ARG_1_.asOptionValues[_ARG_2_], L3_2, false)
    _ARG_0_.bDirty = true

    if _ARG_0_.oOwner.OnOptionChanged ~= nil then
       _ARG_0_.oOwner.OnOptionChanged(_ARG_0_.oOwner, _ARG_1_, _ARG_2_)
    end
  end
end
