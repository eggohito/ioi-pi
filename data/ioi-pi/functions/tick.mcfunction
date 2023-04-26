#> ioi-pi:tick
#
#@within
#   function ioi-pi:load
#   function ioi-pi:tick


#   Execute as and at all Marker entities that has the `ioi-pi.block_with_inventory` scoreboard tag
execute as @e[type = minecraft:marker, tag = ioi-pi.block_with_inventory] at @s run function ioi-pi:impl/marker/tick


#   Loop this function
schedule function ioi-pi:tick 1t
