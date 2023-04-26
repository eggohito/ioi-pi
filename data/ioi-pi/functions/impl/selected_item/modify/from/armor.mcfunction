#> ioi-pi:impl/selected_item/modify/from/armor
#
#   >   Modify the selected item(s) from the armor slots of the player
#
#@within function ioi-pi:impl/selected_item/get/from/armor


#   Prepare and modify the selected item(s)
data modify storage ioi-pi:tmp/general root.queue.in set from storage phi.modifyinv:temp armor

function ioi-pi:impl/selected_item/modify

data modify storage phi.modifyinv:temp armor set from storage ioi-pi:tmp/general root.queue.out


#   Apply the changes to the selected item(s) in the armor slots of the player and do some clean up
function phi.modifyinv:load/armor

function phi.modifyinv:apply/armor

function ioi-pi:impl/selected_item/clear
