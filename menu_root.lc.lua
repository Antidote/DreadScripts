




function menu_root.Create(_ARG_0_)
  Game.ImportLibrary("gui/scripts/" .. _ARG_0_ .. ".lua")
  menu_root.oMenu = _G[_ARG_0_](_ARG_0_)
  
  setmetatable(menu_root, {
    __index = menu_root.FindCallback
  })
  
  return menu_root.oMenu.oRoot
end



function menu_root.Destroy(_ARG_0_)
  if menu_root.oMenu ~= nil then
    menu_root.oMenu:finalize()
    menu_root.oMenu = nil
  end
end


function menu_root.GenerateCallbackNotFoundFallback(_ARG_0_)
  return function() utils.LOG(utils.LOGTYPE_GUI, "menu_root.CallbackNotFoundFallback, Key: " .. tostring(_ARG_0_)) end
end


function menu_root.FindCallback(_ARG_0_, _ARG_1_)
  local oCallBack
  
  if menu_root.oMenu ~= nil then
    oCallBack = menu_root.oMenu:FindCallback(_ARG_1_)
  end
  
  if oCallBack == nil then
    oCallBack = menu_root.GenerateCallbackNotFoundFallback(_ARG_1_)
  end
  
  return oCallBack
end


function menu_root.PopCurrentItem()
  menu_root.oMenu:PopItem()
end


function menu_root.GetStackTopMenuProps()
  return menu_root.oMenu:GetStackTopMenuProps()
end
