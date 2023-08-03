$execute store result score @s item_count run data get storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count

# Reset checks for each slot above us
data merge entity @s {data:{slot_0_above:1b,slot_1_above:1b,slot_2_above:1b,slot_3_above:1b,slot_4_above:1b,grabbed:0b}}

# Try to grab something from a hopper above us
$execute if score @s item_count < BUFFER item_count run data modify storage comparator b set from storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:check_hopper {slot:0}
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_0_above:0b}}] run function portal_pots:grab_from_hopper with entity @s data

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:check_hopper {slot:1}
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_1_above:0b}}] run function portal_pots:grab_from_hopper with entity @s data

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:check_hopper {slot:2}
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_2_above:0b}}] run function portal_pots:grab_from_hopper with entity @s data

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:check_hopper {slot:3}
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_3_above:0b}}] run function portal_pots:grab_from_hopper with entity @s data

execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b}}] run function portal_pots:check_hopper {slot:4}
execute if score @s item_count < BUFFER item_count if entity @s[nbt={data:{grabbed:0b,slot_4_above:0b}}] run function portal_pots:grab_from_hopper with entity @s data

$execute if score @s item_count matches 0 run data remove storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Item
$execute store result storage minecraft:portal_pots $(sherd_0).$(sherd_1).$(sherd_2).$(sherd_3).Count byte 1 run scoreboard players get @s item_count