#> ioi-pi:impl/selected_item/get/from/inventory/other_entities
#
#   >   Get the selected item from entities with an inventory
#
#@within function ioi-pi:impl/selected_item/modify/phase/*/setup


#   Do some clean up before doing the process
function ioi-pi:impl/selected_item/clear


#   Execute as all the nearby entities with an inventory to process the selected item(s) if present
execute as @e[type = #ioi-pi:entities_with_inventory, distance = ..64] run function ioi-pi:impl/selected_item/modify/from/inventory/other_entities
