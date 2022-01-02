-- Blank lines required



function class.New(_ARG0_, _ARG1_)
    local L2_2 = {}
    
  if not _ARG1_ and type(_ARG0_) == "function" then
      _ARG1_ = _ARG0_
      _ARG0_ = nil
  else if type(_ARG0_) == "table" then
      for L6_2, L7_2 in pairs(_ARG0_) do
        L2_2[L6_2] = L7_2
      end
      L2_2._base = _ARG0_
    end
  end
  
    L2_2.__index = L2_2
    local L3_2 = {}   
    
    
    L3_2.__call = function(A0_3, ...)
        local L2_3 = {}
        
        setmetatable(L2_3, L2_2)
        if _ARG1_ then
            _ARG1_(L2_3, ...)
        else
            if _ARG0_ and _ARG0_.init then
                 _ARG0_.init(L2_3, ...)
                end
        end
        return L2_3
    end
    L2_2.init = _ARG1_
    L2_2.is_a = function(A0_3, A1_3)
        local L2_3 = getmetatable(A0_3)
        while L2_3 do
            if L2_3 == A1_3 then return true end
            L2_3 = L2_3._base
        end
        return false
    end  
    setmetatable(L2_2, L3_2)
    return L2_2
end


function class.BindMethod(_ARG0_, _ARG1_)
  return   function(...)
    return _ARG1_(_ARG0_, unpack(arg))
  end
  
  
end


function class.BindMethodByName(_ARG0_, _ARG1_)
  return function(...)
    return _ARG0_[_ARG1_](_ARG0_, unpack(arg))
  end
  
  
end
 
