execute unless data storage minecraft:portal_pots prize.arms_up.archer.archer.Item run data modify storage minecraft:portal_pots prize.arms_up.archer.archer.Item set from block ~ ~1 ~ Items[{Slot:3b}]
scoreboard players add @s item_count 1 
execute store result storage minecraft:portal_pots prize.arms_up.archer.archer.Count byte 1 run scoreboard players get @s item_count
item modify block ~ ~1 ~ container.3 portal_pots:decrease_count
data modify entity @s data.grabbed set value 1b