Game.ImportLibraryWithName("actors/items/pickup/scripts/pickup.lua", "Pickup")

ItemEnergyTank = {}
setmetatable(ItemEnergyTank, {__index = Pickup})

function ItemEnergyTank.main()
end


function ItemEnergyTank.BeginPlay(_ARG_0_)
  Pickup.BeginPlay(_ARG_0_)
end


function ItemEnergyTank.EndPlay(_ARG_0_)
  Pickup.EndPlay(_ARG_0_)
end
