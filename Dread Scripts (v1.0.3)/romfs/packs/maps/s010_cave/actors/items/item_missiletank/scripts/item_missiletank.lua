Game.ImportLibraryWithName("actors/items/pickup/scripts/pickup.lua", "Pickup")

ItemMissileTank = {}
setmetatable(ItemMissileTank, {__index = Pickup})

function ItemMissileTank.main()
end


function ItemMissileTank.BeginPlay(_ARG_0_)
  Pickup.BeginPlay(_ARG_0_)
end


function ItemMissileTank.EndPlay(_ARG_0_)
  Pickup.EndPlay(_ARG_0_)
end
