Game.ImportLibrary("gui/scripts/cinematics_items.lua")
cinematicsplayer = cinematicsplayer ~= nil and cinematicsplayer or {oRoot = nil}







function cinematicsplayer.Create(_ARG_0_)
  cinematicsplayer.oRoot = GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {Focusable = true, FocusIdx = "0"})
  cinematicsplayer.oRoot:SetEventHandler("Cancel", "cinematicsplayer.OnCancel")
  return cinematicsplayer.oRoot
end


function cinematicsplayer.OnCancel()
    
    
    
    
    
    
    
    
    
    
    
  return true
end
