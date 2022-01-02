Sound.fLastBlockSoundTimeStamp = 0






















function Sound.main()






















end


function Sound.SyncBlockSound(_ARG_0_)
  print("Playing Sync block sound at " .. _ARG_0_.x .. "," .. _ARG_0_.y .. "," .. _ARG_0_.z)
  
  Game.PlayPosSound(" ", _ARG_0_.x, _ARG_0_.y, _ARG_0_.z, 1.5, 40000, 50000, 1)
end


function Sound.BlockSound(_ARG_0_, _ARG_1_)
    local fCurTime = Game.GetTimeStamp()
    
    
    
    
    
    
    
    if fCurTime - Sound.fLastBlockSoundTimeStamp > 0.15 then
        Sound.fLastBlockSoundTimeStamp = fCurTime
        Game.PlayPosSound(" ", _ARG_0_.x, _ARG_0_.y, _ARG_0_.z, 1, 2000, 50000, 1)
    end
end


function Sound.OnMagicChanged()

end


function Sound.OnMagicChangeFailure()

end
