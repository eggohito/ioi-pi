#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements example if data entity @s Inventory[]


#   Count how many elements are in the `eyes` NBT path of the `example:remove_eyes` storage
execute store result score #eyes_elements example if data storage example:remove_eyes eyes[]


#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Ender Eyes should be spawned or given
execute store result score #total_elements example run scoreboard players operation #inventory_elements example += #eyes_elements example


#   Prepare the Ender Eye item in the shulker box
data remove block -30000000 0 1602 Items

data modify block -30000000 0 1602 Items append from storage example:remove_eyes eyes[-1]


#   If the score of the `#total_elements` score holder is 37 or greater, spawn the Ender Eye items at the position of the player. Otherwise, give the Ender Eye items
execute if score #total_elements example matches 37.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements example matches 37.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Recall this function until there are no more eyes to process
data remove storage example:remove_eyes eyes[-1]

execute store result score #eyes_elements example if data storage example:remove_eyes eyes[]

execute if score #eyes_elements example matches 1.. run function example:remove_eyes/after_modifying/give_eyes
