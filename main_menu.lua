-----------------------------------------------------------------------------------------
--
-- main_menu.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the main menu, displaying the credits, instructions & play buttons.
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Use Widget Library
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "main_menu"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

local bkg_image
local playButton
local creditsButton
local instructionsButton
local muteButtonUnpressed
local muteButtonPressed

-----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------


local backgroundMusic = audio.loadSound("Sounds/CIRCUSII.wav")
local backgroundMusicChannel

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
----------------------------------------------------------------------------------------

-- Creating Transition Function to Credits Page
local function CreditsTransition( )       
    composer.gotoScene( "credits_screen", {effect = "slideUp", time = 500})
end 

-----------------------------------------------------------------------------------------

-- Creating Transition to Level1 Screen
local function Level1ScreenTransition( )
    composer.gotoScene( "level1_screen", {effect = "zoomOutIn", time = 1000})
end    

--------------------------------------------------------------------------

-- Creating Transition to Instructions Screen
local function InstructionsTransition( )
    composer.gotoScene( "instructions_screen", {effect = "slideRight", time = 1000})
end

local function MuteButtonUnpressedListener(touch)
    if (touch.phase == "began") then
        muteButtonUnpressed.isVisible = false
        muteButtonPressed.isVisible = true
        audio.stop()
    end

    if (touch.phase == "ended") then
        muteButtonUnpressed.isVisible = true
        muteButtonPressed.isVisible = false
    end
end

local function MuteButtonPressedListener(touch)
    if (touch.phase == "began") then
        muteButtonUnpressed.isVisible = true
        muteButtonPressed.isVisible = false
        backgroundMusicChannel = audio.play(backgroundMusic)
    end

    if (touch.phase == "ended") then
        muteButtonUnpressed.isVisible = false
        muteButtonPressed.isVisible = true
    end
end

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------
    -- BACKGROUND IMAGE & STATIC OBJECTS
    -----------------------------------------------------------------------------------------

    -- Insert the background image and set it to the center of the screen
    bkg_image = display.newImage("Images/MainMenuCompany.png")
    bkg_image.x = display.contentCenterX
    bkg_image.y = display.contentCenterY
    bkg_image.width = display.contentWidth
    bkg_image.height = display.contentHeight

    -----------------------------------------------------------------------------------------
    -- BUTTON WIDGETS
    -----------------------------------------------------------------------------------------   

    -- Creating Play Button
    playButton = widget.newButton( 
        {   
            -- Set its position on the screen relative to the screen size
            x = display.contentWidth/2,
            y = display.contentHeight*7/8,

            -- Insert the images here
            defaultFile = "Images/PlayButtonUnpressedCompany.png",
            overFile = "Images/PlayButtonPressedCompany.png",

            -- When the button is released, call the Level1 screen transition function
            onRelease = Level1ScreenTransition          
        } )

        playButton:scale(0.5, 0.5)
    -----------------------------------------------------------------------------------------

    -- Creating Credits Button
    creditsButton = widget.newButton( 
        {
            -- Set its position on the screen relative to the screen size
            x = display.contentWidth*7/8,
            y = display.contentHeight*7/8,

            -- Insert the images here
            defaultFile = "Images/CreditsButtonUnpressedCompany.png",
            overFile = "Images/CreditsButtonPressedCompany.png",

            -- When the button is released, call the Credits transition function
            onRelease = CreditsTransition
        } ) 
        
        creditsButton:scale(0.5, 0.5)
    ----------------------------------------------------------------------------------------

    -- Creating Instructions Button
    instructionsButton = widget.newButton( 
        {   
            -- Set its position on the screen relative to the screen size
            x = display.contentWidth/7,
            y = display.contentHeight*7/8,

            -- Insert the images here
            defaultFile = "Images/InstructionsButtonPressedCompany.png",
            overFile = "Images/InstructionsButtonUnpressedCompany.png",

            -- When the button is released, call the instruction screen transition function
            onRelease = InstructionsTransition         
        } )

        instructionsButton:scale(0.5, 0.5)

    -----------------------------------------------------------------------------------------
    muteButtonPressed = display.newImage("Images/MuteButtonPressed.png", 900, 350)
    muteButtonPressed:scale(0.5, 0.5)
    

    muteButtonUnpressed = display.newImage("Images/MuteButtonUnpressed.png", 900, 350)
    muteButtonUnpressed:scale(0.5, 0.5)
    muteButtonUnpressed.isVisible = false

    -- Associating button widgets with this scene
    sceneGroup:insert( bkg_image )
    sceneGroup:insert( playButton )
    sceneGroup:insert( creditsButton )
    sceneGroup:insert( instructionsButton )
    sceneGroup:insert( muteButtonUnpressed )
    sceneGroup:insert( muteButtonPressed )
    
    -- INSERT INSTRUCTIONS BUTTON INTO SCENE GROUP

end -- function scene:create( event )   



-----------------------------------------------------------------------------------------

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

    -- Called when the scene is now on screen.
    -- Insert code here to make the scene come alive.
    -- Example: start timers, begin animation, play audio, etc.
    elseif ( phase == "did" ) then       
        backgroundMusicSoundChannel = audio.play(backgroundMusic, {channel = 1, loops = 1})
        -- Add the event listeners
        muteButtonUnpressed:addEventListener("touch", MuteButtonUnpressedListener)
        muteButtonPressed:addEventListener("touch", MuteButtonPressedListener)
    end

end -- function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
        audio.stop(backgroundMusicChannel)
        -- Add the event listeners
        muteButtonUnpressed:removeEventListener("touch", MuteButtonUnpressedListener)
        muteButtonPressed:removeEventListener("touch", MuteButtonPressedListener)
    end

end -- function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

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
