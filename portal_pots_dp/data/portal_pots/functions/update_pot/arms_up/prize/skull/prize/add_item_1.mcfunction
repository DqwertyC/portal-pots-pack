execute unless data storage minecraft:portal_pots arms_up.prize.skull.prize.Item run data modify storage minecraft:portal_pots arms_up.prize.skull.prize.Item set from block ~ ~1 ~ Items[{Slot:1b}]
scoreboard players add @s item_count 1 
execute store result storage minecraft:portal_pots arms_up.prize.skull.prize.Count byte 1 run scoreboard players get @s item_count
item modify block ~ ~1 ~ container.1 portal_pots:decrease_count
data modify entity @s data.grabbed set value 1b