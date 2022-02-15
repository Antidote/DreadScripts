


function Trigger.main()
    
end



function Trigger.Enable(_ARG_0_, _ARG_1_, _ARG_2_)
    local oActor = Game.GetActor(_ARG_0_)
    if oActor ~= nil then
        oActor:SetWantsEnabled(true)
    end
end



function Trigger.Disable(_ARG_0_, _ARG_1_, _ARG_2_)
    local oActor = Game.GetActor(_ARG_0_)
    if  oActor ~= nil then
        oActor:SetWantsEnabled(false)
    end
end
