#bridge-file-version: #125
HIDE 
#Normal
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=!61,detect_left=1,detect_sneak=0}] ~ ~ ~ scoreboard players add @s chooseslot 5
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=!61,detect_left=1}] ~ ~ ~ scoreboard players set @s detect_left 0
execute @s[tag=!avatar,tag=chooseslot1] ~ ~ ~ function assets/choose_menu
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=61..}] ~ ~ ~ scoreboard players set @s chooseslot 5
execute @s[tag=!avatar,scores={detect_sneak=1}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§3You chose the move for slot 1!"}]}
 
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=0..5,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 1
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=6..10,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 2
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=11..15,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 3
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=16..20,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 4
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=21..25,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 5
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=26..30,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 6
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=31..35,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 7
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=36..40,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 8
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=41..45,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 9
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=46..50,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 10
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=51..55,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 11
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=56..60,detect_sneak=1}] ~ ~ ~ scoreboard players set @s moveslot1 0
execute @s[tag=!avatar,tag=chooseslot1,scores={chooseslot=0..61,detect_sneak=1}] ~ ~ ~ tag @s remove chooseslot1