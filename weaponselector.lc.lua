
function WeaponSelector.OnPlayerReinit()
  if hud ~= nil then
    hud.oHUDRoot:UpdateWeaponsSelector()
  end
end


function WeaponSelector.OnNewPlayerCreated(_ARG_0_, _ARG_1_)
  if hud ~= nil then
    hud.oHUDRoot:UpdateWeaponsSelector()
  end
end
