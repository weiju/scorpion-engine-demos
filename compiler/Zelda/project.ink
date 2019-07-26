INCLUDE Blocks.ink

VAR rupee=0
VAR has_sword=false
VAR has_shield=false

=== TITLE ===
~music = mod_intro
~panel = pic_title
~wait = 0
~panel = null
~music = null

=== GAMEMENU ===
~panel_bottom = null
~has_shield = false
~has_sword = false
~panel = main_menu
~wait = 0
~panel = null

{ option == 0 :
	-> PART1
}
{ option == 1 :
	~panel_bottom = hud
	-> PART2
}
{ option == 2 :
	~panel_bottom = hud
	~has_shield = true
	-> PART3
}
{ option == 3 :
	-> QUIT
}

=== PART1 ===
~music = mod_intro
~level = map_intro
~wait = 50
The Kingdom of Hyrule has been in peace since Link,<br>the last knight of Hyrule, had defeated the malicious<br>Ganon and reclaimed the precious triforce from him.

=== INTROLOOP1 ===
{ camera_x < 256 :
	~camera_x = camera_x + 2
	~wait = 1
	-> INTROLOOP1
}
Nobody knows what Link's wish to the triforce was,<br>but it had the effect of reunifying the Light and<br> Dark world, and awakening the 7 wise men's<br>descendants.

=== INTROLOOP2 ===
{ camera_x < 512 :
	~camera_x = camera_x + 2
	~wait = 1
	-> INTROLOOP2
}
Next, Link handed the Triforce and Master Sword<br>over to Princess Zelda, and people started to<br>believe that peace would last.<5><br>But the people were wrong<3>.<3>.<3>.

=== INTROLOOP3 ===
{ camera_x < 768 :
	~camera_x = camera_x + 2
	~wait = 1
	-> INTROLOOP3
}
Unfortunately, Link's wish also had negative<br>effects. Ganon and his henchmen were resurrected<br>and got ready to attack.

=== INTROLOOP4 ===
{ camera_x < 1024 :
	~camera_x = camera_x + 2
	~wait = 1
	-> INTROLOOP4
}
Somewhere in Hyrule Forest, Link is sleeping<br>without suspecting that Ganon has already moved<br>into attack.<br><5>Until<3>.<3>.<3>.

=== GAMESTART ===
~music = null
~level = map_house_night
~camera_x = 320 - 256
~camera_y = 256 - 212
~wait = 50

//We want to move diagonally
//Back to the "0,0" camera position
=== CAMERALOOP ===

{ camera_y > 0 : 
	~camera_y = camera_y - 1
}

{ camera_x > 0 : 
	~camera_x = camera_x - 1
	~wait = 1
	-> CAMERALOOP
}

//We check this a second time, incase we still
//Need to move on the Y
{ camera_y :
	~wait = 1
	-> CAMERALOOP
}

Help me!<5><br>Help me!<5><br>It's me,<2> Zelda!<3><br>I'm talking to you by telepathy.
I am a prisoner in the dungeon of the castle!<br>
I need your help!<br>
Ganon is back, and he surely has already found<br>the Triforce<3>.<3>.<3>.
Come quickly to the castle Link, you are my<br>only hope<3>.<3>.<3>.
~wait = 50

=== PART2 ===
~level = map_bedroom
~panel_bottom = hud
~camera_follow = true
-> GAME

=== OPEN_SHIELDCHEST1 ===
~has_shield=true
-> HAPPY_SOUND ->
~player1_animation=pickup_shield
You found a shield!!!<br><br>Your defence rises by one point.
~player1_type=link_shield
-> GAME

=== TRY_HOUSE_EXIT ===
{ has_shield == false :
	Don't go anywhere without your shield
	-> GAME
}

=== PART3 ===
~level = map_outside
-> GAME

=== ENTER_HOUSE ===
~teleport = housedoor
-> GAME

=== sword_pickup_spawn ===
//If we have the sword already, set to null
{ player1_type == link_sword : 
	~actor_type = null
}
-> GAME

=== sword_pickup_COLLISION ===
~actor_type = null
-> HAPPY_SOUND ->
~player1_animation=pickup_sword
~player1_type=link_sword
~has_sword=true
You found a sword!!!<br><br>You can now fight monsters.
-> GAME

=== HAPPY_SOUND ===
~sound=snd_happy
->->

=== SIGNPOST ===
N: Link's Home<br>W: Hyrule Field<br>E: Forest Temple
-> GAME

=== Link_Spawn ===
{ has_sword:
	~player1_type=link_sword
	->GAME
}
{ has_shield:
	~player1_type=link_shield
}
->GAME

=== QUIT ===
-> END
