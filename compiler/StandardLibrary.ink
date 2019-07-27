//Standard library for Scorpion engine
//DO NOT CHANGE ANY OF THE "VAR" lines
-> end_of_standardlibrary

VAR Player1_x
VAR Player1_xmove
VAR Player1_y
VAR Player1_ymove
VAR Player1_animation
VAR Player1_lookdir
VAR Player1_pushx
VAR Player1_pushy
VAR Player1_var1
VAR Player1_var2
VAR Player1_var3
VAR Player1_var4
VAR Player1_var5
VAR Player1_var6
VAR Player1_var7
VAR Player1_var8

VAR Actor_x
VAR Actor_xmove
VAR Actor_y
VAR Actor_ymove
VAR Actor_animation
VAR Actor_lookdir
VAR Actor_pushx
VAR Actor_pushy
VAR Actor_var1
VAR Actor_var2
VAR Actor_var3
VAR Actor_var4
VAR Actor_var5
VAR Actor_var6
VAR Actor_var7
VAR Actor_var8

VAR PlayerProjectile_x
VAR PlayerProjectile_xmove
VAR PlayerProjectile_y
VAR PlayerProjectile_ymove
VAR PlayerProjectile_animation
VAR PlayerProjectile_lookdir
VAR PlayerProjectile_pushx
VAR PlayerProjectile_pushy
VAR PlayerProjectile_var1
VAR PlayerProjectile_var2
VAR PlayerProjectile_var3
VAR PlayerProjectile_var4
VAR PlayerProjectile_var5
VAR PlayerProjectile_var6
VAR PlayerProjectile_var7
VAR PlayerProjectile_var8

VAR Camera_X = 0
VAR Camera_Y = 0
VAR Camera_XMin = 0
VAR Camera_YMin = 0
VAR Camera_XMax = 0
VAR Camera_YMax = 0
VAR Camera_Follow = -1
VAR Yres = 212

VAR Wait = 0
VAR dice = 0
VAR Level = 0
VAR Music = 0
VAR Sound = 0
VAR Anim = 0
VAR Talkpad_Top = 0
VAR Talkpad_TextDelay = 1

VAR Panel = 0
VAR Panel_Top = 0
VAR Panel_Bottom = 0
VAR Option = 0
VAR Block_Type = 0
VAR Block_Spawn = 0
VAR Teleport = 0
VAR ForceFadeOut = 0

VAR Control1_X = 0
VAR Control1_Y = 0
VAR Control1_Fire = 0
VAR Control1_FireHit = 0
VAR Player1_Type = 0
VAR Player1_Spawn = 0
VAR Actor_Type = 0
VAR Actor_Spawn = 0

VAR Yield = 0

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

=== end_of_standardlibrary ===
