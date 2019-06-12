
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

local letterWidth

local letterA
local letterB
local letterC
local letterD
local letterE
local letterF
local letterG
local letterH
local letterI
local letterJ
local letterK
local letterL
local letterM
local letterN
local letterO
local letterP
local letterQ
local letterR
local letterS
local letterT
local letterU
local letterV
local letterW
local letterX
local letterY
local letterZ

local letterAOriginalX
local letterAOriginalY

local letterBOriginalX
local letterBOriginalY

local letterCOriginalX
local letterCOriginalY

local letterDOriginalX
local letterDOriginalY

local letterEOriginalX
local letterEOriginalY

local letterFOriginalX
local letterFOriginalY

local letterGOriginalX
local letterGOriginalY

local letterHOriginalX
local letterHOriginalY

local letterIOriginalX
local letterIOriginalY

local letterJOriginalX
local letterJOriginalY

local letterKOriginalX
local letterKOriginalY

local letterLOriginalX
local letterLOriginalY

local letterMOriginalX
local letterMOriginalY

local letterNOriginalX
local letterNOriginalY

local letterOOriginalX
local letterOOriginalY

local letterPOriginalX
local letterPOriginalY

local letterQOriginalX
local letterQOriginalY

local letterROriginalX
local letterROriginalY

local letterSOriginalX
local letterSOriginalY

local letterTOriginalX
local letterTOriginalY

local letterUOriginalX
local letterUOriginalY

local letterVOriginalX
local letterVOriginalY

local letterWOriginalX
local letterWOriginalY

local letterXOriginalX
local letterXOriginalY

local letterYOriginalX
local letterYOrignialY

local letterZOriginalX
local letterZOriginalY

local triangle
local triangleImage
local answerBox1Filled


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

local function CheckUserAnswerInput()

end

local function TouchListenerA(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterA.x = touch.x
		letterA.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterA.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterA.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterA.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterA.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterA.x = answerBox1.x
            letterA.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterA.x = letterAOriginalX
            letterA.y = letterAOriginalY
        end
	end     
end 

local function TouchListenerB(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterB.x = touch.x
		letterB.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterB.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterB.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterB.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterB.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterB.x = answerBox1.x
            letterB.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterB.x = letterBOriginalX
            letterB.y = letterBOriginalY
        end
	end     
end 

local function TouchListenerC(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterC.x = touch.x
		letterC.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterC.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterC.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterC.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterC.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterC.x = answerBox1.x
            letterC.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterC.x = letterCOriginalX
            letterC.y = letterCOriginalY
        end
	end     
end

local function TouchListenerD(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterD.x = touch.x
		letterD.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterD.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterD.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterD.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterD.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterD.x = answerBox1.x
            letterD.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterD.x = letterDOriginalX
            letterD.y = letterDOriginalY
        end
	end     
end 

local function TouchListenerE(touch)

	if (touch.phase == "began") then

		
	elseif (touch.phase == "moved") then
		letterE.x = touch.x
		letterE.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterE.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterE.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterE.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterE.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterE.x = answerBox1.x
            letterE.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterE.x = letterEOriginalX
            letterE.y = letterEOriginalY
        end
	end     
end

local function TouchListenerF(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterF.x = touch.x
		letterF.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterF.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterF.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterF.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterF.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterF.x = answerBox1.x
            letterF.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterF.x = letterFOriginalX
            letterF.y = letterFOriginalY
        end
	end     
end

local function TouchListenerG(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterG.x = touch.x
		letterG.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterG.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterG.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterG.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterG.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterG.x = answerBox1.x
            letterG.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterG.x = letterGOriginalX
            letterG.y = letterGOriginalY
        end
	end     
end

local function TouchListenerH(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterH.x = touch.x
		letterH.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterH.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterH.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterH.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterH.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterH.x = answerBox1.x
            letterH.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterH.x = letterHOriginalX
            letterH.y = letterHOriginalY
        end
	end     
end

local function TouchListenerI(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterI.x = touch.x
		letterI.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterI.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterI.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterI.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterI.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterI.x = answerBox1.x
            letterI.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterI.x = letterIOriginalX
            letterI.y = letterIOriginalY
        end
	end     
end

local function TouchListenerJ(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterJ.x = touch.x
		letterJ.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterJ.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterJ.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterJ.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterJ.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterJ.x = answerBox1.x
            letterJ.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterJ.x = letterJOriginalX
            letterJ.y = letterJOriginalY
        end
	end     
end

local function TouchListenerK(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterK.x = touch.x
		letterK.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterK.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterK.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterK.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterK.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterK.x = answerBox1.x
            letterK.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterK.x = letterKOriginalX
            letterK.y = letterKOriginalY
        end
	end     
end

local function TouchListenerL(touch)

	if (touch.phase == "began") then

	elseif (touch.phase == "moved") then
		letterL.x = touch.x
		letterL.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterL.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterL.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterL.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterL.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterL.x = answerBox1.x
            letterL.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterL.x = letterLOriginalX
            letterL.y = letterLOriginalY
        end
	end     
end

local function TouchListenerM(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterM.x = touch.x
		letterM.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterM.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterM.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterM.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterM.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterM.x = answerBox1.x
            letterM.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterM.x = letterMOriginalX
            letterM.y = letterMOriginalY
        end
	end     
end

local function TouchListenerN(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterN.x = touch.x
		letterN.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterN.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterN.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterN.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterN.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterN.x = answerBox1.x
            letterN.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterN.x = letterNOriginalX
            letterN.y = letterNOriginalY
        end
	end     
end

local function TouchListenerO(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterO.x = touch.x
		letterO.y = touch.y

		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterO.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterO.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterO.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterO.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterO.x = answerBox1.x
            letterO.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterO.x = letterOOriginalX
            letterO.y = letterOOriginalY
        end
	end     
end

local function TouchListenerP(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterP.x = touch.x
		letterP.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterP.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterP.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterP.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterP.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterP.x = answerBox1.x
            letterP.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterP.x = letterPOriginalX
            letterP.y = letterPOriginalY
        end
	end     
end

local function TouchListenerQ(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterQ.x = touch.x
		letterQ.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterQ.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterQ.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterQ.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterQ.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterQ.x = answerBox1.x
            letterQ.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterQ.x = letterQOriginalX
            letterQ.y = letterQOriginalY
        end
	end     
end

local function TouchListenerR(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterR.x = touch.x
		letterR.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterR.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterR.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterR.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterR.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterR.x = answerBox1.x
            letterR.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterR.x = letterROriginalX
            letterR.y = letterROriginalY
        end
	end     
end

local function TouchListenerS(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterS.x = touch.x
		letterS.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterS.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterS.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterS.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterS.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterS.x = answerBox1.x
            letterS.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterS.x = letterSOriginalX
            letterS.y = letterSOriginalY
        end
	end     
end

local function TouchListenerT(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterT.x = touch.x
		letterT.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterT.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterT.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterT.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterT.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterT.x = answerBox1.x
            letterT.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterT.x = letterTOriginalX
            letterT.y = letterTOriginalY
        end
	end     
end

local function TouchListenerU(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterU.x = touch.x
		letterU.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterU.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterU.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterU.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterU.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterU.x = answerBox1.x
            letterletterU.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterU.x = letterUOriginalX
            letterU.y = letterUOriginalY
        end
	end     
end

local function TouchListenerV(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterV.x = touch.x
		letterV.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterV.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterV.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterV.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterV.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterV.x = answerBox1.x
            letterletterV.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterV.x = letterVOriginalX
            letterV.y = letterVOriginalY
        end
	end     
end

local function TouchListenerW(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterW.x = touch.x
		letterW.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterW.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterW.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterW.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterW.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterW.x = answerBox1.x
            letterW.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterW.x = letterWOriginalX
            letterW.y = letterWOriginalY
        end
	end     
end

local function TouchListenerX(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterX.x = touch.x
		letterX.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterX.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterX.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterX.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterX.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterX.x = answerBox1.x
            letterX.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterX.x = letterXOriginalX
            letterX.y = letterXOriginalY
        end
	end     
end

local function TouchListenerY(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterY.x = touch.x
		letterY.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterY.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterY.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterY.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterY.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterY.x = answerBox1.x
            letterY.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterY.x = letterYOriginalX
            letterY.y = letterYOriginalY
        end
	end     
end

local function TouchListenerZ(touch)

	if (touch.phase == "began") then
		
	elseif (touch.phase == "moved") then
		letterZ.x = touch.x
		letterZ.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < letterZ.x ) and
            ((answerBox1.x + answerBox1.width/2) > letterZ.x ) and 
            ((answerBox1.y - answerBox1.height/2) < letterZ.y ) and 
            ((answerBox1.y + answerBox1.height/2) > letterZ.y ) ) then

            -- setting the position of the number to be in the center of the box
            letterZ.x = answerBox1.x
            letterZ.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            letterZ.x = letterZOriginalX
            letterZ.y = letterZOriginalY
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

local function AddEventListeners()
			-- add answerBox1 listener
	letterA:addEventListener("touch", TouchListenerA)
	letterB:addEventListener("touch", TouchListenerB)
	letterC:addEventListener("touch", TouchListenerC)
	letterD:addEventListener("touch", TouchListenerD)
	letterE:addEventListener("touch", TouchListenerE)
	letterF:addEventListener("touch", TouchListenerF)
	letterG:addEventListener("touch", TouchListenerG)
	letterH:addEventListener("touch", TouchListenerH)
	letterI:addEventListener("touch", TouchListenerI)
	letterJ:addEventListener("touch", TouchListenerJ)
	letterK:addEventListener("touch", TouchListenerK)
	letterL:addEventListener("touch", TouchListenerL)
	letterM:addEventListener("touch", TouchListenerM)
	letterN:addEventListener("touch", TouchListenerN)
	letterO:addEventListener("touch", TouchListenerO)
	letterP:addEventListener("touch", TouchListenerP)
	letterQ:addEventListener("touch", TouchListenerQ)
	letterR:addEventListener("touch", TouchListenerR)
	letterS:addEventListener("touch", TouchListenerS)
	letterT:addEventListener("touch", TouchListenerT)
	letterU:addEventListener("touch", TouchListenerU)
	letterV:addEventListener("touch", TouchListenerV)
	letterW:addEventListener("touch", TouchListenerW)
	letterX:addEventListener("touch", TouchListenerX)
	letterY:addEventListener("touch", TouchListenerY)
	letterZ:addEventListener("touch", TouchListenerZ)
end

local function RemoveEventListeners()
			-- add answerBox1 listener
	letterA:removeEventListener("touch", TouchListenerA)
	letterB:removeEventListener("touch", TouchListenerB)
	letterC:removeEventListener("touch", TouchListenerC)
	letterD:removeEventListener("touch", TouchListenerD)
	letterE:removeEventListener("touch", TouchListenerE)
	letterF:removeEventListener("touch", TouchListenerF)
	letterG:removeEventListener("touch", TouchListenerG)
	letterH:removeEventListener("touch", TouchListenerH)
	letterI:removeEventListener("touch", TouchListenerI)
	letterJ:removeEventListener("touch", TouchListenerJ)
	letterK:removeEventListener("touch", TouchListenerK)
	letterL:removeEventListener("touch", TouchListenerL)
	letterM:removeEventListener("touch", TouchListenerM)
	letterN:removeEventListener("touch", TouchListenerN)
	letterO:removeEventListener("touch", TouchListenerO)
	letterP:removeEventListener("touch", TouchListenerP)
	letterQ:removeEventListener("touch", TouchListenerQ)
	letterR:removeEventListener("touch", TouchListenerR)
	letterS:removeEventListener("touch", TouchListenerS)
	letterT:removeEventListener("touch", TouchListenerT)
	letterU:removeEventListener("touch", TouchListenerU)
	letterV:removeEventListener("touch", TouchListenerV)
	letterW:removeEventListener("touch", TouchListenerW)
	letterX:removeEventListener("touch", TouchListenerX)
	letterY:removeEventListener("touch", TouchListenerY)
	letterZ:removeEventListener("touch", TouchListenerZ)
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

	letterA = display.newText(" A ", letterAOriginalX, display.contentHeight/1.2, nil, 30)
	letterB = display.newText(" B ", letterBOriginalX, display.contentHeight/1.2, nil, 30)
	letterC = display.newText(" C ", letterCOriginalX, display.contentHeight/1.2, nil, 30)
	letterD = display.newText(" D ", letterDOriginalX, display.contentHeight/1.2, nil, 30)
	letterE = display.newText(" E ", letterEOriginalX, display.contentHeight/1.2, nil, 30)
	letterF = display.newText(" F ", letterFOriginalX, display.contentHeight/1.2, nil, 30)
	letterG = display.newText(" G ", letterGOriginalX, display.contentHeight/1.2, nil, 30)
	letterH = display.newText(" H ", letterHOriginalX, display.contentHeight/1.2, nil, 30)
	letterI = display.newText(" I ", letterIOriginalX, display.contentHeight/1.2, nil, 30)
	letterJ = display.newText(" J ", letterJOriginalX, display.contentHeight/1.2, nil, 30)
	letterK = display.newText(" K ", letterKOriginalX, display.contentHeight/1.2, nil, 30)
	letterL = display.newText(" L ", letterLOriginalX, display.contentHeight/1.2, nil, 30)
	letterM = display.newText(" M ", letterMOriginalX, display.contentHeight/1.2, nil, 30)
	letterN = display.newText(" N ", letterNOriginalX, display.contentHeight/1.2, nil, 30)
	letterO = display.newText(" O ", letterOOriginalX, display.contentHeight/1.2, nil, 30)
	letterP = display.newText(" P ", letterPOriginalX, display.contentHeight/1.2, nil, 30)
	letterQ = display.newText(" Q ", letterQOriginalX, display.contentHeight/1.2, nil, 30)
	letterR = display.newText(" R ", letterROriginalX, display.contentHeight/1.2, nil, 30)
	letterS = display.newText(" S ", letterSOriginalX, display.contentHeight/1.2, nil, 30)
	letterT = display.newText(" T ", letterTOriginalX, display.contentHeight/1.2, nil, 30)
	letterU = display.newText(" U ", letterUOriginalX, display.contentHeight/1.2, nil, 30)
	letterV = display.newText(" V ", letterVOriginalX, display.contentHeight/1.2, nil, 30)
	letterW = display.newText(" W ", letterWOriginalX, display.contentHeight/1.2, nil, 30)
	letterX = display.newText(" X ", letterXOriginalX, display.contentHeight/1.2, nil, 30)
	letterY = display.newText(" Y ", letterYOriginalX, display.contentHeight/1.2, nil, 30)
	letterZ = display.newText(" Z ", letterZOriginalX, display.contentHeight/1.2, nil, 30)

	letterAOriginalX = display.contentWidth/9
	letterAOriginalY = display.contentHeight/1.2

	letterBOriginalX = letterAOriginalX.x + 75
	letterBOriginalY = letterAOriginalY.y

	letterCOriginalX = letterAOriginalX.x + 100
	letterCOriginalY = letterAOriginalY.y

	letterDOriginalX = letterAOriginalX.x + 125
	letterDOriginalY = letterAOriginalY.y
	
	letterEOriginalX = letterAOriginalX.x + 150
	letterEOriginalY = letterAOriginalY.y
	
	letterFOriginalX = letterAOriginalX.x + 175
	letterFOriginalY = letterAOriginalY.y
	
	letterGOriginalX = letterAOriginalX.x + 200
	letterGOriginalY = letterAOriginalY.y
	
	letterHOriginalX = letterAOriginalX.x + 225
	letterHOriginalY = letterAOriginalY.y
	
	letterIOriginalX = letterAOriginalX.x + 250
	letterIOriginalY = letterAOriginalY.y
	
	letterJOriginalX = letterAOriginalX.x + 275
	letterJOriginalY = letterAOriginalY.y
	
	letterKOriginalX = letterAOriginalX.x + 300
	letterKOriginalY = letterAOriginalY.y
	
	letterLOriginalX = letterAOriginalX.x + 325
	letterLOriginalY = letterAOriginalY.y
	
	letterMOriginalX = letterAOriginalX.x + 350
	letterMOriginalY = letterAOriginalY.y
	
	letterNOriginalX = letterAOriginalX.x + 350
	letterNOriginalY = letterAOriginalY.y
	
	letterOOriginalX = letterAOriginalX.x + 375
	letterOOriginalY = letterAOriginalY.y
	
	letterPOriginalX = letterAOriginalX.x + 400
	letterPOriginalY = letterAOriginalY.y
	
	letterQOriginalX = letterAOriginalX.x + 425
	letterQOriginalY = letterAOriginalY.y
	
	letterROriginalX = letterAOriginalX.x + 450
	letterROriginalY = letterAOriginalY.y
	
	letterSOriginalX = letterAOriginalX.x + 475
	letterSOriginalY = letterAOriginalY.y
	
	letterTOriginalX = letterAOriginalX.x + 500
	letterTOriginalY = letterAOriginalY.y
	
	letterUOriginalX = letterAOriginalX.x + 525
	letterUOriginalY = letterAOriginalY.y
	
	letterVOriginalX = letterAOriginalX.x + 550
	letterVOriginalY = letterAOriginalY.y
	
	letterWOriginalX = letterAOriginalX.x + 575
	letterWOriginalY = letterAOriginalY.y
	
	letterXOriginalX = letterAOriginalX.x + 600
	letterXOriginalY = letterAOriginalY.y
	
	letterYOriginalX = letterAOriginalX.x + 675
	letterYOriginalY = letterAOriginalY.y
	
	letterZOriginalX = letterAOriginalX.x + 700
	letterZOriginalY = letterAOriginalY.y

	letterWidth = 75

	A = display.newText(" A ", letterAOriginalX, letterAOriginalY, nil, letterSize)
	B = display.newText(" B ", letterBOriginalX, letterAOriginalY, nil, letterSize)
	C = display.newText(" C ", letterCOriginalX, letterAOriginalY, nil, letterSize)
	D = display.newText(" D ", letterDOriginalX, letterAOriginalY, nil, letterSize)
	E = display.newText(" E ", letterEOriginalX, letterAOriginalY, nil, letterSize)
	F = display.newText(" F ", letterFOriginalX, letterAOriginalY, nil, letterSize)
	G = display.newText(" G ", letterGOriginalX, letterAOriginalY, nil, letterSize)
	H = display.newText(" H ", letterHOriginalX, letterAOriginalY, nil, letterSize)
	I = display.newText(" I ", letterIOriginalX, letterAOriginalY, nil, letterSize)
	J = display.newText(" J ", letterJOriginalX, letterAOriginalY, nil, letterSize)
	K = display.newText(" K ", letterKOriginalX, letterAOriginalY, nil, letterSize)
	L = display.newText(" L ", letterLOriginalX, letterAOriginalY, nil, letterSize)
	M = display.newText(" M ", letterMOriginalX, letterAOriginalY, nil, letterSize)
	N = display.newText(" N ", letterNOriginalX, letterAOriginalY, nil, letterSize)
	O = display.newText(" O ", letterOOriginalX, letterAOriginalY, nil, letterSize)
	P = display.newText(" P ", letterPOriginalX, letterAOriginalY, nil, letterSize)
	Q = display.newText(" Q ", letterQOriginalX, letterAOriginalY, nil, letterSize)
	R = display.newText(" R ", letterROriginalX, letterAOriginalY, nil, letterSize)
	S = display.newText(" S ", letterSOriginalX, letterAOriginalY, nil, letterSize)
	T = display.newText(" T ", letterTOriginalX, letterAOriginalY, nil, letterSize)
	U = display.newText(" U ", letterUOriginalX, letterAOriginalY, nil, letterSize)
	V = display.newText(" V ", letterVOriginalX, letterAOriginalY, nil, letterSize)
	W = display.newText(" W ", letterWOriginalX, letterAOriginalY, nil, letterSize)
	X = display.newText(" X ", letterXOriginalX, letterAOriginalY, nil, letterSize)
	Y = display.newText(" Y ", letterYOriginalX, letterAOriginalY, nil, letterSize)
	Z = display.newText(" Z ", letterZOriginalX, letterAOriginalY, nil, letterSize)


	-----------------------------------------------------------------------------------------

	-- the black box where the user will drag the answer
    answerBox1 = display.newImageRect("Images/userAnswerBoxPlaceholder.png",  100, 130, 0, 0)
    answerBox1.x = display.contentWidth * 0.6
    answerBox1.y = display.contentHeight * 0.9
    answerBox1Filled = false



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
	sceneGroup:insert( letterA )
	sceneGroup:insert( letterB )
	sceneGroup:insert( letterC )
	sceneGroup:insert( letterD )
	sceneGroup:insert( letterE )
	sceneGroup:insert( letterF )
	sceneGroup:insert( letterG )
	sceneGroup:insert( letterH )
	sceneGroup:insert( letterI )
	sceneGroup:insert( letterJ )
	sceneGroup:insert( letterK )
	sceneGroup:insert( letterL )
	sceneGroup:insert( letterM )
	sceneGroup:insert( letterN )
	sceneGroup:insert( letterO )
	sceneGroup:insert( letterP )
	sceneGroup:insert( letterQ )
	sceneGroup:insert( letterR )
	sceneGroup:insert( letterS )
	sceneGroup:insert( letterT )
	sceneGroup:insert( letterU )
	sceneGroup:insert( letterV )
	sceneGroup:insert( letterW )
	sceneGroup:insert( letterX )
	sceneGroup:insert( letterY )
	sceneGroup:insert( letterZ )





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
		AddEventListeners()
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
		RemoveEventListeners()
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