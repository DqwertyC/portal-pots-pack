$execute store result score @s item_count run data get storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count

# If the last item wasn't picked up by the hopper, add it to the stack...
execute positioned ~ ~-0.625 ~ if entity @e[type=item,tag=portal_pot_item,distance=0..0.5] run function portal_pots:grab_loose_item with entity @s data

$execute if score @s item_count matches 0 run data remove storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item
$execute store result storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count byte 1 run scoreboard players get @s item_count