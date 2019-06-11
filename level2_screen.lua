
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
local shape


local textCorrect
local textIncorrect 

local answerBox1
local answerBox2
local answerBox3

local userAnswer1
local userAnswer2
local userAnswer3

local answerBox1Filled = false
local answerBox2Filled = false
local answerBox3Filled = false

local letterSize = 75
local letterWidth = 75

local letterAOriginalX = display.contentWidth/9
local letterAOriginalY = display.contentHeight/1.2

local letterBOriginalX = letterAOriginalX + 75
local letterBOriginalY = letterAOriginalY

local letterCOriginalX = letterAOriginalX + 150
local letterCOriginalY = letterAOriginalY

local letterDOriginalX = letterAOriginalX + 225
local letterDOriginalY = letterAOriginalY


local letterEOriginalX = letterAOriginalX + 300
local letterEOriginalY = letterAOriginalY



local letterFOriginalX = letterAOriginalX + 375
local letterFOriginalY = letterAOriginalY


local letterGOriginalX = letterAOriginalX + 450
local letterGOriginalY = letterAOriginalY


local letterHOriginalX = letterAOriginalX + 525
local letterHOriginalY = letterAOriginalY


local letterIOriginalX = letterAOriginalX + 600
local letterIOriginalY = letterAOriginalY


local letterJOriginalX = letterAOriginalX + 675
local letterJOriginalY = letterAOriginalY


local letterKOriginalX = letterAOriginalX + 750
local letterKOriginalY = letterAOriginalY


local letterLOriginalX = letterAOriginalX + 825
local letterLOriginalY = letterAOriginalY


local letterMOriginalX = letterAOriginalX + 900
local letterMOriginalY = letterAOriginalY


local letterNOriginalX = letterAOriginalX + 400
local letterNOriginalY = letterAOriginalY


local letterOOriginalX = letterAOriginalX + 1050
local letterOOriginalY = letterAOriginalY


local letterPOriginalX = letterAOriginalX + 1125
local letterPOriginalY = letterAOriginalY


local letterQOriginalX = letterAOriginalX + 1200
local letterQOriginalY = letterAOriginalY


local letterROriginalX = letterAOriginalX + 1275
local letterROriginalY = letterAOriginalY


local letterSOriginalX = letterAOriginalX + 1350
local letterSOriginalY = letterAOriginalY


local letterTOriginalX = letterAOriginalX + 1425
local letterTOriginalY = letterAOriginalY


local letterUOriginalX = letterAOriginalX + 1500
local letterUOriginalY = letterAOriginalY

local letterVOriginalX = letterAOriginalX + 1575
local letterVOriginalY = letterAOriginalY

local letterWOriginalX = letterAOriginalX + 1650
local letterWOriginalY = letterAOriginalY

local letterXOriginalX = letterAOriginalX + 1725
local letterXOriginalY = letterAOriginalY

local letterYOriginalX = letterAOriginalX + 1800
local letterYOriginalY = letterAOriginalY

local letterZOriginalX = letterAOriginalX + 1875
local letterZOriginalY = letterAOriginalY

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

local I

local L

local N

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

local function CheckUserAnswerInput()
	if (shape == "triangle") then
		if (answerBox1Filled == true) then
			print ("***answerBox1 is filled")
			if (userAnswer1.text == "L") then
				print ("***L is in answerBox1")
			else 
				print ("***L is NOT in answerBox1")
			end
		end
		if (answerBox2Filled == true) then
			print ("***answerBox2 is filled")
			if (userAnswer2.text == "L") then
				print ("***L is in answerBox2")
			else 
				print ("***L is NOT in answerBox2")
			end
		end
		if (answerBox3Filled == true) then
			print ("***answerBox3 is filled")
			if (userAnswer3.text == "L") then
				print ("***L is in answerBox3")
			else 
				print ("***L is NOT in answerBox3")
			end
		end

		if (answerBox1Filled == true) and (answerBox2Filled == true) and ( answerBox3Filled == true) then
			if (userAnswer1.text == "I") and (userAnswer2.text == "N") and (userAnswer3.text == "L") then
				textCorrect.isVisible = true
			else
				textIncorrect.isVisible = true
			end
		end

	end



end

local function TouchListenerI(touch)

	if (touch.phase == "began") then
		
		
	elseif (touch.phase == "moved") then
		I.x = touch.x
		I.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if ( ((answerBox1.x - answerBox1.width/2) < I.x ) and
             ((answerBox1.x + answerBox1.width/2) > I.x ) and 
             ((answerBox1.y - answerBox1.height/2) < I.y ) and 
             ((answerBox1.y + answerBox1.height/2) > I.y ) and 
              answerBox1Filled == false) then

            -- setting the position of the number to be in the center of the box
            I.x = answerBox1.x
            I.y = answerBox1.y
            userAnswer1 = I

            I:removeEventListener("touch", TouchListenerI)
           
            answerBox1Filled = true          

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        elseif ( ((answerBox2.x - answerBox2.width/2) < I.x ) and
                 ((answerBox2.x + answerBox2.width/2) > I.x ) and 
                 ((answerBox2.y - answerBox2.height/2) < I.y ) and 
                 ((answerBox2.y + answerBox2.height/2) > I.y ) and
        	      answerBox2Filled == false) then

            -- setting the position of the number to be in the center of the box
            I.x = answerBox2.x
            I.y = answerBox2.y
            userAnswer2 = I

            I:removeEventListener("touch", TouchListenerI)
           
           	answerBox2Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()
        
        elseif (((answerBox3.x - answerBox3.width/2) < I.x ) and
            ((answerBox3.x + answerBox3.width/2) > I.x ) and 
            ((answerBox3.y - answerBox3.height/2) < I.y ) and 
            ((answerBox3.y + answerBox3.height/2) > I.y ) ) then

            -- setting the position of the number to be in the center of the box
            I.x = answerBox3.x
            I.y = answerBox3.y
            userAnswer3 = I

            I:removeEventListener("touch", TouchListenerI)
           
            answerBox3Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
           
            I.x = letterIOriginalX
            I.y = letterIOriginalY
        end
	end     
end 

local function TouchListenerN(touch)

	if (touch.phase == "began") then
		
		
	elseif (touch.phase == "moved") then
		N.x = touch.x
		N.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if ( ((answerBox1.x - answerBox1.width/2) < N.x ) and
             ((answerBox1.x + answerBox1.width/2) > N.x ) and 
             ((answerBox1.y - answerBox1.height/2) < N.y ) and 
             ((answerBox1.y + answerBox1.height/2) > N.y ) and 
              answerBox1Filled == false) then

            -- setting the position of the number to be in the center of the box
            N.x = answerBox1.x
            N.y = answerBox1.y
            userAnswer1 = N

            N:removeEventListener("touch", TouchListenerN)
           
            answerBox1Filled = true          

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        elseif ( ((answerBox2.x - answerBox2.width/2) < N.x ) and
                 ((answerBox2.x + answerBox2.width/2) > N.x ) and 
                 ((answerBox2.y - answerBox2.height/2) < N.y ) and 
                 ((answerBox2.y + answerBox2.height/2) > N.y ) and
        	      answerBox2Filled == false) then

            -- setting the position of the number to be in the center of the box
            N.x = answerBox2.x
            N.y = answerBox2.y
            userAnswer2 = N

            N:removeEventListener("touch", TouchListenerN)
           
           	answerBox2Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()
        
        elseif (((answerBox3.x - answerBox3.width/2) < N.x ) and
            ((answerBox3.x + answerBox3.width/2) > N.x ) and 
            ((answerBox3.y - answerBox3.height/2) < N.y ) and 
            ((answerBox3.y + answerBox3.height/2) > N.y ) ) then

            -- setting the position of the number to be in the center of the box
            N.x = answerBox3.x
            N.y = answerBox3.y
            userAnswer3 = N

            N:removeEventListener("touch", TouchListenerN)
           
            answerBox3Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
           
            N.x = letterNOriginalX
            N.y = letterNOriginalY
        end
	end     
end 

local function TouchListenerL(touch)

	if (touch.phase == "began") then
		
		
	elseif (touch.phase == "moved") then
		L.x = touch.x
		L.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if ( ((answerBox1.x - answerBox1.width/2) < L.x ) and
             ((answerBox1.x + answerBox1.width/2) > L.x ) and 
             ((answerBox1.y - answerBox1.height/2) < L.y ) and 
             ((answerBox1.y + answerBox1.height/2) > L.y ) and 
              answerBox1Filled == false) then

            -- setting the position of the number to be in the center of the box
            L.x = answerBox1.x
            L.y = answerBox1.y
            userAnswer1 = L

            L:removeEventListener("touch", TouchListenerL)
           
            answerBox1Filled = true          

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        elseif ( ((answerBox2.x - answerBox2.width/2) < L.x ) and
                 ((answerBox2.x + answerBox2.width/2) > L.x ) and 
                 ((answerBox2.y - answerBox2.height/2) < L.y ) and 
                 ((answerBox2.y + answerBox2.height/2) > L.y ) and
        	      answerBox2Filled == false) then

            -- setting the position of the number to be in the center of the box
            L.x = answerBox2.x
            L.y = answerBox2.y
            userAnswer2 = L

            L:removeEventListener("touch", TouchListenerL)
           
           	answerBox2Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()
        
        elseif (((answerBox3.x - answerBox3.width/2) < L.x ) and
            ((answerBox3.x + answerBox3.width/2) > L.x ) and 
            ((answerBox3.y - answerBox3.height/2) < L.y ) and 
            ((answerBox3.y + answerBox3.height/2) > L.y ) ) then

            -- setting the position of the number to be in the center of the box
            L.x = answerBox3.x
            L.y = answerBox3.y
            userAnswer3 = L

            L:removeEventListener("touch", TouchListenerL)
           
            answerBox3Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
           
            L.x = letterLOriginalX
            L.y = letterLOriginalY
        end
	end     
end 


local function AskQuestion()
	randomOperator = math.random(1,2)

	-- TRIANGLE
	if (randomOperator == 1) then
		shape = "triangle"
		-- triangle is visible
		triangle.isVisible = true
		triangleImage.isVisible = true

		
		--square.isVisible = false
		--squareImage.isVisible = false
		rectangle.isVisible = false
		rectangleImage.isVisible = false
		pentagon.isVisible = false
		pentagonImage.isVisible = false
		octogon.isVisible = false
		octogonImage.isVisible = false
		quadrilateral.isVisible = false
		quadrilateralImage.isVisible = false


		-- place the answerboxes corresponding to the triangle
		answerBox1.x = display.contentWidth/2 - answerBox1.width*1.5
		answerBox1.y = display.contentHeight/2

		answerBox2.x =  display.contentWidth/2 + 20
		answerBox2.y = display.contentHeight/2

		answerBox3.x = display.contentWidth/2 + 190
		answerBox3.y = display.contentHeight/2
	--elseif (randomOperator == 2) then 
		--shape = "square"

		--square.isVisible = true
		--squareImage.isVisible = true



	end	
end


local function AddTouchListeners()
	N:addEventListener("touch", TouchListenerN)
	I:addEventListener("touch", TouchListenerI)
	L:addEventListener("touch", TouchListenerL)

end


local function RemoveTouchListeners()
	N:removeEventListener("touch", TouchListenerN)
	I:removeEventListener("touch", TouchListenerI)
	L:removeEventListener("touch", TouchListenerL)

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


    textIncorrect = display.newText("Try Again", display.contentWidth/2, display.contentHeight/1.5, nil, 100) 
    textIncorrect.isVisible = false
    textCorrect = display.newText("Correct", display.contentWidth/2, display.contentHeight/1.5, nil, 100)
	textCorrect.isVisible = false
	textCorrect:setTextColor(0/255, 255/255, 0/255)
	textIncorrect:setTextColor(255/255, 0/255, 0/255)




	

	Direction = display.newText("Complete the spelling of the shape.", display.contentWidth/2, display.contentHeight/3, nil, 50)

 	triangle = display.newText( "Tr_a_g_e", display.contentWidth/2, display.contentHeight/2, nil, 150)
	triangleImage = display.newImageRect("Images/triangle.png",display.contentWidth/3.3, display.contentHeight/3.3 )
	triangleImage.x = display.contentCenterX/1.1
	triangleImage.y = display.contentCenterY/3
	

	
	I = display.newText("I", letterIOriginalX, letterAOriginalY, nil, letterSize)
	
	N = display.newText("N", letterNOriginalX, letterAOriginalY, nil, letterSize)
	
	L = display.newText("L", letterLOriginalX, letterAOriginalY, nil, letterSize)


	-----------------------------------------------------------------------------------------

	-- the black box where the user will drag the answer
    answerBox1 = display.newImageRect("Images/userAnswerBoxPlaceholder.png",  100, 130)
    answerBox1.x = display.contentWidth * 0.6
    answerBox1.y = display.contentHeight * 0.9
    
    answerBox2 = display.newImageRect("Images/userAnswerBoxPlaceholder.png",  100, 130)
    answerBox2.x = display.contentWidth * 0.6
    answerBox2.y = display.contentHeight * 0.9

    answerBox3 = display.newImageRect("Images/userAnswerBoxPlaceholder.png",  100, 130)
    answerBox3.x = display.contentWidth * 0.6
    answerBox3.y = display.contentHeight * 0.9





	sceneGroup:insert( bkgImage )-- Insert background image into the scene group in order to ONLY be associated with this scene
	sceneGroup:insert( triangle )
	sceneGroup:insert( triangleImage )  
  

	sceneGroup:insert( Direction )
	
	
	
	sceneGroup:insert( I )
	
	sceneGroup:insert( N )

	sceneGroup:insert( L )

	sceneGroup:insert(answerBox1)
	sceneGroup:insert(answerBox2)
	sceneGroup:insert(answerBox3)



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
		answerBox1Filled = false
		answerBox2Filled = false
		answerBox3Filled = false
		AskQuestion()
		AddTouchListeners()

		

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
		RemoveTouchListeners()
		
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



















