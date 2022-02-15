fxcallbacks = { lfxenabled = {} }


function fxcallbacks.SetFxEnabledOnPlayer(_ARG_0_, _ARG_1_, _ARG_2_)
  local players = {
    Game.GetDefaultPlayer(),
    Game.GetSecondaryPlayer()
  }
  for _FORV_7_, _FORV_8_ in ipairs(players) do
      if _FORV_8_ ~= nil then
          local fx = _FORV_8_.FX
          if fx  ~= nil then
              fx:SetEffectEnabled(_ARG_0_, _ARG_1_, _ARG_2_)
              if _ARG_1_ then
                  table.insert(fxcallbacks.lfxenabled, _ARG_0_)
              else
                  for _FORV_13_, _FORV_14_ in ipairs(fxcallbacks.lfxenabled) do
                      if _FORV_14_ == _ARG_0_ then
                          table.remove(fxcallbacks.lfxenabled, _FORV_13_)
                      end
                  end
              end
          end
      end
  end 
end


function fxcallbacks.OnPlayerChange()
  local players = {
    Game.GetDefaultPlayer(),
    Game.GetSecondaryPlayer()
  }
  for _FORV_4_, _FORV_5_ in ipairs(players) do
    if _FORV_5_ ~= nil then
      local fx = _FORV_5_.FX
      if fx ~= nil then
        for _FORV_10_, _FORV_11_ in ipairs(fxcallbacks.lfxenabled) do
            fx:SetEffectEnabled(_FORV_11_, true, true)
        end
      end
    end
  end
end


function fxcallbacks.OnPlayerDead()
  fxcallbacks.lfxenabled = {}
end
