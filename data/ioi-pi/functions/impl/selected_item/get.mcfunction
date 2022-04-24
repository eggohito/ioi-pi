#> ioi-pi:impl/selected_item/get
#
#@within tag/function ioi-pi:api/selected_item/get


#   Set the score of the `#impl.adv.call` score holder to 1
execute if entity @s[advancements = {ioi-pi:impl/selected_item/get = true}] run scoreboard players set #impl.adv.call ioi-pi 1


#   Process the inventory and nearby blocks/entities that have inventories
function ioi-pi:impl/selected_item/get/prepare_whole_inventory

function ioi-pi:impl/selected_item/get/armor

function ioi-pi:impl/selected_item/get/hotbar

function ioi-pi:impl/selected_item/get/inventory

function ioi-pi:impl/selected_item/get/offhand

function ioi-pi:impl/selected_item/get/container

function ioi-pi:impl/selected_item/get/non-player_entity


#   Reset the score of the `#impl.adv.call` score holder
scoreboard players reset #impl.adv.call ioi-pi

execute if entity @s[advancements = {ioi-pi:impl/selected_item/get = true}] run advancement revoke @s only ioi-pi:impl/selected_item/get
