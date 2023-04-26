#   Count how many elements are in the `eyes` NBT path of the `example:remove_eyes` storage before processing it
execute store result score #eyes eyes_on_frame if data storage example:remove_eyes root.eyes[]

execute if score #eyes eyes_on_frame matches 1.. run function example:remove_eyes/modify/phase/end/give_eyes


#   Do some clean up
data remove storage example:remove_eyes root

data remove block -30000000 0 1602 Items
