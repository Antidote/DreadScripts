


function cutscene.Create(_ARG_0_)
  local container = GUI.CreateDisplayObjectEx("Cutscene", "CDisplayObjectContainer", 
                                              {StageID = "Up", Enabled = true, Depth = "0.05", })
  
  GUI.CreateDisplayObject(container, "CutsceneStageLabel", "CLabel", 
                          { BottomY = "0.15", LeftX = "0.02", Outline = true, Enabled = false })
  
  GUI.CreateDisplayObject(container, "CutsceneForceSkip", "CLabel", 
                          { BottomY = "0.15", LeftX = "0.7", Outline = true, Enabled = true })
  return container
end


function cutscene.OnAnimatedCameraStarted(_ARG_0_)
end


function cutscene.OnAnimatedCameraFinished(_ARG_0_)
end
