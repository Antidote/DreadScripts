function Usable.main()
end

function Usable.ShowDialogChoice(_ARG_0_, _ARG_1_)
    Usable._oUsableObject = _ARG_0_
    GUI.LaunchMessage(_ARG_1_, "Usable.OnDialogAccepted", "Usable.OnDialogDeclined")
end

function Usable.OnDialogAccepted()
    Usable._oUsableObject.USABLE:OnDialogAccepted()
end

function Usable.OnDialogDeclined()
    Usable._oUsableObject.USABLE:OnDialogDeclined()
end

function Usable.ShowDialogCanNotUse(_ARG_0_, _ARG_1_)
    Usable._oUsableObject = _ARG_0_
    GUI.LaunchMessage(_ARG_1_, "Usable.OnCanNotUseAccepted", "")
end

function Usable.OnCanNotUseAccepted()
    Usable._oUsableObject.USABLE:OnCanNotUseAccepted()
end

function Usable.ShowDialogUseSuccess(_ARG_0_, _ARG_1_)
    Usable._oUsableObject = _ARG_0_
    GUI.LaunchMessage(_ARG_1_, "Usable.OnDialogUseSuccess", "")
end

function Usable.OnDialogUseSuccess()
    Usable._oUsableObject.USABLE:OnUseSuccessAccepted()
end

function Usable.Discover(_ARG_0_)
  local oActor = Game.GetActor(_ARG_0_)
  if oActor ~= nil then
    local oUsable = oActor.USABLE
    if oUsable ~= nil then
      oUsable:Discover()
    end
  end
end
