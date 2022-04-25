data modify storage example:storage item set value {id: "minecraft:ender_eye", Count: 1b, Slot: 0b}


execute if score #eyes_to_give example > #64 example run data modify storage example:storage item.Count set value 64b

execute if score #eyes_to_give example <= #64 example store result storage example:storage item.Count byte 1 run scoreboard players get #eyes_to_give example


data modify block -30000000 0 1602 Items append from storage example:storage item

loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


scoreboard players operation #eyes_to_give example -= #64 example

execute if score #eyes_to_give example matches 1.. run function example:remove_eyes/give_eyes
