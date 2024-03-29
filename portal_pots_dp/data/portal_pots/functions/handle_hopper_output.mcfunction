$execute store result score @s item_count run data get storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count

# If there's a hopper below us, and no previouse item, summon an item
execute if score @s item_count matches 1.. if block ~ ~-1 ~ minecraft:hopper positioned ~ ~-0.75 ~ unless entity @e[type=item,tag=portal_pot_item,distance=0..0.25] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:40s,Tags:["portal_pot_item","newest"]}
$execute if score @s item_count matches 1.. run data modify entity @e[tag=portal_pot_item,tag=newest,limit=1] Item set from storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item
execute if score @s item_count matches 1.. run data modify entity @e[tag=portal_pot_item,tag=newest,limit=1] Item.Count set value 1b
execute if score @s item_count matches 1.. run tag @e[tag=newest] remove newest

scoreboard players remove @s item_count 1
$execute if score @s item_count matches ..0 run data remove storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item
$execute unless data storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item run scoreboard players set @s item_count 0
$execute store result storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count byte 1 run scoreboard players get @s item_count