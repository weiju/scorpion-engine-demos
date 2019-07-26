CONST CheckpointNA = 0
CONST CheckpointLand = 1
CONST CheckpointWater = 2
VAR CheckpointType
VAR CheckpointX
VAR CheckpointY

=== RestartGame ===
~ checkpointtype = CheckpointNA
~ panel=pnl_title
~ wait=0
~ panel=null

=== RestartLevel===
~level = level1
~Camera_XMax = 256
~Camera_XMin = 0
~Camera_YMin = 0

{ CheckpointType:
	~ Player1_X = CheckpointX
	~ Player1_Y = CheckpointY
	{ CheckpointType == CheckpointWater:
		-> HitWater
	}
}
-> GAME

=== checkpoint ===
{ Player1_Type == AlexKidd:
	~ CheckpointType = CheckpointLand
}
{ Player1_Type == AlexKidd_Swim:
	~ CheckpointType = CheckpointWater
}
~ CheckpointX = Player1_X
~ CheckpointY = Player1_Y
~ Block_Type = null
-> GAME

=== HitWater ===
~ sound = sndwater
{ Player1_Type == alexkidd :
	~Player1_Type = alexkidd_swim
}
~Camera_XMax = 752
-> GAME

=== OnUpdate_Water ===
{ Camera_X > Camera_XMin:
	~ Camera_XMin = Camera_X
}

=== OnUpdate ===
{ Camera_Y > Camera_YMin:
	~ Camera_YMin = Camera_Y
}
-> GAME

=== player_kill ===
~sound = snddie
~player1_type = alex_ghost
~yield = 100
-> RestartLevel

=== DestroyBlock ===
~ sound = sndblock
~ block_type = null
-> GAME

=== BlockToMoney ===
~ sound = sndblock
~ block_type = money
-> GAME

=== GetMoney ===
~ sound = sndcoin
~ block_type = null
-> GAME

=== KillFish ===
~ sound = sndenemykill
~ actor_type = killpuff
-> GAME

=== merman_spawn ===
~ actor_var1 = 5
-> GAME

=== killpuff_end ===
~ actor_type = null
-> GAME

=== hit_merman ===
~ actor_var1 = actor_var1 - 1
{ actor_var1 < 1:
	-> KillFish
}
-> GAME

=== finishlevel ===
~ level = null
-> RestartGame

