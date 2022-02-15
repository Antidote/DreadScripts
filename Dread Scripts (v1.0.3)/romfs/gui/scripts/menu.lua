Game.ImportLibrary("system/scripts/class.lua", false)







Menu = class.New(function(_ARG_0_, _ARG_1_)
  _ARG_0_.sID = _ARG_1_
  _ARG_0_.oRoot = GUI.CreateDisplayObjectEx(_ARG_1_, "CDisplayObjectContainer", {StageID = "Up"})
  _ARG_0_.atItemStack = {}
end)


function Menu.finalize(_ARG_0_)
  if _ARG_0_.oRoot ~= nil then
    GUI.DestroyDisplayObject(_ARG_0_.oRoot)
    _ARG_0_.oRoot = nil
  end
end


function Menu.GetTopStackItem(_ARG_0_) 
  local L1_2
  local L2_2 = #_ARG_0_.atItemStack
  
  if L2_2 > 0 then
    L1_2 = _ARG_0_.atItemStack[L2_2]
  end
  
  return L1_2
end


function Menu.OnLuaLibrariesReloaded(_ARG_0_)
  _ARG_0_:OnLuaLibrariesReloaded()
end


function Menu.ResetTopStackItem(_ARG_0_)
  local L1_2 = #_ARG_0_.atItemStack
  
  if L1_2 > 0 then
    local L2_2 = _ARG_0_.atItemStack[L1_2]
    utils.LOG(utils.LOGTYPE_GUI,  "Menu.ResetTopStackItem: Menu: " .. tostring(_ARG_0_.sID) .. ", CurrentItemClass: " .. tostring(L2_2.sClassName))
  
    if L2_2.oItem ~= nil then
      L2_2.oItem:finalize()
    end
    L2_2.oItem = _G[L2_2.sClassName](L2_2.sClassName, _ARG_0_, L2_2.tCreateParams)
    L2_2.oItem:OnInitialized()
  end
end


function Menu.PushItemByClassName(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  utils.LOG(utils.LOGTYPE_GUI, "Menu:PushItemByClassName: _sClassName:" .. _ARG_1_)
  local L4_2 = nil
  
  if _ARG_3_ ~= false then
    local L5_2 = #_ARG_0_.atItemStack
  
    if L5_2 > 0 then
      local L6_2 = _ARG_0_.atItemStack[L5_2]
      if L6_2.oItem ~= nil then
        L6_2.oItem:finalize(L6_2.tCreateParams)
        L6_2.oItem = nil
      end
    end
  end
  
  if _ARG_2_ == nil then
    _ARG_2_ = {}
  end
  
  local L5_2 = { sClassName = _ARG_1_,  tCreateParams = _ARG_2_ }
  local L6_2 = _G[_ARG_1_]
  if L6_2 ~= nil then
  
    if _ARG_2_.bCreateItem ~= false then
      L4_2 = L6_2(_ARG_1_, _ARG_0_, _ARG_2_)
      L5_2.oItem = L4_2
    end
  
    utils.LOG(utils.LOGTYPE_GUI, "Menu:PushItemByClassName: insert item to stack :" .. tostring(L5_2) .. ", item: " .. tostring(L5_2.oItem))
    table.insert(_ARG_0_.atItemStack, L5_2)
    if L5_2.oItem ~= nil then
      L5_2.oItem:OnInitialized()
    end
  else
    utils.ERR(utils.LOGTYPE_GUI, "Menu:PushItemByClassName, Class '" .. _ARG_1_ ..  "' not found")
  end
  return L4_2
end


function Menu.PopAllPopUps(_ARG_0_)
  utils.LOG(utils.LOGTYPE_GUI, "Menu:PopAllPopUps")
  while #_ARG_0_.atItemStack > 0 and _ARG_0_.atItemStack[#_ARG_0_.atItemStack].oItem.bIsPopUp do
    _ARG_0_:PopItem()
  end
end


function Menu.PopAllItems(_ARG_0_)
  utils.LOG(utils.LOGTYPE_GUI, "Menu:PopAllItems")
  while #_ARG_0_.atItemStack > 0 do
    _ARG_0_:PopItem()
  end
end


function Menu.PopItemIfAtTop(_ARG_0_, _ARG_1_, _ARG_2_)
  if #_ARG_0_.atItemStack > 0 then
    local L3_2 = _ARG_0_.atItemStack[#_ARG_0_.atItemStack]
    if L3_2.oItem.sID == _ARG_1_.sID then
      _ARG_0_:PopItem(_ARG_2_)
    end
  end
end


function Menu.PopItem(_ARG_0_, _ARG_1_)
    
    
    
    
  if #_ARG_0_.atItemStack > 0 then
    local L2_2 = _ARG_0_.atItemStack[#_ARG_0_.atItemStack]
    local L3_2 = { sID = L2_2.oItem.sID, tReturnValues = _ARG_1_ }
    utils.LOG(utils.LOGTYPE_GUI, "Menu:PopItem, item: " .. L2_2.oItem.sID)
    if L2_2.oItem then
      L2_2.oItem:finalize()
    end
    table.remove(_ARG_0_.atItemStack, #_ARG_0_.atItemStack)

    if L2_2.tCreateParams.fnOnCloseCallback ~= nil then
      L2_2.tCreateParams.fnOnCloseCallback()
    end
    
    local L4_2 = #_ARG_0_.atItemStack
    if L4_2 > 0 then
      local L5_2 = _ARG_0_.atItemStack[L4_2]
      if L5_2.oItem == nil then
        L5_2.tCreateParams.tPrevScreenInfo = L3_2
        L5_2.oItem = _G[L5_2.sClassName](L5_2.sClassName, _ARG_0_, L5_2.tCreateParams)
        L5_2.oItem:OnInitialized()
      end
    elseif L2_2.oItem:GetBackDefaultScreen() ~= nil then
        _ARG_0_:PushItemByClassName(L2_2.oItem:GetBackDefaultScreen(), { tPrevScreenInfo = L3_2 }, false)
    end
  end
end


function Menu.FindTopStackItemCallback(_ARG_0_, _ARG_1_)
  local L2_2
  local L3_2 = #_ARG_0_.atItemStack
  
  if L3_2 > 0 then
    local L4_2 = _ARG_0_.atItemStack[L3_2]    
    if L4_2.oItem ~= nil then
      utils.LOG(utils.LOGTYPE_GUI, "Looking for callback " .. _ARG_1_ .. " top stack item: " .. L4_2.oItem.sID)
      local L5_2 = L4_2.oItem[_ARG_1_]
      if L5_2 ~= nil and type(L5_2) == "function" then
        L2_2 = function(...) L5_2(L4_2.oItem, unpack(arg))  end
      end
    end
  end
  
  return L2_2
end


function Menu.GetStackTopMenuProps(_ARG_0_)
  local L1_2 = {}
  local L2_2 = #_ARG_0_.atItemStack

  if L2_2 > 0 then
    local L3_2 = _ARG_0_.atItemStack[L2_2]

    if L3_2.oItem ~= nil then
      L1_2.sID =  L3_2.oItem.sID
    end
  end
  return L1_2
end


function Menu.FindCallback(_ARG_0_, _ARG_1_)
  local L2_2
  local L3_2 = _ARG_0_[_ARG_1_]
  if L3_2 ~= nil then
    if type(L3_2) == "function" then
      L2_2 = function(...) L3_2(_ARG_0_, unpack(arg)) end
    end
  end
  
  if L2_2 == nil then
    L2_2 = _ARG_0_:FindTopStackItemCallback(_ARG_1_)
  end
  return L2_2
end
