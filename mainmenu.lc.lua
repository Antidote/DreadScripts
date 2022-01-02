Game.ImportLibrary("gui/scripts/Menu.lua")









MainMenu = class.New(Menu, function(_ARG_0_, _ARG_1_)
  Menu.init(_ARG_0_, _ARG_1_)
end)


function MainMenu.GoToInitScreen(_ARG_0_)
  _ARG_0_:PopAllItems()
  _ARG_0_:PushItemByClassName("MainMenuFrontScreen", {}, false)
end
