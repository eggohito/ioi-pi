#> ioi-pi:impl/selected_item/get
#
#   >   Get the selected item from the player's inventory and from blocks/entities with an inventory
#
#@within
#   advancement ioi-pi:impl/selected_item/get
#   tag/function ioi-pi:api/selected_item/get


#   Determine whether the selected item cannot be accessed via NBT
execute store result score #impl.selected_item.inaccessible ioi-pi if entity @s[advancements = {ioi-pi:impl/selected_item/get = {from_slot = true, from_recipe = false}}]


#   Add a temporary tag to the player
tag @s add ioi-pi.player


#   Start the modifying phase
function ioi-pi:impl/selected_item/modify/phase/start/setup


#   If the process of modifying the selected items were successful, end the modifying phase properly
execute store result score #impl.selected_item.processed ioi-pi if data storage ioi-pi:tmp/special root.processed[]

execute if score #impl.selected_item.processed ioi-pi matches 1.. run function ioi-pi:impl/selected_item/modify/phase/end/setup


#   Remove the temporary tag from the player
tag @s remove ioi-pi.player


#   Wipe the data from the data storage used for processing the selected item(s)
data remove storage ioi-pi:io root

data remove storage ioi-pi:tmp/general root

data remove storage ioi-pi:tmp/special root


#   Revoke the advancement only if the player has it
advancement revoke @s[advancements = {ioi-pi:impl/selected_item/get = true}] only ioi-pi:impl/selected_item/get
