
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
            A.x = letterAOriginalX
            A.y = letterAOriginalY
        end
	end     
end 

local function TouchListenerB(touch)

	if (touch.phase == "began") then
		print ("***Clicked B")
		
	elseif (touch.phase == "moved") then
		B.x = touch.x
		B.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < B.x ) and
            ((answerBox1.x + answerBox1.width/2) > B.x ) and 
            ((answerBox1.y - answerBox1.height/2) < B.y ) and 
            ((answerBox1.y + answerBox1.height/2) > B.y ) ) then

            -- setting the position of the number to be in the center of the box
            B.x = answerBox1.x
            B.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            B.x = letterBOriginalX
            B.y = letterBOriginalY
        end
	end     
end 

local function TouchListenerC(touch)

	if (touch.phase == "began") then
		print ("***Clicked C")
		
	elseif (touch.phase == "moved") then
		C.x = touch.x
		C.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < C.x ) and
            ((answerBox1.x + answerBox1.width/2) > C.x ) and 
            ((answerBox1.y - answerBox1.height/2) < C.y ) and 
            ((answerBox1.y + answerBox1.height/2) > C.y ) ) then

            -- setting the position of the number to be in the center of the box
            C.x = answerBox1.x
            C.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            C.x = letterCOriginalX
            C.y = letterCOriginalY
        end
	end     
end

local function TouchListenerD(touch)

	if (touch.phase == "began") then
		print ("***Clicked D")
		
	elseif (touch.phase == "moved") then
		D.x = touch.x
		D.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < D.x ) and
            ((answerBox1.x + answerBox1.width/2) > D.x ) and 
            ((answerBox1.y - answerBox1.height/2) <D.y ) and 
            ((answerBox1.y + answerBox1.height/2) >D.y ) ) then

            -- setting the position of the number to be in the center of the box
            D.x = answerBox1.x
            D.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            D.x = letterDOriginalX
            D.y = letterDOriginalY
        end
	end     
end 

local function TouchListenerE(touch)

	if (touch.phase == "began") then
		print ("***Clicked E")
		
	elseif (touch.phase == "moved") then
		E.x = touch.x
		E.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < E.x ) and
            ((answerBox1.x + answerBox1.width/2) > E.x ) and 
            ((answerBox1.y - answerBox1.height/2) < E.y ) and 
            ((answerBox1.y + answerBox1.height/2) > E.y ) ) then

            -- setting the position of the number to be in the center of the box
            E.x = answerBox1.x
            E.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            E.x = letterEOriginalX
            E.y = letterEOriginalY
        end
	end     
end

local function TouchListenerF(touch)

	if (touch.phase == "began") then
		print ("***Clicked F")
		
	elseif (touch.phase == "moved") then
		F.x = touch.x
		F.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < F.x ) and
            ((answerBox1.x + answerBox1.width/2) > F.x ) and 
            ((answerBox1.y - answerBox1.height/2) < F.y ) and 
            ((answerBox1.y + answerBox1.height/2) > F.y ) ) then

            -- setting the position of the number to be in the center of the box
            F.x = answerBox1.x
            F.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            F.x = letterFOriginalX
            F.y = letterFOriginalY
        end
	end     
end

local function TouchListenerG(touch)

	if (touch.phase == "began") then
		print ("***Clicked G")
		
	elseif (touch.phase == "moved") then
		G.x = touch.x
		G.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < G.x ) and
            ((answerBox1.x + answerBox1.width/2) > G.x ) and 
            ((answerBox1.y - answerBox1.height/2) < G.y ) and 
            ((answerBox1.y + answerBox1.height/2) > G.y ) ) then

            -- setting the position of the number to be in the center of the box
            G.x = answerBox1.x
            G.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            G.x = letterGOriginalX
            G.y = letterGOriginalY
        end
	end     
end

local function TouchListenerH(touch)

	if (touch.phase == "began") then
		print ("***Clicked H")
		
	elseif (touch.phase == "moved") then
		H.x = touch.x
		H.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < H.x ) and
            ((answerBox1.x + answerBox1.width/2) > H.x ) and 
            ((answerBox1.y - answerBox1.height/2) < H.y ) and 
            ((answerBox1.y + answerBox1.height/2) > H.y ) ) then

            -- setting the position of the number to be in the center of the box
            H.x = answerBox1.x
            H.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            H.x = letterHOriginalX
            H.y = letterHOriginalY
        end
	end     
end

local function TouchListenerI(touch)

	if (touch.phase == "began") then
		print ("***Clicked I")
		
	elseif (touch.phase == "moved") then
		I.x = touch.x
		I.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < I.x ) and
            ((answerBox1.x + answerBox1.width/2) > I.x ) and 
            ((answerBox1.y - answerBox1.height/2) < I.y ) and 
            ((answerBox1.y + answerBox1.height/2) > I.y ) ) then

            -- setting the position of the number to be in the center of the box
            I.x = answerBox1.x
            I.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            I.x = letterIOriginalX
            I.y = letterIOriginalY
        end
	end     
end

local function TouchListenerJ(touch)

	if (touch.phase == "began") then
		print ("***Clicked J")
		
	elseif (touch.phase == "moved") then
		J.x = touch.x
		J.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < J.x ) and
            ((answerBox1.x + answerBox1.width/2) > J.x ) and 
            ((answerBox1.y - answerBox1.height/2) < J.y ) and 
            ((answerBox1.y + answerBox1.height/2) > J.y ) ) then

            -- setting the position of the number to be in the center of the box
            J.x = answerBox1.x
            J.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            J.x = letterJOriginalX
            J.y = letterJOriginalY
        end
	end     
end

local function TouchListenerK(touch)

	if (touch.phase == "began") then
		print ("***Clicked K")
		
	elseif (touch.phase == "moved") then
		K.x = touch.x
		K.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < K.x ) and
            ((answerBox1.x + answerBox1.width/2) > K.x ) and 
            ((answerBox1.y - answerBox1.height/2) < K.y ) and 
            ((answerBox1.y + answerBox1.height/2) > K.y ) ) then

            -- setting the position of the number to be in the center of the box
            K.x = answerBox1.x
            K.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            K.x = letterKOriginalX
            K.y = letterKOriginalY
        end
	end     
end

local function TouchListenerL(touch)

	if (touch.phase == "began") then
		print ("***Clicked L")
		
	elseif (touch.phase == "moved") then
		L.x = touch.x
		L.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < L.x ) and
            ((answerBox1.x + answerBox1.width/2) > L.x ) and 
            ((answerBox1.y - answerBox1.height/2) < L.y ) and 
            ((answerBox1.y + answerBox1.height/2) > L.y ) ) then

            -- setting the position of the number to be in the center of the box
            L.x = answerBox1.x
            L.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            L.x = letterLOriginalX
            L.y = letterLOriginalY
        end
	end     
end

local function TouchListenerM(touch)

	if (touch.phase == "began") then
		print ("***Clicked M")
		
	elseif (touch.phase == "moved") then
		M.x = touch.x
		M.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < M.x ) and
            ((answerBox1.x + answerBox1.width/2) > M.x ) and 
            ((answerBox1.y - answerBox1.height/2) < M.y ) and 
            ((answerBox1.y + answerBox1.height/2) > M.y ) ) then

            -- setting the position of the number to be in the center of the box
            M.x = answerBox1.x
            M.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            M.x = letterMOriginalX
            M.y = letterMOriginalY
        end
	end     
end

local function TouchListenerN(touch)

	if (touch.phase == "began") then
		print ("***Clicked N")
		
	elseif (touch.phase == "moved") then
		N.x = touch.x
		N.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < N.x ) and
            ((answerBox1.x + answerBox1.width/2) > N.x ) and 
            ((answerBox1.y - answerBox1.height/2) < N.y ) and 
            ((answerBox1.y + answerBox1.height/2) > N.y ) ) then

            -- setting the position of the number to be in the center of the box
            N.x = answerBox1.x
            N.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            N.x = letterNOriginalX
            N.y = letterNOriginalY
        end
	end     
end

local function TouchListenerO(touch)

	if (touch.phase == "began") then
		print ("***Clicked O")
		
	elseif (touch.phase == "moved") then
		O.x = touch.x
		O.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < O.x ) and
            ((answerBox1.x + answerBox1.width/2) > O.x ) and 
            ((answerBox1.y - answerBox1.height/2) < O.y ) and 
            ((answerBox1.y + answerBox1.height/2) > O.y ) ) then

            -- setting the position of the number to be in the center of the box
            O.x = answerBox1.x
            O.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            O.x = letterOOriginalX
            O.y = letterOOriginalY
        end
	end     
end

local function TouchListenerP(touch)

	if (touch.phase == "began") then
		print ("***Clicked P")
		
	elseif (touch.phase == "moved") then
		P.x = touch.x
		P.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < P.x ) and
            ((answerBox1.x + answerBox1.width/2) > P.x ) and 
            ((answerBox1.y - answerBox1.height/2) < P.y ) and 
            ((answerBox1.y + answerBox1.height/2) > P.y ) ) then

            -- setting the position of the number to be in the center of the box
            P.x = answerBox1.x
            P.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            P.x = letterPOriginalX
            P.y = letterPOriginalY
        end
	end     
end

local function TouchListenerQ(touch)

	if (touch.phase == "began") then
		print ("***Clicked Q")
		
	elseif (touch.phase == "moved") then
		Q.x = touch.x
		Q.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < Q.x ) and
            ((answerBox1.x + answerBox1.width/2) > Q.x ) and 
            ((answerBox1.y - answerBox1.height/2) < Q.y ) and 
            ((answerBox1.y + answerBox1.height/2) > Q.y ) ) then

            -- setting the position of the number to be in the center of the box
            Q.x = answerBox1.x
            Q.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            Q.x = letterQOriginalX
            Q.y = letterQOriginalY
        end
	end     
end

local function TouchListenerR(touch)

	if (touch.phase == "began") then
		print ("***Clicked R")
		
	elseif (touch.phase == "moved") then
		R.x = touch.x
		R.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < R.x ) and
            ((answerBox1.x + answerBox1.width/2) > R.x ) and 
            ((answerBox1.y - answerBox1.height/2) < R.y ) and 
            ((answerBox1.y + answerBox1.height/2) > R.y ) ) then

            -- setting the position of the number to be in the center of the box
            R.x = answerBox1.x
            R.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            R.x = letterROriginalX
            R.y = letterROriginalY
        end
	end     
end

local function TouchListenerS(touch)

	if (touch.phase == "began") then
		print ("***Clicked S")
		
	elseif (touch.phase == "moved") then
		S.x = touch.x
		S.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < S.x ) and
            ((answerBox1.x + answerBox1.width/2) > S.x ) and 
            ((answerBox1.y - answerBox1.height/2) < S.y ) and 
            ((answerBox1.y + answerBox1.height/2) > S.y ) ) then

            -- setting the position of the number to be in the center of the box
            S.x = answerBox1.x
            S.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            S.x = letterSOriginalX
            S.y = letterSOriginalY
        end
	end     
end

local function TouchListenerT(touch)

	if (touch.phase == "began") then
		print ("***Clicked T")
		
	elseif (touch.phase == "moved") then
		T.x = touch.x
		T.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < T.x ) and
            ((answerBox1.x + answerBox1.width/2) > T.x ) and 
            ((answerBox1.y - answerBox1.height/2) < T.y ) and 
            ((answerBox1.y + answerBox1.height/2) > T.y ) ) then

            -- setting the position of the number to be in the center of the box
            T.x = answerBox1.x
            T.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            T.x = letterTOriginalX
            T.y = letterTOriginalY
        end
	end     
end

local function TouchListenerU(touch)

	if (touch.phase == "began") then
		print ("***Clicked U")
		
	elseif (touch.phase == "moved") then
		U.x = touch.x
		U.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < U.x ) and
            ((answerBox1.x + answerBox1.width/2) > U.x ) and 
            ((answerBox1.y - answerBox1.height/2) < U.y ) and 
            ((answerBox1.y + answerBox1.height/2) > U.y ) ) then

            -- setting the position of the number to be in the center of the box
            U.x = answerBox1.x
            U.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            U.x = letterUOriginalX
            U.y = letterUOriginalY
        end
	end     
end

local function TouchListenerV(touch)

	if (touch.phase == "began") then
		print ("***Clicked V")
		
	elseif (touch.phase == "moved") then
		V.x = touch.x
		V.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < V.x ) and
            ((answerBox1.x + answerBox1.width/2) > V.x ) and 
            ((answerBox1.y - answerBox1.height/2) < V.y ) and 
            ((answerBox1.y + answerBox1.height/2) > V.y ) ) then

            -- setting the position of the number to be in the center of the box
            V.x = answerBox1.x
            V.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            V.x = letterVOriginalX
            V.y = letterVOriginalY
        end
	end     
end

local function TouchListenerW(touch)

	if (touch.phase == "began") then
		print ("***Clicked W")
		
	elseif (touch.phase == "moved") then
		W.x = touch.x
		W.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < W.x ) and
            ((answerBox1.x + answerBox1.width/2) > W.x ) and 
            ((answerBox1.y - answerBox1.height/2) < W.y ) and 
            ((answerBox1.y + answerBox1.height/2) > W.y ) ) then

            -- setting the position of the number to be in the center of the box
            W.x = answerBox1.x
            W.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            W.x = letterWOriginalX
            W.y = letterWOriginalY
        end
	end     
end

local function TouchListenerX(touch)

	if (touch.phase == "began") then
		print ("***Clicked X")
		
	elseif (touch.phase == "moved") then
		X.x = touch.x
		X.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < X.x ) and
            ((answerBox1.x + answerBox1.width/2) > X.x ) and 
            ((answerBox1.y - answerBox1.height/2) < X.y ) and 
            ((answerBox1.y + answerBox1.height/2) > X.y ) ) then

            -- setting the position of the number to be in the center of the box
            X.x = answerBox1.x
            X.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            X.x = letterXOriginalX
            X.y = letterXOriginalY
        end
	end     
end

local function TouchListenerY(touch)

	if (touch.phase == "began") then
		print ("***Clicked Y")
		
	elseif (touch.phase == "moved") then
		Y.x = touch.x
		Y.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < Y.x ) and
            ((answerBox1.x + answerBox1.width/2) > Y.x ) and 
            ((answerBox1.y - answerBox1.height/2) < Y.y ) and 
            ((answerBox1.y + answerBox1.height/2) > Y.y ) ) then

            -- setting the position of the number to be in the center of the box
            Y.x = answerBox1.x
            Y.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            Y.x = letterYOriginalX
            Y.y = letterYOriginalY
        end
	end     
end

local function TouchListenerZ(touch)

	if (touch.phase == "began") then
		print ("***Clicked Z")
		
	elseif (touch.phase == "moved") then
		Z.x = touch.x
		Z.y = touch.y


		
	elseif (touch.phase == "ended") then
	 -- if the number is dragged into the userAnswerBox, place it in the center of it
        if (((answerBox1.x - answerBox1.width/2) < Z.x ) and
            ((answerBox1.x + answerBox1.width/2) > Z.x ) and 
            ((answerBox1.y - answerBox1.height/2) < Z.y ) and 
            ((answerBox1.y + answerBox1.height/2) > Z.y ) ) then

            -- setting the position of the number to be in the center of the box
            Z.x = answerBox1.x
            Z.y = answerBox1.y
            answerBox1Filled = true

            -- call the function to check if the user's input is correct or not
            CheckUserAnswerInput()

        --else make box go back to where it was
        else
            Z.x = letterZOriginalX
            Z.y = letterZOriginalY
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
	A:addEventListener("touch", TouchListenerA)
	B:addEventListener("touch", TouchListenerB)
	C:addEventListener("touch", TouchListenerC)
	D:addEventListener("touch", TouchListenerD)
	E:addEventListener("touch", TouchListenerE)
	F:addEventListener("touch", TouchListenerF)
	G:addEventListener("touch", TouchListenerG)
	H:addEventListener("touch", TouchListenerH)
	I:addEventListener("touch", TouchListenerI)
	J:addEventListener("touch", TouchListenerJ)
	K:addEventListener("touch", TouchListenerK)
	L:addEventListener("touch", TouchListenerL)
	M:addEventListener("touch", TouchListenerM)
	N:addEventListener("touch", TouchListenerN)
	O:addEventListener("touch", TouchListenerO)
	P:addEventListener("touch", TouchListenerP)
	Q:addEventListener("touch", TouchListenerQ)
	R:addEventListener("touch", TouchListenerR)
	S:addEventListener("touch", TouchListenerS)
	T:addEventListener("touch", TouchListenerT)
	U:addEventListener("touch", TouchListenerU)
	V:addEventListener("touch", TouchListenerV)
	W:addEventListener("touch", TouchListenerW)
	X:addEventListener("touch", TouchListenerX)
	Y:addEventListener("touch", TouchListenerY)
	Z:addEventListener("touch", TouchListenerZ)
end

local function RemoveEventListeners()
			-- add answerBox1 listener
	A:removeEventListener("touch", TouchListenerA)
	B:removeEventListener("touch", TouchListenerB)
	C:removeEventListener("touch", TouchListenerC)
	D:removeEventListener("touch", TouchListenerD)
	E:removeEventListener("touch", TouchListenerE)
	F:removeEventListener("touch", TouchListenerF)
	G:removeEventListener("touch", TouchListenerG)
	H:removeEventListener("touch", TouchListenerH)
	I:removeEventListener("touch", TouchListenerI)
	J:removeEventListener("touch", TouchListenerJ)
	K:removeEventListener("touch", TouchListenerK)
	L:removeEventListener("touch", TouchListenerL)
	M:removeEventListener("touch", TouchListenerM)
	N:removeEventListener("touch", TouchListenerN)
	O:removeEventListener("touch", TouchListenerO)
	P:removeEventListener("touch", TouchListenerP)
	Q:removeEventListener("touch", TouchListenerQ)
	R:removeEventListener("touch", TouchListenerR)
	S:removeEventListener("touch", TouchListenerS)
	T:removeEventListener("touch", TouchListenerT)
	U:removeEventListener("touch", TouchListenerU)
	V:removeEventListener("touch", TouchListenerV)
	W:removeEventListener("touch", TouchListenerW)
	X:removeEventListener("touch", TouchListenerX)
	Y:removeEventListener("touch", TouchListenerY)
	Z:removeEventListener("touch", TouchListenerZ)
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

	A = display.newText(" A ", letterAOriginalX, display.contentHeight/1.2, nil, 30)
	B = display.newText(" B ", letterBOriginalX, display.contentHeight/1.2, nil, 30)
	C = display.newText(" C ", letterCOriginalX, display.contentHeight/1.2, nil, 30)
	D = display.newText(" D ", letterDOriginalX, display.contentHeight/1.2, nil, 30)
	E = display.newText(" E ", letterEOriginalX, display.contentHeight/1.2, nil, 30)
	F = display.newText(" F ", letterFOriginalX, display.contentHeight/1.2, nil, 30)
	G = display.newText(" G ", letterGOriginalX, display.contentHeight/1.2, nil, 30)
	H = display.newText(" H ", letterHOriginalX, display.contentHeight/1.2, nil, 30)
	I = display.newText(" I ", letterIOriginalX, display.contentHeight/1.2, nil, 30)
	J = display.newText(" J ", letterJOriginalX, display.contentHeight/1.2, nil, 30)
	K = display.newText(" K ", letterKOriginalX, display.contentHeight/1.2, nil, 30)
	L = display.newText(" L ", letterLOriginalX, display.contentHeight/1.2, nil, 30)
	M = display.newText(" M ", letterMOriginalX, display.contentHeight/1.2, nil, 30)
	N = display.newText(" N ", letterNOriginalX, display.contentHeight/1.2, nil, 30)
	O = display.newText(" O ", letterOOriginalX, display.contentHeight/1.2, nil, 30)
	P = display.newText(" P ", letterPOriginalX, display.contentHeight/1.2, nil, 30)
	Q = display.newText(" Q ", letterQOriginalX, display.contentHeight/1.2, nil, 30)
	R = display.newText(" R ", letterROriginalX, display.contentHeight/1.2, nil, 30)
	S = display.newText(" S ", letterSOriginalX, display.contentHeight/1.2, nil, 30)
	T = display.newText(" T ", letterTOriginalX, display.contentHeight/1.2, nil, 30)
	U = display.newText(" U ", letterUOriginalX, display.contentHeight/1.2, nil, 30)
	V = display.newText(" V ", letterVOriginalX, display.contentHeight/1.2, nil, 30)
	W = display.newText(" W ", letterWOriginalX, display.contentHeight/1.2, nil, 30)
	X = display.newText(" X ", letterXOriginalX, display.contentHeight/1.2, nil, 30)
	Y = display.newText(" Y ", letterYOriginalX, display.contentHeight/1.2, nil, 30)
	Z = display.newText(" Z ", letterZOriginalX, display.contentHeight/1.2, nil, 30)

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
	sceneGroup:insert( A )
	sceneGroup:insert( B )
	sceneGroup:insert( C )
	sceneGroup:insert( D )
	sceneGroup:insert( E )
	sceneGroup:insert( F )
	sceneGroup:insert( G )
	sceneGroup:insert( H )
	sceneGroup:insert( I )
	sceneGroup:insert( J )
	sceneGroup:insert( K )
	sceneGroup:insert( L )
	sceneGroup:insert( M )
	sceneGroup:insert( N )
	sceneGroup:insert( O )
	sceneGroup:insert( P )
	sceneGroup:insert( Q )
	sceneGroup:insert( R )
	sceneGroup:insert( S )
	sceneGroup:insert( T )
	sceneGroup:insert( U )
	sceneGroup:insert( V )
	sceneGroup:insert( W )
	sceneGroup:insert( X )
	sceneGroup:insert( Y )
	sceneGroup:insert( Z )





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