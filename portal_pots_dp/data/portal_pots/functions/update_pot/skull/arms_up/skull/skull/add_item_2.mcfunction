execute unless data storage minecraft:portal_pots skull.arms_up.skull.skull.Item run data modify storage minecraft:portal_pots skull.arms_up.skull.skull.Item set from block ~ ~1 ~ Items[{Slot:2b}]
scoreboard players add @s item_count 1 
execute store result storage minecraft:portal_pots skull.arms_up.skull.skull.Count byte 1 run scoreboard players get @s item_count
item modify block ~ ~1 ~ container.2 portal_pots:decrease_count
data modify entity @s data.grabbed set value 1b