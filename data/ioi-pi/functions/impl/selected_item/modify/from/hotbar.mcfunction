#> ioi-pi:impl/selected_item/modify/from/hotbar
#
#   >   Modify the selected item(s) from the hotbar slots of the player
#
#@within function ioi-pi:impl/selected_item/get/from/hotbar


#   Prepare and modify the selected item(s)s
data modify storage ioi-pi:tmp/general root.queue.in set from storage phi.modifyinv:temp hotbar

function ioi-pi:impl/selected_item/modify

data modify storage phi.modifyinv:temp hotbar set from storage ioi-pi:tmp/general root.queue.out


#   Apply the changes to the selected item(s) in the armor slots of the player and do some clean up
function phi.modifyinv:load/hotbar

function phi.modifyinv:apply/hotbar

function ioi-pi:impl/selected_item/clear
