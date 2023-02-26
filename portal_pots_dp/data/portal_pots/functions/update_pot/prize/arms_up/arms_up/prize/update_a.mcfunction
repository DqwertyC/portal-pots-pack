execute store result score @s item_count run data get storage minecraft:portal_pots prize.arms_up.arms_up.prize.Count

# If the last item wasn't picked up by the hopper, add it to the stack...
execute positioned ~ ~-0.625 ~ if entity @e[type=item,tag=portal_pot_item,distance=0..0.5] run function portal_pots:update_pot/prize/arms_up/arms_up/prize/loose_item

execute if score @s item_count matches 0 run data remove storage minecraft:portal_pots prize.arms_up.arms_up.prize.Item
execute store result storage minecraft:portal_pots prize.arms_up.arms_up.prize.Count byte 1 run scoreboard players get @s item_count