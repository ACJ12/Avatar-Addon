#bridge-file-version: #47
HIDE 
summon a:move_helper
tag @e[c=1,r=3,type=a:move_helper] add seeking
scoreboard players set @s cooldown1 0
tellraw @s {"rawtext":[{"text":"You used "},{"text":"§bAir Artillery"}]}
scoreboard players add @s sub_level 2
playsound monb.mob.shulker.shoot @a[r=3]