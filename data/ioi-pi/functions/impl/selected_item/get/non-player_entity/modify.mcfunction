#> ioi-pi:impl/selected_item/get/non-player_entity/modify
#
#@within function ioi-pi:impl/selected_item/get/non-player_entity/as_entity


function ioi-pi:impl/selected_item/modify

execute as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/after_modifying


#   Apply the changes made with the contents of the inventory of the entity
data modify entity @s Items set from storage ioi-pi:temp temp.items
