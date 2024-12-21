#如果未加载：
execute unless score @r dfl_enable matches 1 run \
    title @a times 0 70 20
execute unless score @r dfl_enable matches 1 run \
    title @a title {"text":"!!! 缺少前置 !!!","color":"red","bold":true}
execute unless score @r dfl_enable matches 1 run \
    title @a subtitle {"text":"请安装数据包 datapackets functions LIB","color":"gray"}
execute unless score @r dfl_enable matches 1 run \
    return fail
title @a reset

execute as @a run function auto_smelt:smelt {input:"raw_iron",output:"iron_ingot"}
function dfl:tick/relax