#bridge-file-version: #200
HIDE 
#Abilities
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100,detect_sneak=1,detect_rhx=-90}] ~ ~ ~ function slot_choice/avatar/avatar_slot_1
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100,detect_rhx=70..89,detect_left=1}] ~ ~ ~ function slot_choice/avatar/avatar_slot_2
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100,detect_dsneak=1}] ~ ~ ~ function slot_choice/avatar/avatar_slot_3
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100,detect_sneak=1,detect_left=1}] ~ ~ ~ function slot_choice/avatar/avatar_slot_4
 
#Passives - Earth
execute @s[tag=avatar,tag=!antimagic,scores={detect_sprint=1,ground=1,earth_sprint=!100}] ~ ~ ~ scoreboard players add @s earth_sprint 1
execute @s[tag=avatar,tag=!antimagic,scores={earth_sprint=100,ground=1}] ~ ~ ~ effect @s speed 1 2 true
execute @s[tag=avatar,tag=!antimagic,scores={earth_sprint=100,ground=0}] ~ ~ ~ effect @s speed 0 0 true
execute @s[tag=avatar,tag=!antimagic,scores={detect_sprint=!1}] ~ ~ ~ scoreboard players set @s earth_sprint 0
execute @a[tag=headbutt] ~ ~ ~ fill ~1 ~2 ~1 ~-1 ~0 ~-1 air 0 destroy
execute @a[tag=headbutt] ~ ~ ~ damage @e[r=5,tag=!headbutt] 2 none
execute @a[tag=headbutt,scores={cooldown1=30..}] ~ ~ ~ tag @s remove headbutt
execute @a[tag=burrow] ~ ~ ~ fill ~ ~0 ~ ~ ~2 ~ air 0 destroy
execute @a[tag=burrow,scores={cooldown1=10..}] ~ ~ ~ tag @s remove burrow
 
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ execute @s ~ ~ ~ tp @s ^ ^ ^-1 facing @p[tag=avatar]
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ effect @s fatal_poison 3 255 true
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ effect @s invisibility 1 1 true
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ grass 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ sand 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ stone 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ obsidian 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ stone 1 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ stone 3 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ stone 5 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ gravel 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ dirt 0 summon evocation_fang ~ ~ ~
execute @e[name=earthspikes,type=armor_stand] ~ ~ ~ detect ~ ~-1 ~ sandstone 0 summon evocation_fang ~ ~ ~
 
execute @s[scores={cooldown1=100}] ~ ~ ~ execute @e[tag=drop_back_down,type=a:move_helper] ~ ~ ~ execute @s ~ ~ ~ clone ~5 ~4 ~5 ~-5 ~-4 ~-5 ~-5 ~-10 ~-5 masked move
execute @s[scores={cooldown1=100}] ~ ~ ~ execute @e[tag=drop_back_down,type=a:move_helper] ~ ~ ~ execute @e[r=10] ~ ~ ~ tp @s ~ ~-6 ~
execute @s[scores={cooldown1=100}] ~ ~ ~ execute @e[tag=drop_back_down,type=a:move_helper] ~ ~ ~ kill @s
 
#Earth Throw
execute @s[tag=avatar] ~ ~ ~ effect @e[name=earth_throw] invisibility 1 255 true
execute @s[tag=avatar] ~ ~ ~ effect @e[name=earth_throw] fire_resistance 1 255 true
execute @s[tag=avatar] ~ ~ ~ tp @e[r=10,name=earth_throw,tag=!thrown] ^ ^0.3 ^3
execute @e[name=earth_throw] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @s[tag=earth_throw] ~ ~ ~ replaceitem entity @e[type=armor_stand,name=earth_throw] slot.weapon.mainhand 0 dirt 1 1
 
execute @s[tag=avatar,scores={detect_dsneak=1}] ~ ~ ~ tag @e[r=10,name=earth_throw] add thrown
execute @e[tag=thrown] ~ ~ ~ effect @s fatal_poison 5 255 true
execute @e[tag=thrown] ~ ~ ~ detect ~ ~ ~ dirt 0 summon a:explosion ~ ~ ~
execute @e[tag=thrown] ~ ~ ~ damage @e[r=3] 2 none
execute @e[tag=thrown] ~ ~ ~ tp @s ^ ^ ^-1 facing @p[tag=avatar]
tag @s remove earth_throw
 
#Builder Mode
execute @s[tag=builder_mode] ~ ~ ~ particle minecraft:redstone_ore_dust_particle ^ ^1 ^1
execute @s[tag=builder_mode] ~ ~ ~ particle minecraft:redstone_ore_dust_particle ^ ^1 ^2
execute @s[tag=builder_mode] ~ ~ ~ particle minecraft:redstone_ore_dust_particle ^ ^1 ^3
execute @s[tag=builder_mode] ~ ~ ~ particle minecraft:redstone_ore_dust_particle ^ ^1 ^4
execute @s[tag=builder_mode] ~ ~ ~ particle minecraft:redstone_ore_dust_particle ^ ^1 ^5
execute @s[tag=builder_mode]  ^ ^1 ^1 detect ~ ~ ~ dirt 0 clone ~~~ ~~~ ~~1~
execute @s[tag=builder_mode]  ^ ^1 ^2 detect ~ ~ ~ dirt 0 clone ~~~ ~~~ ~~1~
execute @s[tag=builder_mode]  ^ ^1 ^3 detect ~ ~ ~ dirt 0 clone ~~~ ~~~ ~~1~
execute @s[tag=builder_mode]  ^ ^1 ^4 detect ~ ~ ~ dirt 0 clone ~~~ ~~~ ~~1~
execute @s[tag=builder_mode]  ^ ^1 ^5 detect ~ ~ ~ dirt 0 clone ~~~ ~~~ ~~1~
execute @p[tag=builder_mode] ^ ^1 ^1 detect ~ ~ ~ grass 0 clone ~~~ ~~~ ~~1~
execute @p[tag=builder_mode] ^ ^1 ^2 detect ~ ~ ~ grass 0 clone ~~~ ~~~ ~~1~
execute @p[tag=builder_mode] ^ ^1 ^3 detect ~ ~ ~ grass 0 clone ~~~ ~~~ ~~1~
execute @p[tag=builder_mode] ^ ^1 ^4 detect ~ ~ ~ grass 0 clone ~~~ ~~~ ~~1~
execute @p[tag=builder_mode] ^ ^1 ^5 detect ~ ~ ~ grass 0 clone ~~~ ~~~ ~~1~
execute @s[tag=builder_mode,scores={cooldown1=100}] ~ ~ ~ tag @s remove builder_mode
 
execute @s[tag=earth_scaffold] ~ ~ ~ setblock ~ ~-1 ~ dirt
execute @s[tag=earth_scaffold,scores={cooldown1=70..}] ~ ~ ~ tag @s remove earth_scaffold
 
#Passives - Fire
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100}] ~ ~ ~ detect ~ ~ ~ fire 0 effect @s speed 10 2 true
execute @s[tag=avatar,tag=!antimagic,scores={cooldown1=100}] ~ ~ ~ detect ~ ~ ~ flowing_lava 0 effect @s speed 10 2 true
execute @s[tag=fire_sprint] ~ ~ ~ setblock ~ ~ ~ fire 0 keep
execute @s[tag=fire_sprint,scores={cooldown1=100}] ~ ~ ~ tag @s remove fire_sprint
effect @s[tag=!antimagic] fire_resistance 1 1 true
 
#Passives - Water
execute @s ~ ~ ~ detect ~ ~ ~ water 0 effect @s conduit_power 2 2 true
 
#Ice Throw
execute @s[tag=avatar] ~ ~ ~ effect @e[name=ice_throw] invisibility 1 255 true
execute @s[tag=avatar] ~ ~ ~ tp @e[r=10,name=ice_throw,tag=!thrown] ^ ^0.3 ^3
execute @e[name="ice_throw"] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @s[tag=ice_throw] ~ ~ ~ replaceitem entity @e[type=armor_stand,name=ice_throw] slot.weapon.mainhand 0 blue_ice 1 1
 
execute @s[tag=avatar,scores={detect_dsneak=1}] ~ ~ ~ tag @e[r=10,name=ice_throw] add thrown
execute @e[tag=thrown] ~ ~ ~ effect @s fatal_poison 3 255 true
execute @e[tag=thrown] ~ ~ ~ damage @e[r=3] 1 none
execute @e[tag=thrown] ~ ~ ~ tp @s ^ ^ ^-1 facing @p[tag=avatar]
tag @s remove ice_throw
 
tp @s[tag=selfrush] ^ ^ ^3 facing @e[tag=!selfrush,c=1,type=!item,type=!xp_orb]
execute @s[tag=selfrush] ~ ~ ~ execute @e[r=3,tag=!selfrush] ~ ~ ~ tag @a[r=4] remove selfrush
execute @s[tag=selfrush] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~ ~
 
execute @s[tag=full_moon] ~ ~ ~ effect @s strength 20 5 true
execute @s[tag=full_moon] ~ ~ ~ effect @s resistance 20 2 true
 
#Passives - Air
execute @s[tag=avatar,tag=!antimagic,scores={detect_sneak=1,air_invis=!100,detect_dsneak=0}] ~ ~ ~ scoreboard players add @s air_invis 1
execute @s[tag=avatar,tag=!antimagic,scores={detect_sneak=0,detect_dsneak=0}] ~ ~ ~ scoreboard players set @s air_invis 0
execute @s[tag=avatar,tag=!antimagic,scores={detect_sneak=1,air_invis=100,detect_dsneak=0}] ~ ~ ~ effect @s invisibility 1 1 true
execute @s[tag=avatar,tag=!antimagic,scores={detect_sneak=1,air_invis=100,detect_dsneak=0}] ~ ~ ~ particle minecraft:end_chest ~ ~ ~
 
execute @s[tag=avatar,scores={air_invis=!100}] ~ ~ ~ tag @s add air_invis
execute @s[tag=avatar,tag=air_invis,scores={air_invis=100}] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§3Light Bend "},{"score":{"name": "@s","objective": "air_invis"}},{"text":"%"}]}
execute @s[tag=avatar,scores={air_invis=100}] ~ ~ ~ tag @s remove air_invis
execute @s[tag=avatar,scores={detect_sneak=0}] ~ ~ ~ tag @s remove air_invis
execute @s[tag=avatar,tag=air_invis] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§3Light Bend "},{"score":{"name": "@s","objective": "air_invis"}},{"text":"%"}]}
 
#Airscooter
execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~2.1 ~
execute @s[scores={detect_rhx=-90..-20}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ effect @s levitation 1 3 true
execute @s[scores={detect_rhx=20..90}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ effect @s slow_falling 1 5 true
execute @s[scores={detect_rhx=70..90}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ effect @s levitation 0 0 true
execute @s[scores={detect_rhx=20..90}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ event entity @s gravity
execute @s[scores={detect_rhx=-19..19}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ event entity @s no_gravity
execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ execute @p[tag=avatar] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§3Using Airscooter"}]}
 
execute @s[scores={level=0..5}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ damage @e[r=3,tag=!avatar,type=!a:scooter] 1 none
execute @s[scores={level=6..10}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ damage @e[r=3,tag=!avatar,type=!a:scooter] 2 none
execute @s[scores={level=11..99}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ damage @e[r=3,tag=!avatar,type=!a:scooter] 4 none
execute @s[scores={level=100..}] ~ ~ ~ execute @e[type=a:scooter,r=6,c=1] ~ ~ ~ damage @e[r=3,tag=!avatar,type=!a:scooter] 10 none
 
#Air blast
execute @s[tag=airrush] ~ ~ ~ tp @s ^ ^0.2 ^3
execute @s[tag=airrush] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~ ~
execute @s[scores={cooldown1=20..100}] ~ ~ ~ tag @s remove airrush
 
#Air shockwave
execute @s[tag=shockwave] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ effect @s invisibility 1 1 true
execute @s[tag=shockwave] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~0.5 ~
execute @s[tag=shockwave,scores={level=0..5}] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ damage @e[r=3,tag=!shockwave] 1 none
execute @s[tag=shockwave,scores={level=6..10}] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ damage @e[r=3,tag=!shockwave] 2 none
execute @s[tag=shockwave,scores={level=11..99}] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ damage @e[r=3,tag=!shockwave] 4 none
execute @s[tag=shockwave,scores={level=100..}] ~ ~ ~ execute @e[r=20,type=armor_stand,name=shockwave_air] ~ ~ ~ damage @e[r=3,tag=!shockwave] 10 none
execute @s[tag=shockwave] ~ ~ ~ execute @e[r=10,type=armor_stand,name=shockwave_air] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @p[tag=shockwave]
execute @s[tag=shockwave,scores={cooldown1=50..}] ~ ~ ~ tag @s remove shockwave
 
#Air Tornado
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @p[tag=avatar]
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ execute @e[r=5,tag=!avatar,tag=!tornado] ~ ~ ~ tp @s ^ ^ ^0.2 facing @e[r=6,type=a:move_helper,tag=tornado,c=1]
execute @s[scores={level=0..5}] ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ execute @e[r=5,tag=!avatar,tag=!tornado] ~ ~ ~ damage @s 1 none
execute @s[scores={level=6..10}] ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ execute @e[r=5,tag=!avatar,tag=!tornado] ~ ~ ~ damage @s 2 none
execute @s[scores={level=11..99}] ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ execute @e[r=5,tag=!avatar,tag=!tornado] ~ ~ ~ damage @s 4 none
execute @s[scores={level=100..}] ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ execute @e[r=5,tag=!avatar,tag=!tornado] ~ ~ ~ damage @s 10 none
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~-1 ~
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~1 ~
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~3 ~
execute @s ~ ~ ~ execute @e[r=43,type=a:move_helper,tag=tornado,c=1] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~5 ~
 
#Better
execute @e[type=a:move_helper,r=30,tag=seeking] ~ ~ ~ effect @s fatal_poison 10 5 true
execute @e[type=a:move_helper,r=30,tag=seeking] ~ ~ ~ tp @s ^ ^ ^1.5 facing @e[r=30,type=!a:move_helper,tag=!avatar,c=1,type=!item]
execute @e[type=a:move_helper,r=30,tag=seeking] ~ ~ ~ particle minecraft:large_explosion ~ ~1 ~
execute @e[type=a:move_helper,r=30,tag=seeking] ~ ~ ~ execute @e[r=2,tag=!avatar,type=!a:move_helper,type=!item] ~ ~ ~ summon a:explosion_low
execute @e[type=a:move_helper,r=30,tag=seeking] ~ ~ ~ execute @e[r=2,tag=!avatar,type=!a:move_helper,type=!item] ~ ~ ~ execute @e[type=a:move_helper,r=3,tag=seeking] ~ ~ ~ kill @s
 
#Avatar State
effect @s[tag=avatar_state] resistance 10 10 true
effect @s[tag=avatar_state] strength 10 10 true
effect @s[tag=avatar_state] speed 2 2 true
effect @s[tag=avatar_state] haste 5 5 true
execute @s[tag=avatar_state] ~ ~ ~ particle a:water_ring ~ ~1.1 ~
execute @s[tag=avatar_state] ~ ~ ~ particle a:air_ring ~ ~1.1 ~
execute @s[tag=avatar_state] ~ ~ ~ particle a:earth_ring ~ ~1.1 ~
execute @s[tag=avatar_state] ~ ~ ~ particle a:fire_ring ~ ~1.1 ~