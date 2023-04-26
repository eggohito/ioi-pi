#> ioi-pi:impl/selected_item/modify/phase/start/setup
#
#@within function ioi-pi:impl/selected_item/get


#   Get and sort the items from the player's inventory into different sections
function phi.modifyinv:setup/whole_inventory

data modify storage ioi-pi:io root.phase set value "start"


#   Get the selected item from the sections
function ioi-pi:impl/selected_item/get/from/armor

function ioi-pi:impl/selected_item/get/from/hotbar

function ioi-pi:impl/selected_item/get/from/inventory

function ioi-pi:impl/selected_item/get/from/offhand

function ioi-pi:impl/selected_item/get/from/inventory/blocks

function ioi-pi:impl/selected_item/get/from/inventory/other_entities