-----------------------------------------------------------------------------------------
--
-- level1_screen.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the level 1 screen of the game.
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level1_screen"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local bkg
local symmetryBox
local mirrorWall
local groundLine
local timerSpot

local side1Text
local side2Text

local instructionText
local instructionText2

local shape1Box
local shape2Box
local shape3Box
local shape4Box

local correctShapeAnswer

local shapeAnswerSlot1
local shapeAnswerSlot2
local shapeAnswerSlot3

local correctShapeAnswerAlreadyTouched
local shapeAnswerSlot1AlreadyTouched
local shapeAnswerSlot2AlreadyTouched
local shapeAnswerSlot3AlreadyTouched

local correctShapeAnswerPreviousY
local shapeAnswerSlot1PreviousY
local shapeAnswerSlot2PreviousY
local shapeAnswerSlot3PreviousY

local correctShapeAnswerPreviousX
local shapeAnswerSlot1PreviousX
local shapeAnswerSlot2PreviousX
local shapeAnswerSlot3PreviousX

local correctShapeAnswerBoxPlaceholder

local triangleVertices1
local triangle1
local triangleVertices2
local triangle2

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------
local function MakeEverythingFalse()
	correctShapeAnswerAlreadyTouched = false
	shapeAnswerSlot1AlreadyTouched = false
	shapeAnswerSlot2AlreadyTouched = false
	shapeAnswerSlot3AlreadyTouched = false
end

local function RandomAnswerPositions()
	local randomPosition

	randomPosition = math.random(1, 4)

	if (randomPosition == 1) then
		correctShapeAnswer.x = display.contentWidth/3*1
		correctShapeAnswer.y = display.contentHeight/3*2.675

		shapeAnswerSlot1.x = display.contentWidth/3*1.5
		shapeAnswerSlot1.y = display.contentHeight/3*2.675

		shapeAnswerSlot2.x = display.contentWidth/3*2
		shapeAnswerSlot2.y = display.contentHeight/3*2.675

		shapeAnswerSlot3.x = display.contentWidth/3*2.5
		shapeAnswerSlot3.y = display.contentHeight/3*2.675

		shapeAnswerSlot1PreviousY = shapeAnswerSlot1.y
		shapeAnswerSlot2PreviousY = shapeAnswerSlot2.y
		shapeAnswerSlot3PreviousY = shapeAnswerSlot3.y

		correctShapeAnswerPreviousY = correctShapeAnswer.y

		shapeAnswerSlot1PreviousX = shapeAnswerSlot1.x
		shapeAnswerSlot2PreviousX = shapeAnswerSlot2.x
		shapeAnswerSlot3PreviousX = shapeAnswerSlot3.x

		correctShapeAnswerPreviousX = correctShapeAnswer.x

	elseif (randomPosition == 2) then
		correctShapeAnswer.x = display.contentWidth/3*1.5
		correctShapeAnswer.y = display.contentHeight/3*2.675
		shapeAnswerSlot1.x = display.contentWidth/3*1
		shapeAnswerSlot1.y = display.contentHeight/3*2.675
		shapeAnswerSlot2.x = display.contentWidth/3*2.5
		shapeAnswerSlot2.y = display.contentHeight/3*2.675
		shapeAnswerSlot3.x = display.contentWidth/3*2
		shapeAnswerSlot3.y = display.contentHeight/3*2.675

		shapeAnswerSlot1PreviousY = shapeAnswerSlot1.y
		shapeAnswerSlot2PreviousY = shapeAnswerSlot2.y
		shapeAnswerSlot3PreviousY = shapeAnswerSlot3.y
		correctShapeAnswerPreviousY = correctShapeAnswer.y

		shapeAnswerSlot1PreviousX = shapeAnswerSlot1.x
		shapeAnswerSlot2PreviousX = shapeAnswerSlot2.x
		shapeAnswerSlot3PreviousX = shapeAnswerSlot3.x
		correctShapeAnswerPreviousX = correctShapeAnswer.x

	elseif (randomPosition == 3) then
		correctShapeAnswer.x = display.contentWidth/3*2
		correctShapeAnswer.y = display.contentHeight/3*2.675
		shapeAnswerSlot1.x = display.contentWidth/3*2.5
		shapeAnswerSlot1.y = display.contentHeight/3*2.675
		shapeAnswerSlot2.x = display.contentWidth/3*1
		shapeAnswerSlot2.y = display.contentHeight/3*2.675
		shapeAnswerSlot3.x = display.contentWidth/3*1.5
		shapeAnswerSlot3.y = display.contentHeight/3*2.675  

		shapeAnswerSlot1PreviousY = shapeAnswerSlot1.y
		shapeAnswerSlot2PreviousY = shapeAnswerSlot2.y
		shapeAnswerSlot3PreviousY = shapeAnswerSlot3.y
		correctShapeAnswerPreviousY = correctShapeAnswer.y

		shapeAnswerSlot1PreviousX = shapeAnswerSlot1.x
		shapeAnswerSlot2PreviousX = shapeAnswerSlot2.x
		shapeAnswerSlot3PreviousX = shapeAnswerSlot3.x
		correctShapeAnswerPreviousX = correctShapeAnswer.x

	elseif (randomPosition == 4) then
		correctShapeAnswer.x = display.contentWidth/3*2.5
		correctShapeAnswer.y = display.contentHeight/3*2.675
		shapeAnswerSlot1.x = display.contentWidth/3*2
		shapeAnswerSlot1.y = display.contentHeight/3*2.675
		shapeAnswerSlot2.x = display.contentWidth/3*1.5
		shapeAnswerSlot2.y = display.contentHeight/3*2.675
		shapeAnswerSlot3.x = display.contentWidth/3*1
		shapeAnswerSlot3.y = display.contentHeight/3*2.675

		shapeAnswerSlot1PreviousY = shapeAnswerSlot1.y
		shapeAnswerSlot2PreviousY = shapeAnswerSlot2.y
		shapeAnswerSlot3PreviousY = shapeAnswerSlot3.y
		correctShapeAnswerPreviousY = correctShapeAnswer.y

		shapeAnswerSlot1PreviousX = shapeAnswerSlot1.x
		shapeAnswerSlot2PreviousX = shapeAnswerSlot2.x
		shapeAnswerSlot3PreviousX = shapeAnswerSlot3.x
		correctShapeAnswerPreviousX = correctShapeAnswer.x

	end
end

local function TouchListenerCorrectShapeAnswer(touch)

	if (shapeAnswerSlot1AlreadyTouched == false) and
		(shapeAnswerSlot2AlreadyTouched == false) and
		(shapeAnswerSlot3AlreadyTouched == false) then

		if (touch.phase == "began") then

			correctShapeAnswerAlreadyTouched = true

		elseif (touch.phase == "moved") then

			correctShapeAnswer.x = touch.x
			correctShapeAnswer.y = touch.y

		elseif (touch.phase == "ended") then

			correctShapeAnswerAlreadyTouched = false

				 -- if the number is dragged into the userAnswerBox, place it in the center of it
			if (((correctShapeAnswerBoxPlaceholder.x - correctShapeAnswerBoxPlaceholder.width/2) < correctShapeAnswer.x ) and
				((correctShapeAnswerBoxPlaceholder.x + correctShapeAnswerBoxPlaceholder.width/2) > correctShapeAnswer.x ) and 
				((correctShapeAnswerBoxPlaceholder.y - correctShapeAnswerBoxPlaceholder.height/2) < correctShapeAnswer.y ) and 
				((correctShapeAnswerBoxPlaceholder.y + correctShapeAnswerBoxPlaceholder.height/2) > correctShapeAnswer.y ) ) then

				-- setting the position of the number to be in the center of the box
				correctShapeAnswer.x = correctShapeAnswerBoxPlaceholder.x
				correctShapeAnswer.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   MakeEverythingFalse()
			   correctShapeAnswer:toFront()
			--else make box go back to where it was
			else
				correctShapeAnswer.x = correctShapeAnswerPreviousX
				correctShapeAnswer.y = correctShapeAnswerPreviousY
				correctShapeAnswer:toFront()

			end
		end
	end                
end 

local function TouchListenerShapeAnswerSlot1(touch)

	if (correctShapeAnswerAlreadyTouched == false) and (shapeAnswerSlot2AlreadyTouched == false) and
		(shapeAnswerSlot2AlreadyTouched == false) and
		(shapeAnswerSlot3AlreadyTouched == false) then

		if (touch.phase == "began") then

			shapeAnswerSlot1AlreadyTouched = true

		elseif (touch.phase == "moved") then

			shapeAnswerSlot1.x = touch.x
			shapeAnswerSlot1.y = touch.y

		elseif (touch.phase == "ended") then

			shapeAnswerSlot1AlreadyTouched = false

				 -- if the number is dragged into the userAnswerBox, place it in the center of it
			if (((correctShapeAnswerBoxPlaceholder.x - correctShapeAnswerBoxPlaceholder.width/2) < shapeAnswerSlot1.x ) and
				((correctShapeAnswerBoxPlaceholder.x + correctShapeAnswerBoxPlaceholder.width/2) > shapeAnswerSlot1.x ) and 
				((correctShapeAnswerBoxPlaceholder.y - correctShapeAnswerBoxPlaceholder.height/2) < shapeAnswerSlot1.y ) and 
				((correctShapeAnswerBoxPlaceholder.y + correctShapeAnswerBoxPlaceholder.height/2) > shapeAnswerSlot1.y ) ) then

				-- setting the position of the number to be in the center of the box
				shapeAnswerSlot1.x = correctShapeAnswerBoxPlaceholder.x
				shapeAnswerSlot1.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   MakeEverythingFalse()
			   shapeAnswerSlot1:toFront()
			--else make box go back to where it was
			else
				shapeAnswerSlot1.x = shapeAnswerSlot1PreviousX
				shapeAnswerSlot1.y = shapeAnswerSlot1PreviousY
				shapeAnswerSlot1:toFront()

			end
		end
	end                
end

local function TouchListenerShapeAnswerSlot2(touch)

	if (correctShapeAnswerAlreadyTouched == false) and
		(shapeAnswerSlot1AlreadyTouched == false) and
		(shapeAnswerSlot3AlreadyTouched == false) then

		if (touch.phase == "began") then

			shapeAnswerSlot2AlreadyTouched = true

		elseif (touch.phase == "moved") then

			shapeAnswerSlot2.x = touch.x
			shapeAnswerSlot2.y = touch.y

		elseif (touch.phase == "ended") then

			shapeAnswerSlot2AlreadyTouched = false

				 -- if the number is dragged into the userAnswerBox, place it in the center of it
			if (((correctShapeAnswerBoxPlaceholder.x - correctShapeAnswerBoxPlaceholder.width/2) < shapeAnswerSlot2.x ) and
				((correctShapeAnswerBoxPlaceholder.x + correctShapeAnswerBoxPlaceholder.width/2) > shapeAnswerSlot2.x ) and 
				((correctShapeAnswerBoxPlaceholder.y - correctShapeAnswerBoxPlaceholder.height/2) < shapeAnswerSlot2.y ) and 
				((correctShapeAnswerBoxPlaceholder.y + correctShapeAnswerBoxPlaceholder.height/2) > shapeAnswerSlot2.y ) ) then

				-- setting the position of the number to be in the center of the box
				shapeAnswerSlot2.x = correctShapeAnswerBoxPlaceholder.x
				shapeAnswerSlot2.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   shapeAnswerSlot2:toFront()
			   MakeEverythingFalse()
			--else make box go back to where it was
			else
				shapeAnswerSlot2.x = shapeAnswerSlot2PreviousX
				shapeAnswerSlot2.y = shapeAnswerSlot2PreviousY
				shapeAnswerSlot2:toFront()

			end
		end
	end                
end

local function TouchListenerShapeAnswerSlot3(touch)

	if (correctShapeAnswerAlreadyTouched == false) and
		(shapeAnswerSlot1AlreadyTouched == false) and
		(shapeAnswerSlot2AlreadyTouched == false) then

		if (touch.phase == "began") then

			shapeAnswerSlot3AlreadyTouched = true

		elseif (touch.phase == "moved") then

			shapeAnswerSlot3.x = touch.x
			shapeAnswerSlot3.y = touch.y

		elseif (touch.phase == "ended") then

			shapeAnswerSlot3AlreadyTouched = false

				 -- if the number is dragged into the userAnswerBox, place it in the center of it
			if (((correctShapeAnswerBoxPlaceholder.x - correctShapeAnswerBoxPlaceholder.width/2) < shapeAnswerSlot3.x ) and
				((correctShapeAnswerBoxPlaceholder.x + correctShapeAnswerBoxPlaceholder.width/2) > shapeAnswerSlot3.x ) and 
				((correctShapeAnswerBoxPlaceholder.y - correctShapeAnswerBoxPlaceholder.height/2) < shapeAnswerSlot3.y ) and 
				((correctShapeAnswerBoxPlaceholder.y + correctShapeAnswerBoxPlaceholder.height/2) > shapeAnswerSlot3.y ) ) then

				-- setting the position of the number to be in the center of the box
				shapeAnswerSlot3.x = correctShapeAnswerBoxPlaceholder.x
				shapeAnswerSlot3.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   shapeAnswerSlot3:toFront()
			   MakeEverythingFalse()
			--else make box go back to where it was
			else
				shapeAnswerSlot3.x = shapeAnswerSlot3PreviousX
				shapeAnswerSlot3.y = shapeAnswerSlot3PreviousY
				shapeAnswerSlot3:toFront()

			end
		end
	end                
end

local function RotateClock()
	timerSpot:rotate(-1)
end

local function StopLevel()

	if (timerSpot.rotation == 360) then
		transition.cancel(RotateClock)
	end
end

local function AddShapeListeners()

	correctShapeAnswer:addEventListener("touch", TouchListenerCorrectShapeAnswer)
	shapeAnswerSlot1:addEventListener("touch", TouchListenerShapeAnswerSlot1)
	shapeAnswerSlot2:addEventListener("touch", TouchListenerShapeAnswerSlot2)
	shapeAnswerSlot3:addEventListener("touch", TouchListenerShapeAnswerSlot3)
	Runtime:addEventListener("enterFrame", RotateClock)
end


local function RemoveShapeListeners()

	correctShapeAnswer:removeEventListener("touch", TouchListenerCorrectShapeAnswer)
	shapeAnswerSlot1:removeEventListener("touch", TouchListenerShapeAnswerSlot1)
	shapeAnswerSlot2:removeEventListener("touch", TouchListenerShapeAnswerSlot2)
	shapeAnswerSlot3:removeEventListener("touch", TouchListenerShapeAnswerSlot3)
	Runtime:removeEventListener("enterFrame", RotateClock)
end

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

	-- Creating a group that associates objects with the scene
	local sceneGroup = self.view

	-----------------------------------------------------------------------------------------

	-- Insert the background image
	bkg = display.newRect(0, 0, display.contentWidth*2, display.contentHeight*2)

	-- creating the symmetry box
	symmetryBox = display.newRect(display.contentWidth/2, display.contentHeight/2.2, display.contentWidth/3*2, display.contentHeight/2*1.3)
	symmetryBox.strokeWidth = 5
	symmetryBox:setFillColor(1, 1, 1)
	symmetryBox:setStrokeColor(0, 0, 0)

	-- creating the mirror wall
	mirrorWall = display.newRect(display.contentWidth/2, display.contentHeight/2.2, 20, display.contentHeight/2*1.3)
	mirrorWall:setFillColor(0, 0, 0)

	-- creating the ground line
	groundLine = display.newRect(display.contentWidth/2, 600, display.contentWidth, 5)
	groundLine:setFillColor(0, 0, 0)

	-- creating the timerSpot
	timerSpot = display.newImage("Images/clock.png", display.contentWidth/3*2.75, display.contentHeight/4*1.2)
	timerSpot:scale(0.28, 0.28)
	timerSpot.width = 650
	timerSpot.height = 650


	-- creating side1Text
	side1Text = display.newText("Side 1", display.contentWidth/3, display.contentHeight/16, nil, 50)
	side1Text:setFillColor(0, 0, 0)

	-- creating side2Text
	side2Text = display.newText("Place Side 2", display.contentWidth/1.5, display.contentHeight/16, nil, 50)
	side2Text:setFillColor(0, 0, 0)

	-- creating instructions text
	instructionText = display.newText("Press & ", display.contentWidth/10, display.contentHeight/2*1.7, nil, 40)
	instructionText:setFillColor(0, 0, 0)

	-- creating instructions text pt 2
	instructionText2 = display.newText("drag shape", display.contentWidth/8, display.contentHeight/2*1.8, nil, 40)
	instructionText2:setFillColor(0, 0, 0)

	-- creating shape1Box
	shape1Box = display.newRect(display.contentWidth/3*1, display.contentHeight/3*2.675, 150, 150)
	shape1Box:setFillColor(1, 1, 1)
	shape1Box:setStrokeColor(0, 0, 0)
	shape1Box.strokeWidth = 25

	-- creating shape2Box
	shape2Box = display.newRect(display.contentWidth/3*1.5, display.contentHeight/3*2.675, 150, 150)
	shape2Box:setFillColor(1, 1, 1)
	shape2Box:setStrokeColor(0, 0, 0)
	shape2Box.strokeWidth = 25

	-- creating shape3Box
	shape3Box = display.newRect(display.contentWidth/3*2, display.contentHeight/3*2.675, 150, 150)
	shape3Box:setFillColor(1, 1, 1)
	shape3Box:setStrokeColor(0, 0, 0)
	shape3Box.strokeWidth = 25

	-- creating shape4Box
	shape4Box = display.newRect(display.contentWidth/3*2.5, display.contentHeight/3*2.675, 150, 150)
	shape4Box:setFillColor(1, 1, 1)
	shape4Box:setStrokeColor(0, 0, 0)
	shape4Box.strokeWidth = 25

	-- creating correctShapeAnswer
	correctShapeAnswer = display.newRect(display.contentWidth/3*1, display.contentHeight/3*2.675, 25, 20)
	correctShapeAnswer:setFillColor(0, 0, 0)
	correctShapeAnswer:toFront()

	-- creating shapeAnswerSlot1
	shapeAnswerSlot1 = display.newRect(display.contentWidth/3*1.5, display.contentHeight/3*2.675, 25, 30)
	shapeAnswerSlot1:setFillColor(0, 0, 0)
	shapeAnswerSlot1:toFront()

	-- creating shapeAnswerSlot2h
	shapeAnswerSlot2 = display.newRect(display.contentWidth/3*2, display.contentHeight/3*2.675, 25, 40)
	shapeAnswerSlot2:setFillColor(0, 0, 0)
	shapeAnswerSlot2:toFront()

	-- creating shapeAnswerSlot3
	shapeAnswerSlot3 = display.newRect(display.contentWidth/3*2.5, display.contentHeight/3*2.675, 25, 50)
	shapeAnswerSlot3:setFillColor(0, 0, 0)
	shapeAnswerSlot3:toFront()

	-- making everything false
	correctShapeAnswerAlreadyTouched = false
	shapeAnswerSlot1AlreadyTouched = false
	shapeAnswerSlot2AlreadyTouched = false
	shapeAnswerSlot3AlreadyTouched = false

	-- creating correctShapeAnswerBoxPlaceholder
	correctShapeAnswerBoxPlaceholder = display.newRect(585, 200, 100, 100)
	correctShapeAnswerBoxPlaceholder:setFillColor(1, 1, 1)
	correctShapeAnswerBoxPlaceholder:setStrokeColor(0, 0, 0)
	correctShapeAnswerBoxPlaceholder.strokeWidth = 5

	-- creating triangleVertices1
	triangleVertices1 = { 130, 20, 250, 110, 130, 200}

	-- creating triangle1
	triangle1 = display.newPolygon(445, 200, triangleVertices1)
	triangle1:setFillColor(0, 0, 0)

	-- creating triangleVertices2
	triangleVertices2 = { 130, 20, 250, 110, 130, 200}

	-- creating triangle2
	triangle2 = display.newPolygon(445, 200, triangleVertices2)
	triangle2:setFillColor(0, 0, 0)

	-- Insert background image into the scene group in order to ONLY be associated with this scene
	sceneGroup:insert( bkg )
	sceneGroup:insert( symmetryBox )  
	sceneGroup:insert( mirrorWall )  
	sceneGroup:insert( groundLine )
	sceneGroup:insert( timerSpot )
	sceneGroup:insert( side1Text )
	sceneGroup:insert( side2Text )
	sceneGroup:insert( instructionText )
	sceneGroup:insert( instructionText2 )
	sceneGroup:insert( shape1Box )
	sceneGroup:insert( shape2Box )
	sceneGroup:insert( shape3Box )
	sceneGroup:insert( shape4Box )
	sceneGroup:insert( correctShapeAnswer )
	sceneGroup:insert( shapeAnswerSlot1 )
	sceneGroup:insert( shapeAnswerSlot2 )
	sceneGroup:insert( shapeAnswerSlot3 )
	sceneGroup:insert( correctShapeAnswerBoxPlaceholder )
	sceneGroup:insert( triangle1 )
	sceneGroup:insert( triangle2 )



end --function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

	-- Creating a group that associates objects with the scene
	local sceneGroup = self.view
	local phase = event.phase

	-----------------------------------------------------------------------------------------

	if ( phase == "will" ) then

		-- Called when the scene is still off screen (but is about to come on screen).
	-----------------------------------------------------------------------------------------

	elseif ( phase == "did" ) then

		-- Called when the scene is now on screen.
		-- Insert code here to make the scene come alive.
		-- Example: start timers, begin animation, play audio, etc.
		AddShapeListeners()
		RandomAnswerPositions()
	end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

	-- Creating a group that associates objects with the scene
	local sceneGroup = self.view
	local phase = event.phase

	-----------------------------------------------------------------------------------------

	if ( phase == "will" ) then
		-- Called when the scene is on screen (but is about to go off screen).
		-- Insert code here to "pause" the scene.
		-- Example: stop timers, stop animation, stop audio, etc.

	-----------------------------------------------------------------------------------------

	elseif ( phase == "did" ) then
		-- Called immediately after scene goes off screen.
		RemoveShapeListeners()
	end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

	-- Creating a group that associates objects with the scene
	local sceneGroup = self.view

	-----------------------------------------------------------------------------------------

	-- Called prior to the removal of scene's view ("sceneGroup").
	-- Insert code here to clean up the scene.
	-- Example: remove display objects, save state, etc.

end -- function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
