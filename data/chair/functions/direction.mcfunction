execute as @s at @s run function chair:rotation

execute if score @s rotation matches 0..45 align xyz run tp @s ~.5 ~-.39 ~.55 0 0
execute if score @s rotation matches 315..360 align xyz run tp @s ~.5 ~-.39 ~.55 0 0
execute if score @s rotation matches 46..134 align xyz run tp @s ~.45 ~-.39 ~.5 90 0
execute if score @s rotation matches 135..225 align xyz run tp @s ~.5 ~-.39 ~.45 180 0
execute if score @s rotation matches 226..314 align xyz run tp @s ~.55 ~-.39 ~.5 -90 0
