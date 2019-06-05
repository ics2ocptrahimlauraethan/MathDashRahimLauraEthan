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
display.setStatusBar(display.HiddenStatusBar)

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level2_screen"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local answerBox1

local letterSize = 75
local letterWidth = 75

local letterAOrignalX = display.contentWidth/9
local letterAOrignalY = display.contentHeight/1.2

local letterBOriginalX = letterAOrignalX + 75
local letterBOrignalY = letterAOrignalY

local triangle
local triangleImage
local answerBox1Filled = false


local square
local squareImage 


local rectangle
local rectangleImage


local pentagon
local pentagonImage

local octogon 
local octogonImage


local quadrilateral 
local quadrilateralImage 

local Direction

local bkgImage
local A
local B
local C
local D
local E
local F
local G
local H
local I
local J
local K
local L
local M
local N
local O
local P
local Q
local R
local S
local T
local U
local V
local W
local X
local Y
local Z
-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

local function CheckUserAnswerInput()

end

local function TouchListenerA(touch)

	if (touch.phase == "began") then
		print ("***Clicked A")
		
	elseif (touch.phase == "moved") then
		A.x = touch.x
		A.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < A.x ) and
            ((answerBox1.x + answerBox1.width/2) > A.x ) and 
            ((answerBox1.y - answerBox1.height/2) < A.y ) and 
            ((answerBox1.y + answerBox1.height/2) > A.y ) ) then

            -- setting the position of the number to be in the center of the box
            A.x = answerBox1.x
            A.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            A.x = letterAOrignalX
            A.y = letterAOrignalY
        end
	end     
end 

local function AskQuestion()
	randomOperator = math.random(1,1)

	-- TRIANGLE
	if (randomOperator == 1) then
		-- triangle is visible
		triangle.isVisible = true
		triangleImage.isVisible = true

		-- place the answerboxes corresponding to the triangle
		answerBox1.x = display.contentWidth/2 - answerBox1.width*1.5
		answerBox1.y = display.contentHeight/2

		-- add answerBox1 listener
		A:addEventListener("touch", TouchListenerA)

		-- make all other shapes invisible
		square.isVisible = false
		squareImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isVisible = false

	elseif (randomOperator == 2) then
		square.isVisible = true
		squareImage.isVisible = true
		triangle.isVisible = false
		triangleImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
		quadrilateral.isVisible = false		
		quadrilateralImage.isVisible = false

	elseif (randomOperator == 3) then
		rectangle.isVisible = true
		rectangleImage.isVisible = true
		triangle.isVisible = false
		triangleImage.isVisible = false
		square.isVisible = false
		squareImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isVisible = false

	elseif (randomOperator == 4) then
		pentagon.isVisible = true
		pentagonImage.isVisible = true
		triangle.isVisible = false
		triangleImage.isVisible = false
		square.isVisible = false
		squareImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isVisible = false

	elseif (randomOperator == 5) then
		octogon.isVisible = true
		octogonImage.isVisible = true
		triangle.isVisible = false
		triangleImage.isVisible = false
		square.isVisible = false
		squareImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isVisible = false

	elseif (randomOperator == 6) then
		quadrilateral.isVisible = true
		quadrilateralImage.isVisible = true
		triangle.isVisible = false
		triangleImage.isVisible = false
		square.isVisible = false
		squareImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
	end
end




-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

	-- Creating a group that associates objects with the scene
	local sceneGroup = self.view
	bkgImage = display.newImageRect("Images/bkg.jpg", 3048, 1536)
   


    bkgImage.x = display.contentCenterX
    bkgImage.y = display.contentCenterY
    bkgImage.width = display.contentWidth
    bkgImage.height = display.contentHeight

	

	Direction = display.newText("Complete the spelling of the shape.", display.contentWidth/2, display.contentHeight/3, nil, 50)

 	triangle = display.newText( "Tr_a_g_e", display.contentWidth/2, display.contentHeight/2, nil, 150)
	triangleImage = display.newImageRect("Images/triangle.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	triangleImage.x = display.contentCenterX/1.1
	triangleImage.y = display.contentCenterY/3
	

	square = display.newText( "Sq_ar_", display.contentWidth/2, display.contentHeight/2, nil, 150)
	squareImage = display.newImageRect("Images/square.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	squareImage.x = display.contentCenterX/1.1
	squareImage.y = display.contentCenterY/3


	rectangle = display.newText( "Rec__ng_e", display.contentWidth/2, display.contentHeight/2, nil, 150)
	rectangleImage = display.newImageRect("Images/rectangle.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	rectangleImage.x = display.contentCenterX/1.1
	rectangleImage.y = display.contentCenterY/3


	pentagon = display.newText( "P_nt_go_", display.contentWidth/2, display.contentHeight/2, nil, 150)
	pentagonImage = display.newImageRect("Images/pentagon.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	pentagonImage.x = display.contentCenterX/1.1
	pentagonImage.y = display.contentCenterY/3
 

	octogon = display.newText( "_c_a_on", display.contentWidth/2, display.contentHeight/2, nil, 150)
	octogonImage = display.newImageRect("Images/octogon.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	octogonImage.x = display.contentCenterX/1.1
	octogonImage.y = display.contentCenterY/3

	quadrilateral = display.newText( "q__dr_lat_r_l", display.contentWidth/2, display.contentHeight/2, nil, 150)
	quadrilateralImage = display.newImageRect("Images/quadrilateral.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	quadrilateralImage.x = display.contentCenterX/1.1
	quadrilateralImage.y = display.contentCenterY/3

	A = display.newText(" A ", letterAOrignalX, letterAOrignalY, nil, letterSize)
	--B = display.newText(" B ", letterAStartX + letterWidth, display.contentHeight/1.2, nil, letterSize)
	--C = display.newText(" C " ,letterAStartX + letterWidth*2, display.contentHeight/1.2, nil, 30)
	D = display.newText(" D ", display.contentWidth/3.1, display.contentHeight/1.2, nil, 30)
	E = display.newText(" E ", display.contentWidth/2.9, display.contentHeight/1.2, nil, 30)
	F = display.newText(" F ", display.contentWidth/2.72, display.contentHeight/1.2, nil, 30)
	G = display.newText(" G ", display.contentWidth/2.55, display.contentHeight/1.2, nil, 30)
	H = display.newText(" H ", display.contentWidth/2.4, display.contentHeight/1.2, nil, 30)
	I = display.newText(" I ", display.contentWidth/2.3, display.contentHeight/1.2, nil, 30)
	J = display.newText(" J ", display.contentWidth/2.23, display.contentHeight/1.2, nil, 30)
	K = display.newText(" K ", display.contentWidth/2.13, display.contentHeight/1.2, nil, 30)
	L = display.newText(" L ", display.contentWidth/2.04, display.contentHeight/1.2, nil, 30)
	M = display.newText(" M ", display.contentWidth/1.96, display.contentHeight/1.2, nil, 30)
	N = display.newText(" N ", display.contentWidth/1.87, display.contentHeight/1.2, nil, 30)
	O = display.newText(" O ", display.contentWidth/1.79, display.contentHeight/1.2, nil, 30)
	P = display.newText(" P ", display.contentWidth/1.71, display.contentHeight/1.2, nil, 30)
	Q = display.newText(" Q ", display.contentWidth/1.64, display.contentHeight/1.2, nil, 30)
	R = display.newText(" R ", display.contentWidth/1.57, display.contentHeight/1.2, nil, 30)
	S = display.newText(" S ", display.contentWidth/1.5, display.contentHeight/1.2, nil, 30)
	T = display.newText(" T ", display.contentWidth/1.45, display.contentHeight/1.2, nil, 30)
	U = display.newText(" U ", display.contentWidth/1.4, display.contentHeight/1.2, nil, 30)
	V = display.newText(" V ", display.contentWidth/1.35, display.contentHeight/1.2, nil, 30)
	W = display.newText(" W ", display.contentWidth/1.3, display.contentHeight/1.2, nil, 30)
	X = display.newText(" X ", display.contentWidth/1.25, display.contentHeight/1.2, nil, 30)
	Y = display.newText(" Y ", display.contentWidth/1.21, display.contentHeight/1.2, nil, 30)
	Z = display.newText(" Z ", display.contentWidth/1.18, display.contentHeight/1.2 , nil, 30)


	-----------------------------------------------------------------------------------------

	-- the black box where the user will drag the answer
    answerBox1 = display.newImageRect("Images/userAnswerBoxPlaceholder.png",  100, 130, 0, 0)
    answerBox1.x = display.contentWidth * 0.6
    answerBox1.y = display.contentHeight * 0.9



	sceneGroup:insert( bkgImage )-- Insert background image into the scene group in order to ONLY be associated with this scene
	sceneGroup:insert( triangle )
	sceneGroup:insert( triangleImage )  
	sceneGroup:insert( square )  
	sceneGroup:insert( squareImage )
	sceneGroup:insert( rectangle )
	sceneGroup:insert( rectangleImage )
	sceneGroup:insert( pentagon )
	sceneGroup:insert( pentagonImage )
	sceneGroup:insert( octogon )
	sceneGroup:insert( octogonImage )	
	sceneGroup:insert( quadrilateral )
	sceneGroup:insert( quadrilateralImage )
	sceneGroup:insert( Direction )
	sceneGroup:insert( A )


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
		AskQuestion()

		-- Called when the scene is now on screen.
		-- Insert code here to make the scene come alive.
		-- Example: start timers, begin animation, play audio, etc.
		
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

-----------------------------------------------------------------------------------------

return scene