Game.ImportLibraryWithName("actors/characters/player/scripts/player.lua", "Player")
MorphBall = {}
setmetatable(MorphBall, {__index = Player})


function MorphBall.main()
end
