#   Count how many elements are in the `eyes` NBT path of the `example:remove_eyes` storage before processing it
execute store result score #eyes_elements ioi-pi if data storage example:remove_eyes eyes[]

execute if score #eyes_elements ioi-pi matches 1.. run function example:remove_eyes/after_modifying/give_eyes


#   Do some clean up
data remove storage example:remove_eyes eyes

data remove block -30000000 0 1602 Items
