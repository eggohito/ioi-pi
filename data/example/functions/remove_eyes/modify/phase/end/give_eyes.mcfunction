#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #occupied_slots eyes_on_frame if data entity @s Inventory[]


#   Get the sum of `#occupied_slots` and `#eyes` score holders to determine if the Ender Eyes should be spawned or given
scoreboard players operation #total_occupied_slots eyes_on_frame = #occupied_slots eyes_on_frame

scoreboard players operation #total_occupied_slots eyes_on_frame += #eyes eyes_on_frame


#   Prepare the Ender Eye item in the shulker box
data modify block -30000000 0 1602 Items set from storage example:remove_eyes root.eyes


#   If the score of the `#total_occupied_slots` score holder is 37 or greater, spawn the Ender Eye items at the position of the player. Otherwise, give the Ender Eye items
execute if score #total_occupied_slots eyes_on_frame matches 37.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute if score #total_occupied_slots eyes_on_frame matches ..36 run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}
