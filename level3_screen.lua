-----------------------------------------------------------------------------------------
--
-- level1_screen.lua (3)
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the level 1 screen of the game.
-----------------------------------------------------------------------------------------
-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------
--ADD BUTTON CLICK SOUNDS L
-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level3_screen"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-- setting the background color
display.setDefault("background", 204/255, 229/255, 255/255)

-------------------------------------------------------------------------------------------
--GLOBAL VARIABLES
-------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene

-- shapes being displayed
local lev3Q1_image
local lev3Q2_image
local lev3Q3_image
local lev3Q4_image
local lev3Q5_image
local lev3Q6_image
local lev3Q7_image
local lev3Q8_image
local lev3Q9_image          
local lev3Q10_image

-- position of answers
local randomPosition

-- set the positions of the answers
local X1 = 60
local Y1 = 300

local X2 = 250
local Y2 = 300

local X3 = 60
local Y3 = 500

local X4 = 250
local Y4 = 500

local X5 = 150
local Y5 = 400

-- countdown timer
local countDownTimer

-- countdown timer text
local clockText

-- seconds 
local secondsLeft = 30
local totalSeconds = 30

--lives
local lives = 3

-- score is equal to 0
local score = 0

-- displayed if answer is right or wrong
local correctTextObject
local incorrectTextObject

-- random question
local randomQuestion 

---------------------------------------------------------------------------------------------
--Question & Answer objects 
---------------------------------------------------------------------------------------------

-- question Text object
local questionObject

local answerObject

local incorrectObject1

local incorrectObject2

local incorrectObject3

local incorrectObject4

----------------------------------------------------------------------
--SOUNDS
----------------------------------------------------------------------

local correctSound = audio.loadStream("Sounds/Spring.mp3")
local correctSoundChannel

local incorrectSound = audio.loadStream("Sounds/Boing.mp3")
local incorrectSoundChannel

local clickOn = audio.loadStream("Sounds/clickOn.mp3")
local clickOnSoundChannel

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------


-- Creating Transitioning Function back to main menu
local function BackTransition( )
    composer.gotoScene( "main_menu", {effect = "zoomOutInFadeRotate", time = 500})
end

-- choose a question for the user to be asked
local function AskQuestion()
    
    -- reset the time
    secondsLeft = totalSeconds

    -- choose random question
    randomQuestion = math.random(1,10)

    -- if random question = 1, display question 1
    if (randomQuestion == 1) then

        -- display the question
        questionObject.text = "How many triangles are there?"

        -- display question 1
        lev3Q1_image.isVisible = true
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "5"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "7"

    -- if random question = 2, display question 2
    elseif (randomQuestion == 2) then

        -- display the question
        questionObject.text = "How many triangles are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = true
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "7"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "5"

    -- if random question = 3, display question 3
    elseif (randomQuestion == 3) then

        -- display the question
        questionObject.text = "How many rectangles are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = true
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "6"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "5"
        incorrectObject4.text = "7"

    -- if random question = 4, display question 4
    elseif (randomQuestion == 4) then

        -- display the question
        questionObject.text = "How many rectangles are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = true
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "7"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "5"

    -- if random question = 5, display question 5
    elseif (randomQuestion == 5) then

        -- display the question
        questionObject.text = "How many triangles are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = true
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "7"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "5"

    -- if random question = 6, display question 6
    elseif (randomQuestion == 6) then

        -- display the question
        questionObject.text = "How many hexagons are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = true
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "2"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "7"

    -- if random question = 7, display question 7
    elseif (randomQuestion == 7) then

        -- display the question
        questionObject.text = "How many octagons are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = true
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "1"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "5"
        incorrectObject4.text = "2"

    -- if random question = 8, display question 8
    elseif (randomQuestion == 8) then

        -- display the question
        questionObject.text = "How many pentagons are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = true
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "2"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "1"

    -- if random question = 9, display question 9
    elseif (randomQuestion == 9) then

        -- display the question
        questionObject.text = "How many octagons are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = true
        lev3Q10_image.isVisible = false

        -- display the answers
        answerObject.text = "2"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "5"

    -- if random question = 10, display question 10
    elseif (randomQuestion == 10) then

        -- display the question
        questionObject.text = "How many heptagons are there?"

        -- display question 1
        lev3Q1_image.isVisible = false
        lev3Q2_image.isVisible = false
        lev3Q3_image.isVisible = false
        lev3Q4_image.isVisible = false
        lev3Q5_image.isVisible = false
        lev3Q6_image.isVisible = false
        lev3Q7_image.isVisible = false
        lev3Q8_image.isVisible = false
        lev3Q9_image.isVisible = false
        lev3Q10_image.isVisible = true

        -- display the answers
        answerObject.text = "3"
        incorrectObject1.text = "4"
        incorrectObject2.text = "5"
        incorrectObject3.text = "1"
        incorrectObject4.text = "2"
    end
end

local function SetAnswerPositions()

    randomPosition = math.random(1, 1)

    if (randomPosition == 1) then
        answerObject.x  = X1
        answerObject.y = Y1

        incorrectObject1.x = X2
        incorrectObject1.y = Y2

        incorrectObject2.x = X3
        incorrectObject2.y = Y3

        incorrectObject3.x = X4
        incorrectObject3.y = Y4

        incorrectObject4.x = X5
        incorrectObject4.y = Y5 

    elseif (randomPosition == 2) then

        answerObject.x  = X1
        answerObject.y = Y1

        incorrectObject1.x = X2
        incorrectObject1.y = Y2

        incorrectObject2.x = X3
        incorrectObject2.y = Y3

        incorrectObject3.x = X4
        incorrectObject3.y = Y4

        incorrectObject4.x = X5
        incorrectObject4.y = Y5


    end
end

-- decrease lives function
local function DecreaseLives()
    print ("***Called DecreaseLives")
    lives = lives - 1

    if (lives == 3) then        
        heart1.isVisible = true
        heart2.isVisible = true
        heart3.isVisible = true

    elseif (lives == 2) then
        heart1.isVisible = true
        heart2.isVisible = true
        heart3.isVisible = false

    elseif (lives == 1) then
        heart1.isVisible = true
        heart2.isVisible = false
        heart3.isVisible = false

    elseif (lives == 0) then
        heart1.isVisible = false
        heart2.isVisible = false
        heart3.isVisible = false

        composer.gotoScene( "youLoseScreen" )
    end
end

-- hide correct
local function HideCorrectTextObject()
    correctTextObject.isVisible = false
    AskQuestion()
    SetAnswerPositions()
end

-- hide incorrect
local function HideIncorrectTextObject ()
    incorrectTextObject.isVisible = false
    AskQuestion()
    SetAnswerPositions()
end

-- this function displays whether or not you got the question right
-- if the user's answer and the correct answer are the same:
local function AnswerListener ( touch )

    if (touch.phase == "ended") then
   
        -- make the correct object visible
        correctTextObject.isVisible = true    

        -- increase score by 1
        score = score+1
    
        -- update the score text
        scoreText.text = " Score = " .. score

        -- play correct sound
        correctSoundChannel = audio.play( correctSound )

        -- ask new question
        timer.performWithDelay( 2000, AskQuestion )

        -- call HideCorrect after 2 seconds
        timer.performWithDelay( 2000, HideCorrectTextObject )
    end
end

local function IncorrectObject1Listener (touch)

    if (touch.phase == "ended") then

        -- make the correct object visible
        incorrectTextObject.isVisible = true    
    
        -- update the hearts
        DecreaseLives ()

        -- play the incorrect sound
        incorrectSoundChannel = audio.play (incorrectSound)

        -- hide the incorrect object after 2 seconds
        timer.performWithDelay ( 2000, HideIncorrectTextObject )

        -- ask new question
        timer.performWithDelay( 2000, AskQuestion )
    end
end

local function IncorrectObject2Listener (touch)
     
    if (touch.phase == "ended") then
        -- make the correct object visible
        incorrectTextObject.isVisible = true    
    
        -- update the hearts
        DecreaseLives ()

        -- play the incorrect sound
        incorrectSoundChannel = audio.play (incorrectSound)

        -- hide the incorrect object after 2 seconds
        timer.performWithDelay ( 2000, HideIncorrectTextObject )

        -- ask new question
        timer.performWithDelay( 2000, AskQuestion )
    end
end

local function IncorrectObject3Listener (touch)
    
    if (touch.phase == "ended") then
    
        -- make the correct object visible
        incorrectTextObject.isVisible = true    
    
        -- update the hearts
        DecreaseLives ()

        -- play the incorrect sound
        incorrectSoundChannel = audio.play (incorrectSound)

        -- hide the incorrect object after 2 seconds
        timer.performWithDelay ( 2000, HideIncorrectTextObject )

        -- ask new question        
        timer.performWithDelay( 2000, AskQuestion )
    end
end

local function IncorrectObject4Listener (touch)

    if (touch.phase == "ended") then

        -- make the correct object visible
        incorrectTextObject.isVisible = true    
    
        -- update the hearts
        DecreaseLives ()

        -- play the incorrect sound
        incorrectSoundChannel = audio.play (incorrectSound)

        -- hide the incorrect object after 2 seconds
        timer.performWithDelay ( 2000, HideIncorrectTextObject )

        -- ask new question
        timer.performWithDelay( 2000, AskQuestion )
    end
end

local function AddTouchListeners()
    answerObject:addEventListener("touch", AnswerListener)
    incorrectObject1:addEventListener("touch", IncorrectObject1Listener)
    incorrectObject2:addEventListener("touch", IncorrectObject2Listener)
    incorrectObject3:addEventListener("touch", IncorrectObject3Listener)
    incorrectObject4:addEventListener("touch", IncorrectObject4Listener)
end

local function RemoveTouchListeners()
    answerObject:removeEventListener("touch", AnswerListener)
    incorrectObject1:removeEventListener("touch", IncorrectObject1Listener)
    incorrectObject2:removeEventListener("touch", IncorrectObject2Listener)
    incorrectObject3:removeEventListener("touch", IncorrectObject3Listener)
    incorrectObject4:removeEventListener("touch", IncorrectObject4Listener)
end

-- update time
local function UpdateTime ()

    -- decrement the number of seconds
    secondsLeft = secondsLeft - 1

    -- display the number of seconds left in the clock object
    clockText.text = "Seconds Left: " .. secondsLeft 

    if (secondsLeft == 0) then        
        -- reset the number of seconds left
        secondsLeft = totalSeconds       


        -- if there are no lives left, play a lose sound show a you lose image and cancel the
        -- timer remove the third heart by making it invisible
        DecreaseLives ()
    end
end

-- winning the game and going back to level select
local function Win()
    if (score == 4) then
        composer.gotoScene( "youWinScreen" )
        --timer.performWithDelay ( 4500, 
        composer.gotoScene ("level_select")
    end
end

-- start timer
local function startTimer ()
    -- create infinite timer
    countDownTimer = timer.performWithDelay (1000, UpdateTime, 0)
end

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Insert the shape 1 with x and y position
    lev3Q1_image = display.newImageRect("Images/lev3Q1.png", display.contentWidth/3, display.contentHeight)
    lev3Q1_image.x = 725
    lev3Q1_image.y = 475

    -- Width and height
    lev3Q1_image.width = 500
    lev3Q1_image.height = 500    

    -- make invisible
    lev3Q1_image.isVisible = false

    -- Insert the shape 2 with x and y position
    lev3Q2_image = display.newImageRect("Images/lev3Q2.png", display.contentWidth/3, display.contentHeight)
    lev3Q2_image.x = 725
    lev3Q2_image.y = 475

    -- Width and height
    lev3Q2_image.width = 500
    lev3Q2_image.height = 500

    -- make invisible
    lev3Q2_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q3_image = display.newImageRect("Images/lev3Q3.png", display.contentWidth/3, display.contentHeight)
    lev3Q3_image.x = 725
    lev3Q3_image.y = 475

    -- Width and height
    lev3Q3_image.width = 500
    lev3Q3_image.height = 500

    -- make invisible
    lev3Q3_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q4_image = display.newImageRect("Images/lev3Q4.png", display.contentWidth/3, display.contentHeight)
    lev3Q4_image.x = 725
    lev3Q4_image.y = 475

    -- Width and height
    lev3Q4_image.width = 500
    lev3Q4_image.height = 500

    -- make invisible
    lev3Q4_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q5_image = display.newImageRect("Images/lev3Q5.png", display.contentWidth/3, display.contentHeight)
    lev3Q5_image.x = 725
    lev3Q5_image.y = 475

    -- Width and height
    lev3Q5_image.width = 500
    lev3Q5_image.height = 500

    -- make invisible
    lev3Q5_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q6_image = display.newImageRect("Images/lev3Q6.png", display.contentWidth/3, display.contentHeight)
    lev3Q6_image.x = 725
    lev3Q6_image.y = 475

    -- Width and height
    lev3Q6_image.width = 500
    lev3Q6_image.height = 500

    -- make invisible
    lev3Q6_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q7_image = display.newImageRect("Images/lev3Q7.png", display.contentWidth/3, display.contentHeight)
    lev3Q7_image.x = 725
    lev3Q7_image.y = 475

    --Width and height
    lev3Q7_image.width = 500
    lev3Q7_image.height = 500

    -- make invisible
    lev3Q7_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q8_image = display.newImageRect("Images/lev3Q8.png", display.contentWidth/3, display.contentHeight)
    lev3Q8_image.x = 725
    lev3Q8_image.y = 475

    --Width and height
    lev3Q8_image.width = 500
    lev3Q8_image.height = 500

   -- make invisible
    lev3Q8_image.isVisible = false

    --Insert the shape 1 with x and y position
    lev3Q9_image = display.newImageRect("Images/lev3Q9.png", display.contentWidth/3, display.contentHeight)
    lev3Q9_image.x = 725
    lev3Q9_image.y = 475

    -- Width and height
    lev3Q9_image.width = 500
    lev3Q9_image.height = 500

    -- make invisible
    lev3Q9_image.isVisible = false

    -- Insert the shape 1 with x and y position
    lev3Q10_image = display.newImageRect("Images/lev3Q10.png", display.contentWidth/3, display.contentHeight)
    lev3Q10_image.x = 725
    lev3Q10_image.y = 475

    -- Width and height
    lev3Q10_image.width = 500
    lev3Q10_image.height = 500

    -- make invisible
    lev3Q10_image.isVisible = false

    --create question
    questionObject = display.newText ("", 10, 120, nil, 45)

    --set color of text
    questionObject: setTextColor(236/255, 110/255, 14/255)
    questionObject.anchorX = 0
    questionObject.anchorY = 0

   -- displays the time remaining on the screen
    clockText = display.newText("Seconds Left: " .. secondsLeft , 200, 200, nil, 50)
    clockText: setTextColor(0/255, 0/255, 0/255)

    -- answer objects
    answerObject = display.newText ("", X1, Y1, nil, 65)
    answerObject:setTextColor(17/255, 17/255, 218/255)

    -- incorrect objects
    incorrectObject1 = display.newText ("", X2, Y2, nil, 65)
    incorrectObject1:setTextColor(17/255, 17/255, 218/255)

    incorrectObject2 = display.newText ("", X3, Y3, nil, 65)
    incorrectObject2:setTextColor(17/2855, 17/255, 218/255)

    incorrectObject3 = display.newText ("", X4, Y4, nil, 65)
    incorrectObject3:setTextColor(17/255, 17/255, 218/255)

    incorrectObject4 = display.newText ("", X5, Y5, nil, 65)
    incorrectObject4:setTextColor(17/255, 17/255, 218/255)

    -- create the correct and incorrect text objects and make them invisible
    correctTextObject = display.newText( "Correct!", 350, 575, nil, 65 )
    correctTextObject:setTextColor(15/255, 111/255, 0/255)
    correctTextObject.isVisible = false

    incorrectTextObject = display.newText("Incorrect", 350, 575, nil, 65)
    incorrectTextObject: setTextColor (247/255, 27/255, 27/255)
    incorrectTextObject.isVisible = false

    -- display hearts
    heart1 = display.newImageRect ("Images/heart.png", 100,100)
    heart2 = display.newImageRect ("Images/heart.png", 100,100)
    heart3 = display.newImageRect ("Images/heart.png", 100,100)

    -- set x,y position of hearts
    heart1.x = 650
    heart1.y = 70

    heart2.x = 800
    heart2.y = 70

    heart3.x = 950
    heart3.y = 70

    -- create points object
    scoreText = display.newText("", 140, 50, nil, 60)
    scoreText:setTextColor(139/255, 10/255, 144/255)
    scoreText.text = "Score: " .. score

    -----------------------------------------------------------------------------------------

    -----------------------------------------------------------------------------------------
    -- BUTTON WIDGETS
    -----------------------------------------------------------------------------------------

    -- Creating Back Button
    backButton = widget.newButton( 
    {
     -- Setting Position
        x = display.contentWidth*1/8,
        y = display.contentHeight*7/8,


      -- setting dimensions
            width = 200,
            height = 100,

        -- Setting Visual Properties
        defaultFile = "Images/BackButtonUnpressedCompany.png",
        overFile = "Images/BackButtonPressedCompany.png",

        -- Setting Functional Properties
        onRelease = BackTransition

    } )

    -- Insert objects
    sceneGroup:insert( lev3Q1_image ) 
    sceneGroup:insert( lev3Q2_image ) 
    sceneGroup:insert( lev3Q3_image )
    sceneGroup:insert( lev3Q4_image )
    sceneGroup:insert( lev3Q5_image )
    sceneGroup:insert( lev3Q6_image )
    sceneGroup:insert( lev3Q7_image )
    sceneGroup:insert( lev3Q8_image )
    sceneGroup:insert( lev3Q9_image )
    sceneGroup:insert( lev3Q10_image )
    sceneGroup:insert( backButton ) 
    sceneGroup:insert( questionObject ) 
    sceneGroup:insert( clockText ) 
    sceneGroup:insert( answerObject )
    sceneGroup:insert( incorrectObject1 )
    sceneGroup:insert( incorrectObject2 )
    sceneGroup:insert( incorrectObject3 )
    sceneGroup:insert( incorrectObject4 )
    sceneGroup:insert( heart1 )
    sceneGroup:insert( heart2 )
    sceneGroup:insert( heart3 )
    sceneGroup:insert( scoreText )
    sceneGroup:insert( incorrectTextObject )
    sceneGroup:insert( correctTextObject )

end --function scene:create( event )

    -----------------------------------------------------------------------------------------

--display.contentHeight*15/16,
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
        lives = 3
        startTimer()
        AskQuestion()
        SetAnswerPositions()
        AddTouchListeners()
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
        timer.cancel(countDownTimer)
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

return scene

--------------------------------------------------------------------------------------------