#> ioi-pi:impl/selected_item/get/from/inventory
#
#   >   Get the selected item from the inventory slots of the player
#
#@within function ioi-pi:impl/selected_item/modify/phase/*/setup


#   Do some clean up before doing the process
function ioi-pi:impl/selected_item/clear


#   Process the selected item(s) if present
execute if data storage phi.modifyinv:temp inventory[{tag: {ioi_pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify/from/inventory