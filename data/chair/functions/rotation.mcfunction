execute store result score @s rotation run data get entity @p Rotation[0]
execute if score @s rotation matches ..-1 run scoreboard players operation @s rotation += &chair rotation
