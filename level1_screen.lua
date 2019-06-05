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

local correctTriangle
local correctTriangleVertices
local triangleVertices1
local triangle1
local triangleVertices2
local triangle2
local triangleVertices3 
local triangle3
local triangleVertices4
local triangle4

local triangle1PreviousX
local triangle2PreviousX
local triangle3PreviousX
local triangle4PreviousX

local triangle1PreviousY
local triangle2PreviousY
local triangle3PreviousY
local triangle4PreviousY

local correctTrapezoid
local correctTrapezoidVertices

local trapezoid1Vertices
local trapezoid1
local trapezoid2Vertices
local trapezoid2
local trapezoid3Vertices
local trapezoid3
local trapezoid4Vertices
local trapezoid4

local trapezoid1PreviousX
local trapezoid2PreviousX
local trapezoid3PreviousX
local trapezoid4PreviousX

local trapezoid1PreviousY
local trapezoid2PreviousY
local trapezoid3PreviousY
local trapezoid4PreviousY

local userTriangle
local userTrapezoid
local score
local scoreText
local lives
local heart1
local heart2
local heart3
local questionsCorrect
local questionsIncorrect
-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------
local function MakeEverythingFalse()
	correctShapeAnswerAlreadyTouched = false
	shapeAnswerSlot1AlreadyTouched = false
	shapeAnswerSlot2AlreadyTouched = false
	shapeAnswerSlot3AlreadyTouched = false
end

local function RandomizeShapeQuestion()
	local randomShape

	randomShape = math.random(1, 2)

	if (randomShape == 1) then
		triangle1.isVisible = true
		triangle2.isVisible = true
		triangle3.isVisible = true
		triangle4.isVisible = true
		correctTriangle.isVisible = true

		trapezoid1.isVisible = false
		trapezoid2.isVisible = false
		trapezoid3.isVisible = false
		trapezoid4.isVisible = false
		correctTrapezoid.isVisible = false

	elseif (randomShape == 2) then
		triangle1.isVisible = false
		triangle2.isVisible = false
		triangle3.isVisible = false
		triangle4.isVisible = false
		correctTriangle.isVisible = false

		trapezoid1.isVisible = true
		trapezoid2.isVisible = true
		trapezoid3.isVisible = true
		trapezoid4.isVisible = true
		correctTrapezoid.isVisible = true

	end
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

		triangle1PreviousY = triangle1.y
		triangle2PreviousY = triangle2.y
		triangle3PreviousY = triangle3.y
		triangle4PreviousY = triangle4.y

		triangle1PreviousX = triangle1.x
		triangle2PreviousX = triangle2.x
		triangle3PreviousX = triangle3.x
		triangle4PreviousX = triangle4.x

		trapezoid1PreviousY = trapezoid1.y
		trapezoid2PreviousY = trapezoid2.y
		trapezoid3PreviousY = trapezoid3.y
		trapezoid4PreviousY = trapezoid4.y

		trapezoid1PreviousX = trapezoid1.x
		trapezoid2PreviousX = trapezoid2.x
		trapezoid3PreviousX = trapezoid3.x
		trapezoid4PreviousX = trapezoid4.x

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

		triangle1PreviousY = triangle1.y
		triangle2PreviousY = triangle2.y
		triangle3PreviousY = triangle3.y
		triangle4PreviousY = triangle4.y

		triangle1PreviousX = triangle1.x
		triangle2PreviousX = triangle2.x
		triangle3PreviousX = triangle3.x
		triangle4PreviousX = triangle4.x

		trapezoid1PreviousY = trapezoid1.y
		trapezoid2PreviousY = trapezoid2.y
		trapezoid3PreviousY = trapezoid3.y
		trapezoid4PreviousY = trapezoid4.y

		trapezoid1PreviousX = trapezoid1.x
		trapezoid2PreviousX = trapezoid2.x
		trapezoid3PreviousX = trapezoid3.x
		trapezoid4PreviousX = trapezoid4.x

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

		triangle1PreviousY = triangle1.y
		triangle2PreviousY = triangle2.y
		triangle3PreviousY = triangle3.y
		triangle4PreviousY = triangle4.y

		triangle1PreviousX = triangle1.x
		triangle2PreviousX = triangle2.x
		triangle3PreviousX = triangle3.x
		triangle4PreviousX = triangle4.x

		trapezoid1PreviousY = trapezoid1.y
		trapezoid2PreviousY = trapezoid2.y
		trapezoid3PreviousY = trapezoid3.y
		trapezoid4PreviousY = trapezoid4.y

		trapezoid1PreviousX = trapezoid1.x
		trapezoid2PreviousX = trapezoid2.x
		trapezoid3PreviousX = trapezoid3.x
		trapezoid4PreviousX = trapezoid4.x

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

		triangle1PreviousY = triangle1.y
		triangle2PreviousY = triangle2.y
		triangle3PreviousY = triangle3.y
		triangle4PreviousY = triangle4.y

		triangle1PreviousX = triangle1.x
		triangle2PreviousX = triangle2.x
		triangle3PreviousX = triangle3.x
		triangle4PreviousX = triangle4.x

		trapezoid1PreviousY = trapezoid1.y
		trapezoid2PreviousY = trapezoid2.y
		trapezoid3PreviousY = trapezoid3.y
		trapezoid4PreviousY = trapezoid4.y

		trapezoid1PreviousX = trapezoid1.x
		trapezoid2PreviousX = trapezoid2.x
		trapezoid3PreviousX = trapezoid3.x
		trapezoid4PreviousX = trapezoid4.x

	end
end

local function KeepShapeCoords()
	triangle1.x = correctShapeAnswer.x
	triangle2.x = shapeAnswerSlot1.x
	triangle3.x = shapeAnswerSlot2.x
	triangle4.x = shapeAnswerSlot3.x

	triangle1.y = correctShapeAnswer.y
	triangle2.y = shapeAnswerSlot1.y
	triangle3.y = shapeAnswerSlot2.y
	triangle4.y = shapeAnswerSlot3.y

	trapezoid1.x = correctShapeAnswer.x
	trapezoid2.x = shapeAnswerSlot1.x
	trapezoid3.x = shapeAnswerSlot2.x
	trapezoid4.x = shapeAnswerSlot3.x
	
	trapezoid1.y = correctShapeAnswer.y
	trapezoid2.y = shapeAnswerSlot1.y
	trapezoid3.y = shapeAnswerSlot2.y
	trapezoid4.y = shapeAnswerSlot3.y
end

local function RandomizeSampleShape()
	local randomRotation

	randomRotation = math.random(1, 4)

	if (randomRotation == 1) then
		correctTriangle.rotation = 0
		correctTrapezoid.rotation = 0

	elseif (randomRotation == 2) then
		correctTriangle.rotation = 90
		correctTrapezoid.rotation = 90

	elseif (randomRotation == 3) then
		correctTriangle.rotation = 180
		correctTrapezoid.rotation = 180

	elseif (randomRotation == 4) then
		correctTriangle.rotation = 270
		correctTrapezoid.rotation = 270
	end
end

local function CheckDirectionTriangle()
	if (correctTriangle.rotation == 0) then
		correctShapeAnswerBoxPlaceholder.rotation = 0

	elseif (correctTriangle.rotation == 90) then
		correctShapeAnswerBoxPlaceholder.rotation = 270

	elseif (correctTriangle.rotation == 180) then
		correctShapeAnswerBoxPlaceholder.rotation = 180

		elseif (correctTriangle.rotation == 270) then
			correctShapeAnswerBoxPlaceholder.rotation = 90
	end
end

local function CheckDirectionTrapezoid()
	if (correctTrapezoid.rotation == 0) then
		correctShapeAnswerBoxPlaceholder.rotation = 0

	elseif (correctTrapezoid.rotation == 90) then
		correctShapeAnswerBoxPlaceholder.rotation = 270

	elseif (correctTrapezoid.rotation == 180) then
		correctShapeAnswerBoxPlaceholder.rotation = 180

		elseif (correctTrapezoid.rotation == 270) then
			correctShapeAnswerBoxPlaceholder.rotation = 90
	end
end

local function RotateClock()
	timerSpot:rotate(-0.5)
end

local function RestartClock()
	timerSpot:setFillColor(1, 1, 1)
	Runtime:addEventListener("enterFrame", RotateClock)
	RandomAnswerPositions()
	RandomizeSampleShape()
	RandomizeShapeQuestion()
	CheckDirectionTriangle()
	CheckDirectionTrapezoid()
	timerSpot.rotation = 0
end

local function Scoreboard()
	scoreText.text = "Score: " .. score
end

local function LivesCheck()
	if (lives == 2) then
		heart3.isVisible = false
		elseif (lives == 1) then
		heart2.isVisible = false
		elseif (lives == 0) then
		heart1.isVisible = false
	end
end

local function CheckUserInput()

	if (userTriangle.rotation == correctShapeAnswerBoxPlaceholder.rotation) then
		timerSpot:setFillColor(0, 1, 0)
		timer.performWithDelay(2000, RestartClock)
		Runtime:removeEventListener("enterFrame", RotateClock)
		score = score + 1
		CheckDirectionTriangle()

	elseif (userTriangle.rotation ~= correctShapeAnswerBoxPlaceholder.rotation) then
		timerSpot:setFillColor(1, 0, 0)
		timer.performWithDelay(2000, RestartClock)
		Runtime:removeEventListener("enterFrame", RotateClock)
		lives = lives - 1
		CheckDirectionTriangle()
	
	if (userTrapezoid.rotation == correctShapeAnswerBoxPlaceholder.rotation) then
		timerSpot:setFillColor(0, 1, 0)
		timer.performWithDelay(2000, RestartClock)

	elseif (userTrapezoid.rotation ~= correctShapeAnswerBoxPlaceholder.rotation) then
		timerSpot:setFillColor(1, 0, 0)
		timer.performWithDelay(2000, RestartClock)
		end
	end
	Scoreboard()
	LivesCheck()
end

local function TouchListenerCorrectShapeAnswer(touch)

	if (shapeAnswerSlot1AlreadyTouched == false) and
		(shapeAnswerSlot2AlreadyTouched == false) and
		(shapeAnswerSlot3AlreadyTouched == false) then

		if (touch.phase == "began") then

			correctShapeAnswerAlreadyTouched = true
			userTriangle.rotation = triangle1.rotation
			userTrapezoid.rotation = trapezoid1.rotation

		elseif (touch.phase == "moved") then

			correctShapeAnswer.x = touch.x
			correctShapeAnswer.y = touch.y
			triangle1.x = correctShapeAnswer.x
			triangle1.y = correctShapeAnswer.y
			userTriangle.x = correctShapeAnswer.x
			userTriangle.y = correctShapeAnswer.y
			trapezoid1.x = correctShapeAnswer.x
			trapezoid1.y = correctShapeAnswer.y
			userTrapezoid.x = correctShapeAnswer.x
			userTrapezoid.y = correctShapeAnswer.y


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
				triangle1.x = correctShapeAnswerBoxPlaceholder.x
				triangle1.y = correctShapeAnswerBoxPlaceholder.y
				trapezoid1.x = correctShapeAnswerBoxPlaceholder.x
				trapezoid1.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   MakeEverythingFalse()
			   correctShapeAnswer:toBack()
			   CheckUserInput()
			--else make box go back to where it was
			else
				correctShapeAnswer.x = correctShapeAnswerPreviousX
				correctShapeAnswer.y = correctShapeAnswerPreviousY
				correctShapeAnswer:toBack()
				triangle1.x = triangle1PreviousX
				triangle1.y = triangle1PreviousY
				trapezoid1.x = trapezoid1PreviousX
				trapezoid1.y = trapezoid1PreviousY

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
			userTriangle.rotation = triangle2.rotation
			userTrapezoid.rotation = trapezoid2.rotation

		elseif (touch.phase == "moved") then

			shapeAnswerSlot1.x = touch.x
			shapeAnswerSlot1.y = touch.y
			triangle2.x = shapeAnswerSlot1.x
			triangle2.y = shapeAnswerSlot1.y
			userTriangle.x = shapeAnswerSlot1.x
			userTriangle.y = shapeAnswerSlot1.y
			trapezoid2.x = shapeAnswerSlot1.x
			trapezoid2.y = shapeAnswerSlot1.y
			userTrapezoid.x = shapeAnswerSlot1.x
			userTrapezoid.y = shapeAnswerSlot1.y

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
				triangle2.x = correctShapeAnswerBoxPlaceholder.x
				triangle2.y = correctShapeAnswerBoxPlaceholder.y
				trapezoid2.x = correctShapeAnswerBoxPlaceholder.x
				trapezoid2.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   MakeEverythingFalse()
			   shapeAnswerSlot1:toBack()
			   CheckDirectionTriangle()
			   CheckDirectionTrapezoid()
			   CheckUserInput()
			--else make box go back to where it was
			else
				shapeAnswerSlot1.x = shapeAnswerSlot1PreviousX
				shapeAnswerSlot1.y = shapeAnswerSlot1PreviousY
				shapeAnswerSlot1:toBack()
				triangle2.x = triangle2PreviousX
				triangle2.y = triangle2PreviousY
				trapezoid2.x = trapezoid2PreviousX
				trapezoid2.y = trapezoid2PreviousY

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
			userTriangle.rotation = triangle3.rotation
			userTrapezoid.rotation = trapezoid3.rotation

		elseif (touch.phase == "moved") then

			shapeAnswerSlot2.x = touch.x
			shapeAnswerSlot2.y = touch.y
			triangle3.x = shapeAnswerSlot2.x
			triangle3.y = shapeAnswerSlot2.y
			userTriangle.x = shapeAnswerSlot2.x
			userTriangle.y = shapeAnswerSlot2.y
			trapezoid3.x = shapeAnswerSlot2.x
			trapezoid3.y = shapeAnswerSlot2.y
			userTrapezoid.x = shapeAnswerSlot2.x
			userTrapezoid.y = shapeAnswerSlot2.y

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
				triangle3.x = correctShapeAnswerBoxPlaceholder.x
				triangle3.y = correctShapeAnswerBoxPlaceholder.y
				trapezoid3.x = correctShapeAnswerBoxPlaceholder.x
				trapezoid3.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   shapeAnswerSlot2:toBack()
			   MakeEverythingFalse()
			   CheckUserInput()
			--else make box go back to where it was
			else
				shapeAnswerSlot2.x = shapeAnswerSlot2PreviousX
				shapeAnswerSlot2.y = shapeAnswerSlot2PreviousY
				shapeAnswerSlot2:toBack()
				triangle3.x = triangle3PreviousX
				triangle3.y = triangle3PreviousY
				trapezoid3.x = trapezoid3PreviousX
				trapezoid3.y = trapezoid3PreviousY

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
			userTriangle.rotation = triangle4.rotation
			userTrapezoid.rotation = trapezoid4.rotation

		elseif (touch.phase == "moved") then

			shapeAnswerSlot3.x = touch.x
			shapeAnswerSlot3.y = touch.y
			triangle4.x = shapeAnswerSlot3.x
			triangle4.y = shapeAnswerSlot3.y
			userTriangle.x = shapeAnswerSlot3.x
			userTriangle.y = shapeAnswerSlot3.y
			trapezoid4.x = shapeAnswerSlot3.x
			trapezoid4.y = shapeAnswerSlot3.y
			userTrapezoid.x = shapeAnswerSlot3.x
			userTrapezoid.y = shapeAnswerSlot3.y

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
				triangle4.x = correctShapeAnswerBoxPlaceholder.x
				triangle4.y = correctShapeAnswerBoxPlaceholder.y
				trapezoid4.x = correctShapeAnswerBoxPlaceholder.x
				trapezoid4.y = correctShapeAnswerBoxPlaceholder.y

				-- call the function to check if the user's input is correct or not
			   shapeAnswerSlot3:toBack()
			   MakeEverythingFalse()
			   CheckUserInput()
			--else make box go back to where it was
			else
				shapeAnswerSlot3.x = shapeAnswerSlot3PreviousX
				shapeAnswerSlot3.y = shapeAnswerSlot3PreviousY
				shapeAnswerSlot3:toBack()
				triangle4.x = triangle4PreviousX
				triangle4.y = triangle4PreviousY
				trapezoid4.x = trapezoid4PreviousX
				trapezoid4.y = trapezoid4PreviousY

			end
		end
	end                
end



local function AddShapeListeners()

	triangle1:addEventListener("touch", TouchListenerCorrectShapeAnswer)
	triangle2:addEventListener("touch", TouchListenerShapeAnswerSlot1)
	triangle3:addEventListener("touch", TouchListenerShapeAnswerSlot2)
	triangle4:addEventListener("touch", TouchListenerShapeAnswerSlot3)
	trapezoid1:addEventListener("touch", TouchListenerCorrectShapeAnswer)
	trapezoid2:addEventListener("touch", TouchListenerShapeAnswerSlot1)
	trapezoid3:addEventListener("touch", TouchListenerShapeAnswerSlot2)
	trapezoid4:addEventListener("touch", TouchListenerShapeAnswerSlot3)
	Runtime:addEventListener("enterFrame", RotateClock)
	Runtime:addEventListener("enterFrame", KeepShapeCoords)
end


local function RemoveShapeListeners()

	triangle1:removeEventListener("touch", TouchListenerCorrectShapeAnswer)
	triangle2:removeEventListener("touch", TouchListenerShapeAnswerSlot1)
	triangle3:removeEventListener("touch", TouchListenerShapeAnswerSlot2)
	triangle4:removeEventListener("touch", TouchListenerShapeAnswerSlot3)
	trapezoid1:removeEventListener("touch", TouchListenerCorrectShapeAnswer)
	trapezoid2:removeEventListener("touch", TouchListenerShapeAnswerSlot1)
	trapezoid3:removeEventListener("touch", TouchListenerShapeAnswerSlot2)
	trapezoid4:removeEventListener("touch", TouchListenerShapeAnswerSlot3)
	Runtime:removeEventListener("enterFrame", RotateClock)
	Runtime:removeEventListener("enterFrame", KeepShapeCoords)
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
	side2Text = display.newText("Mirror Side 1", display.contentWidth/1.5, display.contentHeight/16, nil, 50)
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
	correctShapeAnswer = display.newRect(display.contentWidth/3*1, display.contentHeight/3*2.675, 100, 100)
	correctShapeAnswer:setFillColor(1, 1, 1)
	correctShapeAnswer:toBack()

	-- creating shapeAnswerSlot1
	shapeAnswerSlot1 = display.newRect(display.contentWidth/3*1.5, display.contentHeight/3*2.675, 100, 100)
	shapeAnswerSlot1:setFillColor(1, 1, 1)
	shapeAnswerSlot1:toBack()

	-- creating shapeAnswerSlot2h
	shapeAnswerSlot2 = display.newRect(display.contentWidth/3*2, display.contentHeight/3*2.675, 100, 100)
	shapeAnswerSlot2:setFillColor(1, 1, 1)
	shapeAnswerSlot2:toBack()

	-- creating shapeAnswerSlot3
	shapeAnswerSlot3 = display.newRect(display.contentWidth/3*2.5, display.contentHeight/3*2.675, 100, 100)
	shapeAnswerSlot3:setFillColor(1, 1, 1)
	shapeAnswerSlot3:toBack()

	-- making everything false
	correctShapeAnswerAlreadyTouched = false
	shapeAnswerSlot1AlreadyTouched = false
	shapeAnswerSlot2AlreadyTouched = false
	shapeAnswerSlot3AlreadyTouched = false

	-- creating correctShapeAnswerBoxPlaceholder
	correctShapeAnswerBoxPlaceholder = display.newRect( 585, 200, 100, 100)
	correctShapeAnswerBoxPlaceholder:setFillColor(1, 1, 1)
	correctShapeAnswerBoxPlaceholder:setStrokeColor(0, 0, 0)
	correctShapeAnswerBoxPlaceholder.strokeWidth = 5
	correctShapeAnswerBoxPlaceholder:scale(1, 1)
	correctShapeAnswerBoxPlaceholder.width = 75
	correctShapeAnswerBoxPlaceholder.height = 75
	correctShapeAnswerBoxPlaceholder.isVisible = true
	correctShapeAnswerBoxPlaceholder.rotation = 0

	-- creating triangleVertices1
	triangleVertices1 = { 200, 20, 250, 200, 150, 200}

	-- creating triangle1
	triangle1 = display.newPolygon(445, 200, triangleVertices1)
	triangle1:setFillColor(0, 0, 0)
	triangle1.x = correctShapeAnswer.x
	triangle1.y = correctShapeAnswer.y
	triangle1:scale(1,1)
	triangle1.width = 75
	triangle1.height = 75
	triangle1.rotation = 0
	triangle1:setFillColor(1, 0, 0)

	-- creating triangleVertices2
	triangleVertices2 = { 200, 20, 250, 200, 150, 200}

	-- creating triangle2
	triangle2 = display.newPolygon(445, 200, triangleVertices2)
	triangle2:setFillColor(0, 0, 0)
	triangle2.x = shapeAnswerSlot1.x
	triangle2.y = shapeAnswerSlot1.y
	triangle2:scale(1,1)
	triangle2.width = 75
	triangle2.height = 75
	triangle2.rotation = 90
	triangle2:setFillColor(1, 1, 0)

	-- creating triangleVertices3
	triangleVertices3 = { 200, 20, 250, 200, 150, 200}

	-- creating triangle3
	triangle3 = display.newPolygon(445, 200, triangleVertices3)
	triangle3:setFillColor(0, 0, 0)
	triangle3.x = shapeAnswerSlot2.x
	triangle3.y = shapeAnswerSlot2.y
	triangle3:scale(1,1)
	triangle3.width = 75
	triangle3.height = 75
	triangle3.rotation = 180
	triangle3:setFillColor(0, 1, 0)

	-- creating triangleVertices4
	triangleVertices4 = { 200, 20, 250, 200, 150, 200}

	-- creating triangle4
	triangle4 = display.newPolygon(445, 200, triangleVertices4)
	triangle4:setFillColor(0, 0, 0)
	triangle4.x = shapeAnswerSlot3.x
	triangle4.y = shapeAnswerSlot3.y
	triangle4:scale(1,1)
	triangle4.width = 75
	triangle4.height = 75
	triangle4.rotation = 270
	triangle4:setFillColor(0, 0, 1)

	-- creating correctTriangleVertices
	correctTriangleVertices = { 200, 20, 250, 200, 150, 200}

	-- creating correctTriangle
	correctTriangle = display.newPolygon(445, 200, correctTriangleVertices)
	correctTriangle:setFillColor(0, 0, 0)
	correctTriangle.width = 75
	correctTriangle.height = 75

	-- creating trapezoid1Vertices
	trapezoid1Vertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- creating trapezoid1
	trapezoid1 = display.newPolygon(445, 200, trapezoid1Vertices)
	trapezoid1:setFillColor(0, 0, 0)
	trapezoid1.width = 75
	trapezoid1.height = 75
	trapezoid1:scale(1,1)
	trapezoid1.rotation = 0
	trapezoid1:setFillColor(1, 0, 0)

	-- creating trapezoid2Vertices
	trapezoid2Vertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- creating trapezoid2
	trapezoid2 = display.newPolygon(445, 200, trapezoid2Vertices)
	trapezoid2:setFillColor(0, 0, 0)
	trapezoid2.width = 75
	trapezoid2.height = 75
	trapezoid2:scale(1,1)
	trapezoid2.rotation = 90
	trapezoid2:setFillColor(1, 1, 0)

	-- creating trapezoid3Vertices
	trapezoid3Vertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- creating trapezoid3
	trapezoid3 = display.newPolygon(445, 200, trapezoid3Vertices)
	trapezoid3:setFillColor(0, 0, 0)
	trapezoid3.width = 75
	trapezoid3.height = 75
	trapezoid3:scale(1,1)
	trapezoid3.rotation = 180
	trapezoid3:setFillColor(0, 1, 0)

	-- creating trapezoid4Vertices
	trapezoid4Vertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- creating trapezoid4
	trapezoid4 = display.newPolygon(445, 200, trapezoid4Vertices)
	trapezoid4:setFillColor(0, 0, 0)
	trapezoid4.width = 75
	trapezoid4.height = 75
	trapezoid4:scale(1,1)
	trapezoid4.rotation = 270
	trapezoid4:setFillColor(0, 0, 1)

	-- creating correctTrapezoidVertices
	correctTrapezoidVertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- creating correctTrapezoid
	correctTrapezoid = display.newPolygon(445, 200, correctTrapezoidVertices)
	correctTrapezoid:setFillColor(0, 0, 0)
	correctTrapezoid.width = 75
	correctTrapezoid.height = 75
	correctTrapezoid:scale(1, 1)

	-- make the templates invisible
	correctShapeAnswer.isVisible = false
	shapeAnswerSlot1.isVisible = false
	shapeAnswerSlot2.isVisible = false
	shapeAnswerSlot3.isVisible = false

	-- make score
	score = 0

	-- make score text
	scoreText = display.newText("Score: ", display.contentWidth/3*2.75, display.contentHeight/4*2, nil, 40)
	scoreText:setFillColor(0, 0, 0)

	-- make lives
	lives = 3

	-- make heart 1
	heart1 = display.newImage("Images/heart.png", display.contentWidth/3*2.6, 500)
	heart1.width = 50
	heart1.height = 50

	-- make heart 2
	heart2 = display.newImage("Images/heart.png", display.contentWidth/3*2.75, 500)
	heart2.width = 50
	heart2.height = 50

	-- make heart 3
	heart3 = display.newImage("Images/heart.png", display.contentWidth/3*2.9, 500)
	heart3.width = 50
	heart3.height = 50

	-- make userTriangle
	userTriangle = display.newPolygon(445, 200, correctTriangleVertices)
	userTriangle:setFillColor(0, 0, 0)
	userTriangle.width = 75
	userTriangle.height = 75
	userTriangle.isVisible = false

	-- creating userTrapezoidVertices
	userTrapezoidVertices = { 150, 20, 230, 20, 250, 200, 130, 200}

	-- make userTrapezoid
	userTrapezoid = display.newPolygon(445, 200, userTrapezoidVertices)
	userTrapezoid:setFillColor(0, 0, 0)
	userTrapezoid.width = 75
	userTrapezoid.height = 75
	userTrapezoid.isVisible = false
	userTrapezoid:scale(1, 1)

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
	sceneGroup:insert( triangle3 )
	sceneGroup:insert( triangle4 )
	sceneGroup:insert( correctTriangle )
	sceneGroup:insert( userTriangle )
	sceneGroup:insert( trapezoid1 )
	sceneGroup:insert( trapezoid2 )
	sceneGroup:insert( trapezoid3 )
	sceneGroup:insert( trapezoid4 )
	sceneGroup:insert( correctTrapezoid )
	sceneGroup:insert( userTrapezoid )
	sceneGroup:insert( scoreText )
	sceneGroup:insert( heart1 )
	sceneGroup:insert( heart2 )
	sceneGroup:insert( heart3 )

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
		RandomizeSampleShape()
		CheckDirectionTriangle()
		CheckDirectionTrapezoid()
		RandomizeShapeQuestion()
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
