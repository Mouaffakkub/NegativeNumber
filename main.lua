-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: May 31st 2018
-----------------------------------------------------------------------------------------

local numberTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 300, 450, 75 )
numberTextField.id = "number textField"

local numberField = display.newText( " Input Number ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
numberField.id = "number textField"
numberField:setFillColor( 1, 1, 1 )

local rightField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
rightField.id = "right textField"
rightField:setFillColor( 1, 1, 1)

local lowerField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
lowerField.id = "lower textField"
lowerField:setFillColor( 1, 1, 1)

local higherField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
higherField.id = "higher textField"
higherField:setFillColor( 1, 1, 1)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 425, 251 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local number

local function calculateButtonTouch( event )

    number = tonumber (numberTextField.text)
    local zero = 0

    if number < zero  then
        numberField.text = " That number is negative "
    elseif number > zero  then
    	numberField.text = " That number is positive "
    else numberField.text = " That number is zero "
    return true
    end
end
calculateButton:addEventListener( "touch", calculateButtonTouch )