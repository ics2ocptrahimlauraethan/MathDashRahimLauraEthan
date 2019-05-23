-----------------------------------------------------------------------------------------
--
-- splash_screen.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the splash screen of the game. It displays the 
-- company logo that...
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-- Name the Scene
sceneName = "splash_screen"
-----------------------------------------------------------------------------------------

-- Create Scene Object
local scene = composer.newScene( sceneName )

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local jungleSounds = audio.loadSound("Sounds/The more you know.mp3")
local jungleSoundsChannel

-- make sound
local lampPull = audio.loadSound("Sounds/lamppull.mp3")
local lampPullSoundChannel

local textSound = audio.loadSound("Sounds/sparkle.mp3")
local textSoundChannel

----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
 
-- make images
local companyImageBeforeGlow
local companyImageAfterGlow
local companyText

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------

-- The function that will go to the main menu 
local function gotoMainMenu()
    composer.gotoScene( "main_menu" )
end

local function turnLampOn()
    companyImageBeforeGlow.alpha = companyImageBeforeGlow.alpha + 0.01

    if (companyImageBeforeGlow.alpha == 1) then
        companyImageBeforeGlow.isVisible = false
        companyImageAfterGlow.isVisible = true
    end
end

local function lampSound()
    if (companyImageAfterGlow.alpha == 1) then
        lampPullSoundChannel = audio.play(lampPull)
    end
end

local function soundText()
    companyText.isVisible = true
    textSoundChannel = audio.play(textSound)
end


-- function to kill logo
local function destroyLogo()
    companyImageBeforeGlow.alpha = 0
    companyImageAfterGlow.alpha = 0
    companyText.alpha = 0
end

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -- set the background to be black
    display.setDefault("background", 0, 0, 0)

    companyImageBeforeGlow = display.newImage("Images/CompanyLogo2EthanL.png", 512, 384)
    companyImageAfterGlow = display.newImage("Images/CompanyLogoEthanL.png", 512, 384)

    -- set the initial x and y position of the beetleship
    companyImageBeforeGlow.x = 512
    companyImageBeforeGlow.y = display.contentHeight/2

    -- set the initial x and y position of the beetleship
    companyImageAfterGlow.x = 512
    companyImageAfterGlow.y = display.contentHeight/2

    -- make text
    companyText = display.newImage("Images/nightTimeText.png", 500, 500, 500)
    companyText.isVisible = false

    companyImageBeforeGlow:scale(0.5, 0.5)
    companyImageAfterGlow:scale(0.5, 0.5)

    companyImageBeforeGlow.isVisible = true
    companyImageAfterGlow.isVisible = false
    companyImageBeforeGlow.alpha = 0

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( companyImageBeforeGlow )
    sceneGroup:insert( companyImageAfterGlow )
    sceneGroup:insert( companyText )

end -- function scene:create( event )

--------------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is still off screen (but is about to come on screen).
    if ( phase == "will" ) then
       
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- start the splash screen music
        jungleSoundsChannel = audio.play(jungleSounds)
        Runtime:addEventListener("enterFrame", turnLampOn)

        timer.performWithDelay(2800, lampSound)
        
        timer.performWithDelay(4000, soundText)

        -- Go to the main menu screen after the given time.
        timer.performWithDelay ( 5000, gotoMainMenu) 
        timer.performWithDelay(5000, destroyLogo)         
        
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is on screen (but is about to go off screen).
    -- Insert code here to "pause" the scene.
    -- Example: stop timers, stop animation, stop audio, etc.
    if ( phase == "will" ) then  

    -----------------------------------------------------------------------------------------

    -- Called immediately after scene goes off screen.
    elseif ( phase == "did" ) then
        
        -- stop the jungle sounds channel for this screen
        audio.stop(jungleSoundsChannel)
        Runtime:removeEventListener("enterFrame", turnLampOn)
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
