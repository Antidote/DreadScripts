


function LogicActionTrigger.main()

end



function LogicActionTrigger.Enable(_ARG_0_, _ARG_1_, _ARG_2_)
    local oActor = Game.GetActor(_ARG_0_)
    if oActor ~= nil then
        oActor:SetWantsEnabled(true)
    end
end



function LogicActionTrigger.Disable(_ARG_0_, _ARG_1_, _ARG_2_)
    local oActor = Game.GetActor(_ARG_0_)
    if oActor ~= nil then
        oActor:SetWantsEnabled(false)
    end
end
