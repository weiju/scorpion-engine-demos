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


# [Back to Table of Contents](../)
