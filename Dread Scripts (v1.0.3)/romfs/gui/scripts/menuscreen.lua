Game.ImportLibrary("system/scripts/class.lua", false)







MenuScreen = class.New(function(_ARG_0_, _ARG_1_, _ARG_2_)
  _ARG_0_.oRoot = nil
  _ARG_0_.sID = _ARG_1_
  _ARG_0_.oMenuController = _ARG_2_
  _ARG_0_.sBackDefaultScreen = nil
end)


function MenuScreen.finalize(_ARG_0_)
  utils.LOG(utils.LOGTYPE_GUI, "MenuScreen:finalize: " .. _ARG_0_.sID)
  if _ARG_0_.oRoot ~= nil then
    GUI.DestroyDisplayObject(_ARG_0_.oRoot)
  end
end


function MenuScreen.OnInitialized(_ARG_0_)
  if _ARG_0_.oMenuController ~= nil and _ARG_0_.oMenuController.oRoot ~= nil and _ARG_0_.oRoot ~= nil then
    _ARG_0_.oMenuController.oRoot:AddChild(_ARG_0_.oRoot)
    GUI.AddLuaEventHandler(_ARG_0_.oRoot, "Cancel", class.BindMethodByName(_ARG_0_, "OnCancel"))
  end
end


function MenuScreen.Close(_ARG_0_, _ARG_1_)
  Game.PlayGUISound(gui_global_sounds.tCancel.sPath, 1, 1)
  _ARG_0_.oMenuController:PopItemIfAtTop(_ARG_0_, _ARG_1_)
end


function MenuScreen.OnCancel(_ARG_0_, _ARG_1_)
  utils.LOG(utils.LOGTYPE_GUI, "MenuScreen:OnCancel")
  _ARG_0_:Close(_ARG_1_)
  return 1
end


function MenuScreen.GetBackDefaultScreen(_ARG_0_)
  return _ARG_0_.sBackDefaultScreen
end




function MenuScreen.CreatePushItemCallback(_ARG_0_)
  return function(_ARG_2_) 
    _ARG_2_.oMenuController:PushItemByClassName(_ARG_0_)  
  end
  
  
end
