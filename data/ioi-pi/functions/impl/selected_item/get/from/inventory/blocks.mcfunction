#> ioi-pi:impl/selected_item/get/from/inventory/blocks
#
#   >   Get the selected item from blocks with an inventory
#
#@within function ioi-pi:impl/selected_item/modify/phase/*/setup


#   Do some clean up before doing the process
function ioi-pi:impl/selected_item/clear


#   Execute at all the nearby marker entities that have the `ioi-pi.block_with_inventory` scoreboard tag to process the selected item(s) if present
execute at @e[tag = ioi-pi.block_with_inventory, distance = ..64] run function ioi-pi:impl/selected_item/modify/from/inventory/blocks
