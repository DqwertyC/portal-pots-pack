execute unless data storage minecraft:portal_pots skull.arms_up.prize.archer.Item run data modify storage minecraft:portal_pots skull.arms_up.prize.archer.Item set from block ~ ~1 ~ Items[{Slot:1b}]
scoreboard players add @s item_count 1 
execute store result storage minecraft:portal_pots skull.arms_up.prize.archer.Count byte 1 run scoreboard players get @s item_count
item modify block ~ ~1 ~ container.1 portal_pots:decrease_count
data modify entity @s data.grabbed set value 1b