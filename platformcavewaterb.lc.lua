Game.ImportLibraryWithName("actors/props/usable/scripts/usable.lua", "Usable")
PlatformCaveWater = {}
setmetatable(PlatformCaveWater, {__index = Usable})


function PlatformCaveWater.ShowDialogChoice(_ARG_0_, _ARG_1_)
    
end

function PlatformCaveWater.OnUseCompleted(_ARG_0_)
  CurrentScenario.Event_WaterPoolInfiltration_Activate()
end
