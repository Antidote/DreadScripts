mapcharactersdefs = mapcharactersdefs ~= nil and mapcharactersdefs or {}











mapcharactersdefs.tDefs = {
  Samus = {
    tScenarios = {
      s000_surface = {},
      s010_area1 = {}
    },
    tScenarioConnections = {
      {
        sScenario1 = "s000_surface",
        sScenario2 = "s010_area1"
      }
    },
    funcOnShowScenario = function(_ARG_0_)
    end
  }
}
