slots = slots ~= nil and slots or {}
slots.bDirty = true
slots.tRetrieveInfoRequest = nil
slots.tSlotDefs = {
  SLOT1 = {
    sID = "SLOT1",
    uSlotIdx = 4,
    sName = "#GUI_MISC023# 1",
    sProfile = "profile0"
  }
}
slots.tSlotInfo = {
  SLOT1 = {
    iState = 0,
    bSlotEnabled = false,
    sSlotDesc = ""
  }
}
slots.tInfoPendingRequest = nil








function slots.SetAllDirty()
  slots.bDirty = true
end


function slots.IsAnyDirty()
  return slots.bDirty
end


function slots.GetSlotIDByProfileID(_ARG_0_)
  local oProfileID
  
  for _FORV_5_, _FORV_6_ in pairs(slots.tSlotDefs) do
    if _FORV_6_.sProfile == _ARG_0_ then
      oProfileID = _FORV_5_
      break
    end
  end
  
  return oProfileID
end



function slots.GetSlotInfoByProfileID(_ARG_0_)
    local oProfileID = slots.GetSlotIDByProfileID(_ARG_0_)
    return slots.tSlotInfo[oProfileID]
end


function slots.SetDirtyByProfileID(_ARG_0_)
  slots.bDirty = true
end


function slots.SetDirty(_ARG_0_)
  slots.bDirty = true
end


function slots.GetSlotDefByName(_ARG_0_)
    local oSlot
    
    for _FORV_5_, _FORV_6_ in pairs(slots.tSlotDefs) do
        if _ARG_0_ == _FORV_6_.sName then
            oSlot = _FORV_6_
            break
        end
    end
    
    return oSlot
end


function slots.RetrieveSlotsInfo(_ARG_0_)
    

    if slots.bDirty then
        if slots.tRetrieveInfoRequest == nil then
            slots.tRetrieveInfoRequest = {fnOnResultCallback = _ARG_0_}
            Game.RetrieveSlotsInfo(_ARG_0_)
        else
            utils.LOG_ERR(utils.LOGTYPE_DEFAULT, "slots.RetrieveSlotsInfo. Another request is in progress")
        end
    else
    _ARG_0_()
    end
end


function slots.OnRetrieveSlotsInfoFinished(_ARG_0_)
    
    
    
    
    for _FORV_4_, _FORV_5_ in pairs(slots.tSlotInfo) do
        _FORV_5_.bSlotEnabled = false
        _FORV_5_.sSlotDesc = "#GUI_MISC025#   "
        _FORV_5_.iState = 1
    end

    if _ARG_0_ then
        slots.UpdateSlotFromProps(_ARG_0_)
    end

    slots.bDirty = false

    if slots.tRetrieveInfoRequest ~= nil then
        if slots.tRetrieveInfoRequest.fnOnResultCallback ~= nil then
            slots.tRetrieveInfoRequest.fnOnResultCallback()
        end
        slots.tRetrieveInfoRequest = nil
    end
end


function slots.GetSlotInfo(_ARG_0_)
    
  if slots.bDirty then
    utils.LOG_ERR(utils.LOGTYPE_DEFAULT, "Retrieving dirty slot info")
  end
  
  return slots.tSlotInfo[_ARG_0_]
end


function slots.UpdateSlotFromProps(_ARG_0_)
    
    
    
    
    if _ARG_0_.ProfileID ~= nil then
        local oSlot = slots.GetSlotInfoByProfileID(_ARG_0_.ProfileID)
        oSlot.bSlotEnabled = true
        if _ARG_0_.ValidData then
            oSlot.iState = 0
            oSlot.sSlotDesc = _ARG_0_.Description
        else
            oSlot.iState = 2
            oSlot.sSlotDesc = "#GUI_ERROR_CORRUPTEDDATA"
        end
    end
end
