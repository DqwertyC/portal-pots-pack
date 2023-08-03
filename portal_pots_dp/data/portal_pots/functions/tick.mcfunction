execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:decorated_pot unless block ~ ~ ~ minecraft:decorated_pot{shards:["minecraft:brick"]} unless entity @e[tag=portal_pot,distance=0..0.1] run function portal_pots:create_portal_pot
execute as @e[tag=portal_pot] at @s unless block ~ ~ ~ minecraft:decorated_pot run function portal_pots:destroy_portal_pot

scoreboard players add GLOBAL tick_count 1
scoreboard players operation GLOBAL tick_count %= HOPPER tick_count
execute if score GLOBAL tick_count matches 0 run function portal_pots:update_pots