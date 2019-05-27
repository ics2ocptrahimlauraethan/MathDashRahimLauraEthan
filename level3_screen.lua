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
local bkg_image1
local bkg_image2
local bkg_image3
local bkg_image4
local bkg_image5
local bkg_image6
local bkg_image7
local bkg_image8
local bkg_image9
local bkg_image10

-- countdown timer
local countDownTimer

-- countdown timer text
local clockText

-- question Text object
local question1Object

-- seconds 
local secondsLeft = 11
local totalSeconds = 11

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
--Answer objects 
---------------------------------------------------------------------------------------------

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

-- update time
local function UpdateTime ()

    -- decrement the number of seconds
    secondsLeft = secondsLeft - 1

    -- dipslay the number of seconds left in the clock object
    clockText.text = " Seconds Left: " .. secondsLeft 
end

-- start timer
local function startTimer ()
    -- create infinite timer
    timer = timer.performWithDelay (1000, UpdateTime, 0)
end

-- choose a question for the user to be asked
local function AskQuestion()
    
    -- reset the time
    secondsLeft = totalSeconds

    -- choose random question
    randomQuestion = math.random(1,1)

    -- if random question = 1, display question 1
    if (randomQuestion == 1) then

        -- display question 1
        bkg_image1.isVisible = true

        --[[
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

]]--
        -- display the answers
        answerObject.text = "5"
        incorrectObject1.text = "4"
        incorrectObject2.text = "3"
        incorrectObject3.text = "6"
        incorrectObject4.text = "7"


    -- if random question = 2, display question 2
    elseif (randomQuestion == 2) then

        -- display question 1
        bkg_image1.isVisible = false
        --[[
        bkg_image2.isVisible = true
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

]]--
    -- if random question = 3, display question 3
    elseif (randomQuestion == 3) then

        -- display question 1
        bkg_image1.isVisible = false
        --[[
        bkg_image2.isVisible = false
        bkg_image3.isVisible = true
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false
]]--
    -- if random question = 4, display question 4
    elseif (randomQuestion == 4) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = true
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

    -- if random question = 5, display question 5
    elseif (randomQuestion == 5) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = true
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

    -- if random question = 6, display question 6
    elseif (randomQuestion == 6) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = true
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

    -- if random question = 7, display question 7
    elseif (randomQuestion == 7) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = true
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

    -- if random question = 8, display question 8
    elseif (randomQuestion == 8) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = true
        bkg_image9.isVisible = false
        bkg_image10.isVisible = false

    -- if random question = 9, display question 9
    elseif (randomQuestion == 9) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = true
        bkg_image10.isVisible = false

    -- if random question = 10, display question 10
    elseif (randomQuestion == 10) then

        -- display question 1
        bkg_image1.isVisible = false
        bkg_image2.isVisible = false
        bkg_image3.isVisible = false
        bkg_image4.isVisible = false
        bkg_image5.isVisible = false
        bkg_image6.isVisible = false
        bkg_image7.isVisible = false
        bkg_image8.isVisible = false
        bkg_image9.isVisible = false
        bkg_image10.isVisible = true
    end
end


-- decrease lives function
local function DecreaseLives()
    lives = lives - 1

    if (lives == 3) then
        secondsLeft = totalSeconds
        heart1.isVisible = true
        heart2.isVisible = true
        heart3.isVisible = true
    elseif (lives == 2) then
        heart1.isVisible = true
        heart2.isVisible = true
        heart3.isVisible = false
        secondsLeft = totalSeconds
    elseif (lives == 1) then
        heart1.isVisible = true
        heart2.isVisible = false
        heart3.isVisible = false
        secondsLeft = totalSeconds
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
end

-- hide incorrect
local function HideIncorrectTextObject ()
    incorrectTextObject.isVisible = false
    AskQuestion()
end


-- this function displays whether or not you got the question right
-- if the user's answer and the correct answer are the same:
local function AnswerListener ( touch )

    -- make the correct object visible
    correctTextObject.isVisible = true    

    -- increase score by 1
    score = score+1
    
    -- update the score text
    scoreText.text = " Score = " .. score

    -- play correct sound
    correctSoundChannel = audio.play( correctSound )

    -- call HideCorrect after 2 seconds
    timer.performWithDelay( 2000, HideCorrectTextObject )
       
end


local function IncorrectObject1Listener (touch)
    -- make the correct object visible
    incorrectTextObject.isVisible = true    
    
    -- update the hearts
    DecreaseLives ()

    -- play the incorrect sound
    incorrectSoundChannel = audio.play (incorrectSound)

    -- hide the incorrect object after 2 seconds
    timer.performWithDelay ( 2000, HideIncorrectTextObject )
end

local function AddTouchListeners()
    answerObject:addEventListener("touch", AnswerListener)
    incorrectObject1:addEventListener("touch", IncorrectObject1Listener)
end

local function RemoveTouchListeners()
    answerObject:removeEventListener("touch", AnswerListener)
    incorrectObject1:removeEventListener("touch", IncorrectObject1Listener)
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
    bkg_image1 = display.newImageRect("Images/lev3Q1.png", display.contentWidth/3, display.contentHeight)
    bkg_image1.x = 725
    bkg_image1.y = 475

    -- Width and height
    bkg_image1.width = 500
    bkg_image1.height = 500

    -- Insert the shape 2 with x and y position
    bkg_image2 = display.newImageRect("Images/lev3Q2.png", display.contentWidth/3, display.contentHeight)
    bkg_image2.x = 725
    bkg_image2.y = 475

    -- Width and height
    bkg_image2.width = 500
    bkg_image2.height = 500

    --create question
    question1Object = display.newText (" How many triangles are shown? ", 320, 150, nil, 45)

    --set color of text
    question1Object: setTextColor(236/255, 110/255, 14/255)

    -- displays the time remaining on the screen
    clockText = display.newText("Time Left: " .. secondsLeft, 850, 175, nil, 50)
    clockText: setTextColor(30/255, 151/255, 50/255)

    -- answer objects
    answerObject = display.newText ("", 60, 300, nil, 65)
    answerObject:setTextColor(17/255, 17/255, 218/255)

    -- incorrect objects
    incorrectObject1 = display.newText ("", 250, 300, nil, 65)
    incorrectObject1:setTextColor(17/255, 17/255, 218/255)

    incorrectObject2 = display.newText ("", 60, 500, nil, 65)
    incorrectObject2:setTextColor(17/255, 17/255, 218/255)

    incorrectObject3 = display.newText ("", 250, 500, nil, 65)
    incorrectObject3:setTextColor(17/255, 17/255, 218/255)

    incorrectObject4 = display.newText ("", 150, 400, nil, 65)
    incorrectObject4:setTextColor(17/255, 17/255, 218/255)

    -- create the correct and incorrect text objects and make them invisible
    correctTextObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 65 )
    correctTextObject:setTextColor(249/255, 235/255, 33/255)
    correctTextObject.isVisible = false

    incorrectTextObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 65)
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
    scoreText = display.newText("", 375, display.contentHeight*7/8, nil, 60)
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
    sceneGroup:insert( bkg_image1 ) 
    sceneGroup:insert( backButton ) 
    sceneGroup:insert( question1Object ) 
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
    sceneGroup:insert( bkg_image2 )

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
            startTimer()
            AskQuestion()
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