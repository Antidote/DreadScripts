SmartObjectDialog = {}



function SmartObjectDialog.ShowDialogChoice(_ARG_0_, _ARG_1_)
  SmartObjectDialog.oSmartObject = _ARG_1_
end


function SmartObjectDialog.OnDialogAccepted()
  SmartObjectDialog.oSmartObject.OnDialogAccepted()
end


function SmartObjectDialog.OnDialogDeclined()
  SmartObjectDialog.oSmartObject.OnDialogDeclined()
end


function SmartObjectDialog.ShowDialogContinue(_ARG_0_, _ARG_1_)
  SmartObjectDialog.oSmartObject = _ARG_1_
end


function SmartObjectDialog.OnDialogContinued()
  SmartObjectDialog.oSmartObject.OnDialogContinued()
end
