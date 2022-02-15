function GrapplePoint.main()
end

function GrapplePoint.OnGrappleBeamAttached(_ARG_0_)
  local rng = math.random(2);
  Game.PlayEntitySound("weapons/grapple_hit_0" .. rng .. ".wav", _ARG_0_.sName, 0.5, 100, 3000, 1)
end

function GrapplePoint.OnGrappleBeamDetached(_ARG_0_)
end

function GrapplePoint.OnGrapplePullFinished(_ARG_0_, _ARG_1_, _ARG_2_)
  if CurrentScenario ~= nil and CurrentScenario.OnGrapplePullFinished ~= nil then
    CurrentScenario.OnGrapplePullFinished(_ARG_0_, _ARG_1_)
  end
end
