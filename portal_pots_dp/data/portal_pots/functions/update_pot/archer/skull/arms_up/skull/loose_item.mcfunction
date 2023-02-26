execute unless data storage minecraft:portal_pots archer.skull.arms_up.skull.Item run data modify storage minecraft:portal_pots archer.skull.arms_up.skull.Item set from entity @e[type=item,tag=portal_pot_item,distance=0..0.5,limit=1] Item
kill @e[type=item,tag=portal_pot_item,distance=0..0.5,limit=1]
scoreboard players add @s item_count 1 
execute store result storage minecraft:portal_pots archer.skull.arms_up.skull.Count byte 1 run scoreboard players get @s item_count