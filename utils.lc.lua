utils = utils or {}
utils.LOGTYPE_DEFAULT = 1
utils.LOGTYPE_AI = 2
utils.LOGTYPE_LUA = 3
utils.LOGTYPE_GUI = 4
utils.LOGTYPE_SOUND = 5
utils.LOGTYPE_EDITOR = 6
utils.LOGTYPE_LOGIC = 7
utils.LOGTYPE_ANIMS = 8
utils.LOGTYPE_FX = 9
utils.LOGTYPE_MEM = 10



function utils.CreateNElemsArray(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  for L6_2 = 1, _ARG_1_, 1 do
    L2_2[L6_2] = _ARG_0_
  end
  
  return L2_2
end


function utils.DeepCopy(_ARG0_)
    local t = type(_ARG0_) 
  local L2_2 = nil
  if t == "table" then
    L2_2 = {}
    for _FORV_5_, _FORV_7_ in next, _ARG0_, nil do
      L2_2[utils.DeepCopy(_FORV_5_)] = utils.DeepCopy(_FORV_7_)
    end
    setmetatable(L2_2, utils.DeepCopy(getmetatable(_ARG0_)))
  else
    L2_2 = _ARG0_
  end
  return L2_2
end


function utils.Merge(_ARG_0_, _ARG_1_)
  local L2_2 = {}
  
  for L6_2, L7_2 in pairs(_ARG_0_) do L2_2[L6_2] = L7_2 end
  for L6_2, L7_2 in pairs(_ARG_1_) do L2_2[L6_2] = L7_2 end
  
  return L2_2
end


function utils.GetArrayIndexByID(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_.sID == _ARG_1_ then 
      return _FORV_5_
    end
  end
  return -1
end


function utils.Split(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil then
    _ARG_1_ = "%s+"
  end
  local L2_2 = {}
  for L6_2 in string.gmatch(_ARG_0_, "([^" .. _ARG_1_ .. "]+)") do
    table.insert(L2_2, L6_2)
  end
  return L2_2
end


function utils.LOG(_ARG_0_, _ARG_1_)
  if Init.DEBUG then
    Game.Log(_ARG_0_, _ARG_1_)
  end
end


function utils.LOG_WARN(_ARG_0_, _ARG_1_)
  if Init.DEBUG then
    Game.LogWarn(_ARG_0_, _ARG_1_)
  end
end


function utils.LOG_ERR(_ARG_0_, _ARG_1_)
  if Init.DEBUG then
    Game.LogError(_ARG_0_, _ARG_1_)
  end
end


function utils.GeneratePopupUntilSuccess(_ARG_0_)
  if not GUI.MainMenuShowPopUp(_ARG_0_) then
    Game.AddSF(0.1, "utils.GeneratePopupUntilSuccess", "s", _ARG_0_)
  end
end
