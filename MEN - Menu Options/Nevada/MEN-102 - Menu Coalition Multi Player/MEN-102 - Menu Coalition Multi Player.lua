
do
  -- This demo creates a menu structure for the planes within the red coalition.
  -- To test, join the planes, then look at the other radio menus (Option F10).
  -- Then switch planes and check if the menu is still there.

  local Plane1 = GROUP:FindByName( "Red Plane 1" )
  local Plane2 = GROUP:FindByName( "Red Plane 2" )
  local Plane3 = GROUP:FindByName( "Red Plane 3" )
  local Plane4 = GROUP:FindByName( "Red Plane 4" )

  -- This would create a menu for the red coalition under the main DCS "Others" menu.
  local MenuCoalitionRed = MENU_COALITION:New( coalition.side.RED, "Manage Menus" )


  local function ShowStatus( StatusText, Coalition )

    Plane1:MessageToRed( StatusText, 15 )
    Plane2:MessageToRed( StatusText, 15 )
  end

  local MenuStatus -- Menu#MENU_COALITION
  local MenuStatusShow -- Menu#MENU_COALITION_COMMAND

  local function RemoveStatusMenu()
    MenuStatus:Remove()
  end

  local function AddStatusMenu()
    
    -- This would create a menu for the red coalition under the MenuCoalitionRed menu object.
    MenuStatus = MENU_COALITION:New( coalition.side.RED, "Status for Planes" )
    MenuStatusShow = MENU_COALITION_COMMAND:New( coalition.side.RED, "Show Status", MenuStatus, ShowStatus, "Status of planes is ok!", "Message to Red Coalition" )
  end

  local MenuAdd = MENU_COALITION_COMMAND:New( coalition.side.RED, "Add Status Menu", MenuCoalitionRed, AddStatusMenu )
  local MenuRemove = MENU_COALITION_COMMAND:New( coalition.side.RED, "Remove Status Menu", MenuCoalitionRed, RemoveStatusMenu )

end



