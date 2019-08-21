//Standard library for Scorpion engine
//DO NOT CHANGE ANY OF THE "VAR" lines
-> end_of_standardlibrary

//The "player" variable block controls variables specific to the player. Currently, only one playe ris supported

//Simply get or set where the player is on the X axis
VAR Player_x

//Setting this will make the player "shoot" an actor of that type. The projectile will be orientated to match the player's direction.
VAR Player_shoot

//Simply get or set where the player is on the y axis
VAR Player_y

//Spawn an object on the player. Similar to shoot, but does not set the objects direciton
VAR Player_spawn

//Get or set the current move speed of the player on the xaxis
VAR Player_xspeed

//Push the player on the xaxis by this many pixels, respecting collision boundaries.
//If there's only one digit, the player will be immediately pushed by that amount.
//but if there's two digits - the bottom digit is movement speed in pixels/frame, and all of the other digits are the total amount of pixels to move by
VAR Player_xpush

//Get or set the current move speed of the player on the yaxis
VAR Player_yspeed

//As per x-push but on the y-axis
VAR Player_ypush

//Set the player's animation. The player will be static (unable to be moved) while the animation is playing
VAR Player_animation

//Get or set the direction the player is looking in
VAR Player_lookdir

//Change the type of player object
VAR Player_type

//Vars 1-5 are placeholders that you can use for anything. You could use these for health, ammo, lives etc
VAR Player_var1
VAR Player_var2
VAR Player_var3
VAR Player_var4
VAR Player_var5

//As per the player block of variables, but only for the currently relevant actor
VAR Actor_x
VAR Actor_shoot
VAR Actor_y
VAR Actor_spawn
VAR Actor_xspeed
VAR Actor_xpush
VAR Actor_yspeed
VAR Actor_ypush

VAR Actor_animation
VAR Actor_lookdir
VAR Actor_type
VAR Actor_var1
VAR Actor_var2
VAR Actor_var3
VAR Actor_var4
VAR Actor_var5

//As per the player block of variables, but only for the currently relevant player projectile
VAR PlayerProjectile_x
VAR PlayerProjectile_shoot
VAR PlayerProjectile_y
VAR PlayerProjectile_spawn
VAR PlayerProjectile_xspeed
VAR PlayerProjectile_xpush
VAR PlayerProjectile_yspeed
VAR PlayerProjectile_ypush

VAR PlayerProjectile_animation
VAR PlayerProjectile_lookdir
VAR PlayerProjectile_type
VAR PlayerProjectile_var1
VAR PlayerProjectile_var2
VAR PlayerProjectile_var3
VAR PlayerProjectile_var4
VAR PlayerProjectile_var5

//Setting the camera x or camera y manually automatically turns off camera following
VAR Camera_X = 0
VAR Camera_Y = 0

//Set the min and max bounds of the camera. Reset when loading a level
VAR Camera_XMin = 0
VAR Camera_YMin = 0
VAR Camera_XMax = 0
VAR Camera_YMax = 0

//Set the camera follow mode. True=follows player, false=static
//You can use the camera follow constants to set restrictions on what direction the camera can follow in. Eg:
//~Camera_Follow = Camera_Follow_Up + Camera_Follow_Down
//For the camera to only follow the player up or down
VAR Camera_Follow = -1

//Set the y resolution of the game area
//Cannot exceed 212 pixels, but can be as low as you need it to be
VAR Yres = 212

//Set this to wait for X number of frames
VAR Wait = 0

//Set this to generate a random number. Eg, "~dice = 6" will simulate a dice roll.
//Afterwards, you can then get this to retrieve the generated number
VAR dice = 0

//Set this to load and play a level  (must be declared in project.txt)
VAR Level = 0

//Set this to load and play a music file (must be declared in project.txt)
VAR Music = 0

//Set this to play a specific sound effect (must be declared in project.txt)
VAR Sound = 0

//Set this to load and play an ANIM5 animation
VAR Anim = 0

//Set whether or not the talkpad is at the top of the screen?
VAR Talkpad_Top = 0

//Set the number of frames to delay between each character when there is text being displayed on the talkpad
VAR Talkpad_TextDelay = 1

//Set a panel that takes over the 'center' of the display (where the game is normally displayed)
VAR Panel = 0

//Set a panel that takes over the top of the display
VAR Panel_Top = 0

//Set a panel that takes over the bottom of the display
VAR Panel_Bottom = 0

//Get this to retrieve the currently selected option on a menu panel
VAR Option = 0

//Get or set the block under the block pointer. Set to 0/null to delete it
VAR Block_Type = 0

//Spawn an actor on the current block pointer.
VAR Block_Spawn = 0

//Get or set the current block pointer position
VAR Block_X = 0
VAR Block_Y = 0

//The current joystick axes
VAR Control1_X = 0
VAR Control1_Y = 0

//If the fire buttons for joystick 1 have been pressed
VAR Control1_Fire = 0

//Similar to above, but is only true on the first frame that fire is hit
VAR Control1_FireHit = 0

//The same as 'wait', except yield also allows the game logic and animation to continue after X number of frames have passed
VAR Yield = 0

//Teleport the player to a defined teleport event. This works across levels as well as inside levels.
VAR Teleport = 0

//Set to true to force the screen to fade out. Set to false to allow the screen to fade back in
VAR ForceFadeOut = 0

CONST true = -1
CONST false = 0
CONST null = 0

CONST look_upleft = 0
CONST look_up = 1
CONST look_upright = 2

CONST look_left = 3
CONST look_center = 4
CONST look_right = 5

CONST look_downleft = 6
CONST look_down = 7
CONST look_downright = 8

CONST Camera_Follow_Left = 1
CONST Camera_Follow_Right = 2
CONST Camera_Follow_Up = 4
CONST Camera_Follow_Down = 8

=== snap_to_screen ===
{ actor_x <= camera_x + 16:
	~actor_x = camera_x + 16
}
{ actor_x >= camera_x + 256 + 16:
	~actor_x = camera_x + 256 + 16
}
{ actor_y <= camera_y + 16:
	~actor_y = camera_y + 16
}
{ actor_y >= camera_y + yres + 16:
	~actor_y = camera_y + yres + 16
}
-> Game

=== destroy_actor ===
~ actor_type = null
-> Game

=== end_of_standardlibrary ===
