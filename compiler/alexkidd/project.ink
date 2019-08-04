CONST CheckpointNA = 0
CONST CheckpointLand = 1
CONST CheckpointWater = 2
VAR CheckpointType
VAR CheckpointX
VAR CheckpointY
VAR Ammo

=== RestartGame ===
~ checkpointtype = CheckpointNA
~ panel=pnl_title
~ wait=0
~ panel=null

=== RestartLevel===
~ammo = 0
~camera_follow = camera_follow_down
~level = level1

{ CheckpointType:
	~ player_X = CheckpointX
	~ player_Y = CheckpointY
	{ CheckpointType == CheckpointWater:
		-> HitWater
	}
}
-> GAME

=== checkpoint ===
{ player_Type == AlexKidd:
	~ CheckpointType = CheckpointLand
}
{ player_Type == AlexKidd_Swim:
	~ CheckpointType = CheckpointWater
}
~ CheckpointX = Block_X * 16 + 8
~ CheckpointY = Block_Y * 16 + 8
~ Block_Type = null
-> GAME

=== HitWater ===
~ sound = sndwater
{ player_Type == alexkidd :
	~player_Type = alexkidd_swim
}
~camera_follow = camera_follow_down + camera_follow_right
-> GAME

=== alex_punch ===
{ ammo:
	~ player_shoot = ringshot
	~ ammo = ammo - 1
}
->GAME

=== player_kill ===
~sound = snddie
~player_type = alex_ghost
~yield = 100
-> RestartLevel

=== SpawnBrokenBlock ===
~ sound = sndblock
~ block_spawn = blockbreakleft
~ block_spawn = blockbreakright
->->

=== DestroyBlock ===
-> SpawnBrokenBlock ->
{ block_type == MysteryContainer :
	~ block_type = Ring
	-> GAME
}
{ block_type == StarContainer :
	~ block_type = Money
	-> GAME
}
{ block_type == UnderwaterBurgerRock:
	~ block_type = burger
	-> GAME
}
~ block_type = null
-> GAME

=== BlockHit ===
//If we're on the same X coordinate
{ player_X / 16 == Block_X:

	//But one block down
	{ player_Y / 16 == Block_Y + 1:
	
		//Stop the player moving upwards
		~player_YSpeed = 0
	
		//Destroy the block
		-> DestroyBlock
	}
}
-> GAME

=== GetMoney ===
~ sound = sndcoin
~ block_type = null
-> GAME

=== GetRing ===
~ sound = sndcoin
~ ammo = 10
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

