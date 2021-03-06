
local Mission = MISSION:New( "Pickup Cargo", "High", "Test for Cargo Pickup", coalition.side.RED )

local DeliveryUnit = UNIT:FindByName( "Delivery" )
local Letter = CARGO_PACKAGE:New( Mission, DeliveryUnit, "Letter", "Secret Orders", "0.3", 2000, 25 )

local CargoCarrier = UNIT:FindByName( "Carrier" )

-- This call will make the Cargo run to the CargoCarrier.
-- Upon arrival at the CargoCarrier, the Cargo will be Loaded into the Carrier.
-- This process is now fully automated.
Letter:Board( CargoCarrier, 40, 3, 25, 90 ) 

