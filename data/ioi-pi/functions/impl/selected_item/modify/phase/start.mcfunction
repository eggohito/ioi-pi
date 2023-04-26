#> ioi-pi:impl/selected_item/modify/phase/start
#
#   >   Modify the current selected item and set it aside for later
#
#@within function ioi-pi:impl/selected_item/modify/queue/peek


function #ioi-pi:api/selected_item/modify/start

data modify storage ioi-pi:tmp/special root.processed prepend from storage ioi-pi:io root.item
