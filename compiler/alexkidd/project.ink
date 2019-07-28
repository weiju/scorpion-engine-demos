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
~camera_follow = camera_follow_down
~level = level1

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
~camera_follow = camera_follow_down + camera_follow_right
-> GAME

=== player_kill ===
~sound = snddie
~player1_type = alex_ghost
~yield = 100
-> RestartLevel

=== SpawnBrokenBlock ===
~ sound = sndblock
~ block_spawn = blockbreakleft
~ block_spawn = blockbreakright
->->

=== DestroyBlock ===
-> SpawnBrokenBlock ->
~ block_type = null
-> GAME

=== BlockToMoney ===
-> SpawnBrokenBlock ->
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

