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
local triangle
local triangleImage


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
-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------
local function shapeDisplay()
	randomOperator = math.random(1,6)

	if (randomOperator == 1) then
		triangle.isVisible = true
		triangleImage.isvisible = true
		square.isVisible = false
		squareImage.isvisible = false
		rectangle.isVisible = false
		rectangleImage.isvisible = false
		pentagon.isVisible = false
		pentagonImage.isvisible = false
		octogon.isVisible = false
		octogonImage.isvisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isvisible = false

	elseif (randomOperator == 2) then
		square.isVisible = true
		squareImage.isvisible = true
		triangle.isVisible = false
		triangleImage.isvisible = false
		rectangle.isVisible = false
		rectangleImage.isvisible = false
		pentagon.isVisible = false
		pentagonImage.isvisible = false
		octogon.isVisible = false
		octogonImage.isvisible = false
		quadrilateral.isVisible = false		
		quadrilateralImage.isvisible = false

	elseif (randomOperator == 3) then
		rectangle.isVisible = true
		rectangleImage.isvisible = true
		triangle.isVisible = false
		triangleImage.isvisible = false
		square.isVisible = false
		squareImage.isvisible = false
		pentagon.isVisible = false
		pentagonImage.isvisible = false
		octogon.isVisible = false
		octogonImage.isvisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isvisible = false

	elseif (randomOperator == 4) then
		pentagon.isVisible = true
		pentagonImage.isvisible = true
		triangle.isVisible = false
		triangleImage.isvisible = false
		square.isVisible = false
		squareImage.isvisible = false
		rectangle.isVisible = false
		rectangleImage.isvisible = false
		octogon.isVisible = false
		octogonImage.isvisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isvisible = false

	elseif (randomOperator == 5) then
		octogon.isVisible = true
		octogonImage.isvisible = true
		triangle.isVisible = false
		triangleImage.isvisible = false
		square.isVisible = false
		squareImage.isvisible = false
		rectangle.isVisible = false
		rectangleImage.isvisible = false
		pentagon.isVisible = false
		pentagonImage.isvisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isvisible = false

	elseif (randomOperator == 6) then
		quadrilateral.isVisible = true
		quadrilateralImage.isvisible = true
		triangle.isVisible = false
		triangleImage.isvisible = false
		square.isVisible = false
		squareImage.isvisible = false
		rectangle.isVisible = false
		rectangleImage.isvisible = false
		pentagon.isVisible = false
		pentagonImage.isvisible = false
		octogon.isVisible = false
		octogonImage.isvisible = false
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

	triangleImage = display.newImageRect("Images/triangle.png",display.contentWidth/2, display.contentHeight/2 )
	triangleImage.x = display.contentCenterX
	triangleImage.y = display.contentCenterY
	

	square = display.newText( "Sq_ar_", display.contentWidth/2, display.contentHeight/2, nil, 150)

	squareImage = display.newImageRect("Images/square.png",display.contentWidth/2, display.contentHeight/2 )
	squareImage.x = display.contentCenterX
	squareImage.y = display.contentCenterY


	rectangle = display.newText( "Rec__ng_e", display.contentWidth/2, display.contentHeight/2, nil, 150)

	rectangleImage = display.newImageRect("Images/rectangle.png",display.contentWidth/2, display.contentHeight/2 )
	rectangleImage.x = display.contentCenterX
	rectangleImage.y = display.contentCenterY


	pentagon = display.newText( "P_nt_go_", display.contentWidth/2, display.contentHeight/2, nil, 150)

	pentagonImage = display.newImageRect("Images/pentagon.png",display.contentWidth/2, display.contentHeight/2 )
	pentagonImage.x = display.contentCenterX
	pentagonImage.y = display.contentCenterY
 

	octogon = display.newText( "_c_o_on", display.contentWidth/2, display.contentHeight/2, nil, 150)

	octogonImage = display.newImageRect("Images/octogon.png",display.contentWidth/2, display.contentHeight/2 )
	octogonImage.x = display.contentCenterX
	octogonImage.y = display.contentCenterY

	quadrilateral = display.newText( "q__dr_lat_r_l", display.contentWidth/2, display.contentHeight/2, nil, 150)
	
	quadrilateralImage = display.newImageRect("Images/quadrilateral.png",display.contentWidth/2, display.contentHeight/2 )
	quadrilateralImage.x = display.contentCenterX
	quadrilateralImage.y = display.contentCenterY

	-----------------------------------------------------------------------------------------



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
		shapeDisplay()

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

return scene