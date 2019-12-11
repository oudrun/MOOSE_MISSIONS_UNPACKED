

-- ATIS Nellis AFB on 270.10 MHz AM.
atisNellis=ATIS:New(AIRBASE.Nevada.Nellis_AFB, 270.1)
atisNellis:SetRadioRelayUnitName("Radio Relay Nellis")
atisNellis:SetActiveRunway("21L")
atisNellis:SetTowerFrequencies({327.000, 132.550})
atisNellis:SetTACAN(12)
atisNellis:AddILS(109.1, "21")
atisNellis:Start()

-- For debugging: Mark runway info on F10 map.
--atisNellis:MarkRunways(true)


-- ATIS Creech AFB on 290.45 MHz AM
atisCreech=ATIS:New(AIRBASE.Nevada.Creech_AFB,  290.45)
atisCreech:SetRadioRelayUnitName("Radio Relay Creech")
atisCreech:SetTowerFrequencies({360.6, 118.3})
atisCreech:AddILS(108.7, "08")
atisCreech:SetTACAN(87)
atisCreech:Start()


-- ATIS Creech AFB on 290.45 MHz AM.
atisMcCarran=ATIS:New(AIRBASE.Nevada.McCarran_International_Airport,  132.4)
atisMcCarran:SetRadioRelayUnitName("Radio Relay McCarran")
atisMcCarran:SetTowerFrequencies({257.8, 119.9})
atisMcCarran:SetRunwayHeadingsMagnetic({"25L", "25R"})
atisMcCarran:SetActiveRunway("R")
atisMcCarran:AddILS(110.3, "25R")
atisMcCarran:AddILS(111.75, "25L")
atisMcCarran:SetVOR(116.9)
atisMcCarran:SetTACAN(116)
atisMcCarran:SetElevation()
atisMcCarran:SetRunwayLength()
atisMcCarran:Start()
