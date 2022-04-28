#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements example if data entity @s Inventory[]

scoreboard players add #inventory_elements example 1


#   Prepare the Dirt item in the shulker box
data modify block -30000000 0 1602 Items append from storage example:water_bottle_on_coarse_dirt temp.item


#   If the score of the `#inventory_elements` score holder is 37 or greater, spawn the Dirt item at the position of the player. Otherwise, give the Dirt item
execute if score #inventory_elements example matches 37.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #inventory_elements example matches 37.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Do some clean up
data remove block -30000000 0 1602 Items

data remove storage example:water_bottle_on_coarse_dirt temp
