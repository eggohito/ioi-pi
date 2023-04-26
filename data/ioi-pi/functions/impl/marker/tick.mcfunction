#> ioi-pi:impl/marker/tick
#
#   >   Tick the marker entity that has the `ioi-pi.block_with_inventory` scoreboard tag
#
#@within function ioi-pi:tick


#   Kill the marker entity if it doesn't have a block with an inventory at its position
execute unless block ~ ~ ~ #ioi-pi:blocks_with_inventory run kill @s
