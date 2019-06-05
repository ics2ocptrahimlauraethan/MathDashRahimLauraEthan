--Level Select Screen--
-----------------------------------------------------------------------------
--Made by: Laura Duffley
-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)
-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level_select"

-- Creating Scene Object
scene = composer.newScene( sceneName ) -- This function doesn't accept a string, only a variable containing a string

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
-- declaring the image and text varibales for this scene
local lev1Icon
local lev1TextObject

local lev2Icon
local lev2IextOject

local lev3Icon
local lev3TextObject

-- declaring the buttons
local backButton
local level1Button
local level2Button
local level3Button
-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

-- Creating Transitioning Function to go back to main menu
local function BackTransition( )
    composer.gotoScene( "main_menu", {effect = "zoomInOut", time = 500})
end

-- Creating Transition Function to level 1
local function Level1ScreenTransition( )       
    composer.gotoScene( "level1_screen", {effect = "slideDown", time = 500})
end 

-- Creating Transition Function to level 2
local function Level2ScreenTransition( )       
    composer.gotoScene( "level2_screen", {effect = "slideDown", time = 500})
end 

-- Creating Transition Function to level 3
local function Level3ScreenTransition( )       
    composer.gotoScene( "level3_screen", {effect = "slideDown", time = 500})
end 

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------
    -- BACKGROUND AND DISPLAY STATIC OBJECTS
    -----------------------------------------------------------------------------------------

    -- set backgrouhnd color
    display.setDefault("background", 255/255, 255/255, 153/255)

     -- text object
    lev1TextObject = display.newText("Level 1", 150, 600, nil, 80)

    -- set color
    lev1TextObject:setTextColor(41/255, 88/255, 24/255)

    -- display the level 2 icon
    lev2Icon = display.newImageRect("Images/level2icon.PNG", 250, 250)

    -- x and y of the level 2 icon
    lev2Icon.x = display.contentWidth/2
    lev2Icon.y = display.contentHeight/2

    -- text object
    lev2TextObject = display.newText("Level 2", display.contentWidth/2, 600, nil, 80)

    -- set color
    lev2TextObject:setTextColor(41/255, 88/255, 24/255)

    -- display the level 3 icon
    lev3Icon = display.newImageRect("Images/level3icon.PNG", 250, 250)

    -- x and y of the level 3 icon
    lev3Icon.x = 875
    lev3Icon.y = display.contentHeight/2

    -- text object
    lev3TextObject = display.newText("Level 3", 875, 600, nil, 80)

    -- set color
    lev3TextObject:setTextColor(41/255, 88/255, 24/255)


-----------------------------------------------------------------------------------------
    -- BUTTON WIDGETS
    -----------------------------------------------------------------------------------------

    -- Creating Back Button
    lev1Icon = widget.newButton( 
    {
        -- Setting Position
        x = 150,
        y = display.contentHeight/2,

        -- Setting Dimensions
        width = 250,
        height = 250,

        -- Setting Visual Properties
        defaultFile = "Images/level1icon.PNG",
        overFile = "Images/level1icon.PNG",

        -- Setting Functional Properties
        onRelease = Level1ScreenTransition

    } )



    -- Creating Back Button
    backButton = widget.newButton( 
    {
        -- Setting Position
        x = display.contentWidth*1/8,
        y = display.contentHeight*15/16,

        -- Setting Dimensions
        -- width = 1000,
        -- height = 106,

        -- Setting Visual Properties
        defaultFile = "Images/BackButtonUnpressedCompany.png",
        overFile = "Images/BackButtonPressedCompany.png",

        -- Setting Functional Properties
        onRelease = BackTransition

    } )

    backButton:scale(0.5, 0.5)

    -----------------------------------------------------------------------------------------
    -- Associating Buttons with this scene
    sceneGroup:insert( backButton )
    sceneGroup:insert(lev1Icon)
    sceneGroup:insert(lev1TextObject)
    sceneGroup:insert(lev2Icon)
    sceneGroup:insert(lev2TextObject)
    sceneGroup:insert(lev3Icon)
    sceneGroup:insert(lev3TextObject)
    --sceneGroup:insert(level3icon)
end --function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen).

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
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

end --function scene:destroy( event )

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