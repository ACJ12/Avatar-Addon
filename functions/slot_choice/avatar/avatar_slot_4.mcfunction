HIDE
execute @s[tag=avatar,scores={moveslot4=1}] ~ ~ ~ function moves/air_blast
execute @s[tag=avatar,scores={moveslot4=2}] ~ ~ ~ function moves/air_launch
execute @s[tag=avatar,scores={moveslot4=3}] ~ ~ ~ function moves/air_scooter
execute @s[tag=avatar,scores={moveslot4=4}] ~ ~ ~ function moves/air_push
execute @s[tag=avatar,scores={moveslot4=5}] ~ ~ ~ function moves/air_vanish
execute @s[tag=avatar,scores={moveslot4=6}] ~ ~ ~ function moves/air_rush
execute @s[tag=avatar,scores={moveslot4=7}] ~ ~ ~ function moves/air_shockwave
execute @s[tag=avatar,scores={moveslot4=8}] ~ ~ ~ function moves/air_tornado
execute @s[tag=avatar,scores={moveslot4=9}] ~ ~ ~ function moves/air_seeking_blast
execute @s[tag=avatar,scores={moveslot4=10}] ~ ~ ~ function moves/air_pull
execute @s[tag=avatar,scores={moveslot4=11}] ~ ~ ~ function moves/air_dodge
execute @s[tag=avatar,scores={moveslot4=12}] ~ ~ ~ function moves/earth_headbutt
execute @s[tag=avatar,scores={moveslot4=13}] ~ ~ ~ function moves/earth_pillar
execute @s[tag=avatar,scores={moveslot4=14}] ~ ~ ~ function moves/earth_shove
execute @s[tag=avatar,scores={moveslot4=15}] ~ ~ ~ function moves/earth_lift
execute @s[tag=avatar,scores={moveslot4=16}] ~ ~ ~ function moves/earth_shield
execute @s[tag=avatar,scores={moveslot4=17}] ~ ~ ~ function moves/earth_spikes
execute @s[tag=avatar,scores={moveslot4=18}] ~ ~ ~ function moves/earth_burrow
execute @s[tag=avatar,scores={moveslot4=19}] ~ ~ ~ function moves/earth_throw
execute @s[tag=avatar,scores={moveslot4=20}] ~ ~ ~ function moves/earth_search
execute @s[tag=avatar,scores={moveslot4=21}] ~ ~ ~ function moves/earth_builder
execute @s[tag=avatar,scores={moveslot4=22}] ~ ~ ~ function moves/earth_hook
execute @s[tag=avatar,scores={moveslot4=23}] ~ ~ ~ function moves/water_flood
execute @s[tag=avatar,scores={moveslot4=24}] ~ ~ ~ function moves/water_ice_cage
execute @s[tag=avatar,scores={moveslot4=25}] ~ ~ ~ function moves/water_ice_throw
execute @s[tag=avatar,scores={moveslot4=26}] ~ ~ ~ function moves/water_spear
execute @s[tag=avatar,scores={moveslot4=27}] ~ ~ ~ function moves/water_spike
execute @s[tag=avatar,scores={moveslot4=28}] ~ ~ ~ function moves/water_rush
execute @s[tag=avatar,scores={moveslot4=29}] ~ ~ ~ function moves/water_fountain
execute @s[tag=avatar,scores={moveslot4=30}] ~ ~ ~ function moves/water_healing
execute @s[tag=avatar,scores={moveslot4=31}] ~ ~ ~ function moves/water_life_drain
execute @s[tag=avatar,scores={moveslot4=32}] ~ ~ ~ function moves/water_splash
execute @s[tag=avatar,scores={moveslot4=33}] ~ ~ ~ function moves/water_wake
execute @s[tag=avatar,scores={moveslot4=34}] ~ ~ ~ function moves/fire_blast
execute @s[tag=avatar,scores={moveslot4=35}] ~ ~ ~ function moves/fire_circle
execute @s[tag=avatar,scores={moveslot4=36}] ~ ~ ~ function moves/fire_sprint
execute @s[tag=avatar,scores={moveslot4=37}] ~ ~ ~ function moves/fire_launch
execute @s[tag=avatar,scores={moveslot4=38}] ~ ~ ~ function moves/fire_lightning
execute @s[tag=avatar,scores={moveslot4=39}] ~ ~ ~ function moves/fire_magma_floor
execute @s[tag=avatar,scores={moveslot4=40}] ~ ~ ~ function moves/fire_fireball
execute @s[tag=avatar,scores={moveslot4=41}] ~ ~ ~ function moves/fire_jump
execute @s[tag=avatar,scores={moveslot4=42}] ~ ~ ~ function moves/fire_final
execute @s[tag=avatar,scores={moveslot4=43}] ~ ~ ~ function moves/fire_smite
execute @s[tag=avatar,scores={moveslot4=44}] ~ ~ ~ function moves/fire_seeking_blast
execute @s[scores={moveslot4=0,cooldown1=100}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou dont have a move set, use /function useful_tools (slot 4)"}]}
scoreboard players set @s cooldown1 0
