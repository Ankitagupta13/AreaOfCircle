-----------------------------------------------------------------------------------------
--
-- Created by: Mouaffak Koubeisy
-- Created on: Feb 28 2018
-- This code calculates the area of a circle by the inputed diameter
-----------------------------------------------------------------------------------------
local diameterOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
diameterOfCircleTextField.id = "length textField"

local areaOfCircleTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfCircleTextField.id = "area textField"
areaOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfCircle
    local areaOfCircle
 
    diameterOfCircle = diameterOfCircleTextField.text
    areaOfCircle = 3.14159265359 * (( diameterOfCircle/2 )^2)
    -- print( areaOfCircle )
    areaOfCircleTextField.text = "The area is " .. areaOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )