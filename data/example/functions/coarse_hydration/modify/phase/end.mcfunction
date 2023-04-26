#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #occupied_slots coarse_hydration if data entity @s Inventory[]


#   Get the amount of items that will be given to the player and combine the two
scoreboard players set #items_to_give coarse_hydration 1

scoreboard players operation #total coarse_hydration = #occupied_slots coarse_hydration

scoreboard players operation #total coarse_hydration += #items_to_give coarse_hydration


#   Prepare the Dirt item in the shulker box
data modify block -30000000 0 1602 Items set from storage example:coarse_hydration root.item


#   If the score of the `#inventory_elements` score holder is 37 or greater, spawn the Dirt item at the position of the player. Otherwise, give the Dirt item
execute if score #total coarse_hydration matches 37.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute if score #total coarse_hydration matches ..36 run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Give a glass bottle as a replacement for the water bottle
give @s minecraft:glass_bottle


#   Do some clean up
data remove block -30000000 0 1602 Items

data remove storage example:coarse_hydration root
