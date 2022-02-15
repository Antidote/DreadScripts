Game.ImportLibraryWithName("actors/items/pickup/scripts/pickup.lua", "Pickup")

ItemMissileTankPlus = {}
setmetatable(ItemMissileTankPlus, {__index = Pickup})

function ItemMissileTankPlus.main()
end


function ItemMissileTankPlus.BeginPlay(_ARG_0_)
  Pickup.BeginPlay(_ARG_0_)
end


function ItemMissileTankPlus.EndPlay(_ARG_0_)
  Pickup.EndPlay(_ARG_0_)
end
