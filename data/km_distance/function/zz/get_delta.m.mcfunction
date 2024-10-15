#> km_distance:zz/get_delta
#
# 差分取得
#
# @internal

# 差分の位置にtp
$execute positioned ^$(x) ^ ^$(z) rotated 0 90 run tp @s ^ ^ ^$(y)

# マーカーのPos取得
data modify storage km_distance: tmp.pos set from entity @s Pos
data modify storage km_distance: tmp.x set from storage km_distance: tmp.pos[0]
data modify storage km_distance: tmp.y set from storage km_distance: tmp.pos[1]
data modify storage km_distance: tmp.z set from storage km_distance: tmp.pos[2]

# 負の値を正に
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"km_distance:","path":"tmp.x"},"range":{"min":0}} run data modify storage km_distance: tmp.x set string storage km_distance: tmp.x 1 -1
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"km_distance:","path":"tmp.y"},"range":{"min":0}} run data modify storage km_distance: tmp.y set string storage km_distance: tmp.y 1 -1
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"km_distance:","path":"tmp.z"},"range":{"min":0}} run data modify storage km_distance: tmp.z set string storage km_distance: tmp.z 1 -1

# 幾何学実行
execute positioned 0.0 0.0 0.0 rotated 0 0 run function km_distance:zz/geometry.m with storage km_distance: tmp

# マーカー削除
kill @s