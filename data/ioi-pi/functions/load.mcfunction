#> ioi-pi:load
#
#@within tag/function minecraft:load


#   Add scoreboard objective(s)
scoreboard objectives add ioi-pi dummy


#   Display a load/reload message to the debuggers
execute unless score #loaded ioi-pi = #loaded ioi-pi run tellraw @a[tag = ioi-pi.debugger] {"text": "[+ Loaded \"Item on Item - Programmable Interface\" by eggohito]", "color": "green"}


execute if score #loaded ioi-pi = #loaded ioi-pi run tellraw @a[tag = ioi-pi.debugger] {"text": "[= Reloaded \"Item on Item - Programmable Interface\" by eggohito]", "color": "gold"}


scoreboard players set #loaded ioi-pi 1


#   Re-initialize the tick function
schedule function ioi-pi:tick 1t replace
