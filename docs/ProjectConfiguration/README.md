# Project Configuration

## The Project Palette (project_palette.png)

Scorpion currently supports games of up to 5 bitplanes (32 colors). It currently has minimal/untested support for Extra Half Brite, and no current support for 7/8 bitplanes (AGA).

The root project folder must have a project_palette.png file. This must be an indexed PNG with 32 colors or less, containing all of the colors that you wish to have in your main game (not counting "panels" such as static images and HUDs).

## The Project Ink file (project.ink)

The true power of Scorpion lies in the Virtual Machine, allowing for a massive amount of flexibility that isn't present in many "code free" gaming engines. The language used is based on a subset of [ink](https://www.inklestudios.com/ink/), the powerful scripting language by Inkle studios, and like it's parent it is designed to be as easy to read and write as possible. 

We go into more detail elsewhere in the manual, but here's a brief code sample for getting a game running. All we're doing here is showing a title screen, before loading the level.

~~~~
//We're loading a predefined title screen image
~panel = titleScreen

//We wait until the player presses the fire buttom
~wait = 0

//Once the player has pressed fire, we're now loading level one
~level = level1
~~~~

## The Project Configuration file (project.txt)

Project.txt must begin with the line [project], the next few lines describe the core . We'll go into how to define other entities (such as Actors and Levels) elsewhere.

These are the settings you can set under [project]

### output

> output=../MyGame

Where to save the compiled project (including game executables) to.

### framewait

> framewait=1

Sets the fludity of your engine. 

1. 50 frames per second
2. 25 frames per second
3. 12.5 frames per second
etc.

Higher values will allow you to render more on screen at once without skips, but at the cost of a less fluid game. You may choose to produce different versions of your game simply by changing this setting (eg, a 50HZ version for A1200, and a 25HZ version for A500) - the movement speeds of all of the characters will adjust to appear consistent across all versions.

This does NOT affect the fluidity of Anim5 animations or static screens, only the core game.

### talkpad

> talkpad=images/talkpad.png

If your game has dialogue (and it is optional to do so), you must set the backdrop for the talkpad. This also serves as the palette, so this must be an indexed PNG with no transparency. The talkpad must be 320 pixels wide - use letterboxing on the sides if you'd prefer to have a smaller talkpad.

Talkpads occupy the bottom of the screen by default. Set the ~talkpad_top property in the virtual machine to true to place the talkpad on the top of the screen.

This setting MUST be set before other talkpad settings.

### talkpad_font

> talkpad_font=images/talkpad_font.png

Since talkpad fonts support varied width fonts, the image must be laid out in a particular fashion. Refer to the example images.

This setting MUST be set after talkpad, and before following talkpad settings.

### talkpad_textx | talkpad_textY

> talkpad_textx=50

The starting X and Y co-ordinates for displaying text on the talkpad.

### talkpad_textyspacing

> talkpad_textyspacing=10

How many pixels are between each line on the talkpad?

### talkpad_textmaxwidth

> talkpad_textmaxwidth=200

The width of the 'rectangle' that you wish to display text in. The compiler will prevent you from adding dialogue too long to fit in this width.

### talkpad_textmaxlines

> talkpad_textmaxlines=4

How many lines of dialogue does your talkpad 'rectangle' fit. The compiler will prevent you from adding more than this many lines of dialogue.

### talkpad_choiceoffset

> talkpad_choiceoffset=50

If you have branching dialogue, you'll need to add space between the choice indicator and the text (so the text will be a little further to the right than it would normally). Use this to set the exact amount.


### talkpad_choiceindicator

> talkpad_choiceindicator=images/choiceindicator.png:<zero-width space>0:0

If you have branching dialogue, you'll need to indicate the current choice. Use this to set an image 

The optional second and third numbers will 'nudge' the image on screen for precise placement.


### talkpad_fireindicator

> talkpad_fireindicator=images/fireindicator.png:<zero-width space>50:50

If you wish to indicate when text has finished displaying and the user can press fire to continue, use this setting to set both the image and the placement.


### talkpad_portraitroot

> talkpad_portrait=images/talkpad_portraits

Optionally, if you wish to display character portraits in your talkpad, use this to set the folder that contains your portrait images.

All portrait images should be of a uniform size.

### talkpad_portraitx / talkpad_portraity

> talkpad_portraitx=25

The x and y co-ordinates for drawing a talkpad portrait.

### context_dialogue

> context_dialogue=images/dialoguebubble.png:<zero-width space>0:0

If you wish to display a speech bubble for when your character can talk, do it here. The co-ordinates indicate the offset from the player.

### context_interaction

> context_interaction=images/dialoguebubble.png:<zero-width space>0:0

If you wish to display an interaction bubble for when your character can interact with the background, do it here. The co-ordinates indicate the offset from the player.

### divert_escape

> divertescape=divert

You can use this to execute custom code when escape is pressed. If this value is not set, the game will quit if you press escape. You may choose to use this to execute custom logic to allow the player to choose to quit or not quit.

### spriterfile

> spriterfile=pathtofile.sprtr

This imports all animations in a spriter file for use in the game. Note that all animations must have names that are globally unique (in that none of them are identical to variable names, constant names, or the names of any other animation or entity)

### animationendtrigger

> animationendtrigger=animationname:divert

This allows you to divert to the Ink Script on the end of an animation. You may, for example, decrease a life or exit the level once a player "death" animation has played.


# [Back to Table of Contents](../README.md)
