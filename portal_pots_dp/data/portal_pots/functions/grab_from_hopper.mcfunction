$execute unless data storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item run data modify storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item set from block ~ ~1 ~ Items[{Slot:$(slot)b}]
scoreboard players add @s item_count 1 
$execute store result storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count byte 1 run scoreboard players get @s item_count
$item modify block ~ ~1 ~ container.$(slot) portal_pots:decrease_count
data modify entity @s data.grabbed set value 1b