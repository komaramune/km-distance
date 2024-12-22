#> km_distance:zz/get_delta.m
#
# 差分取得
#
# @internal

# 差分の位置にtp
$tp @s ^$(x) ^$(z) ^$(y)

# マーカーのPos取得
data modify storage km_distance: tmp.pos set from entity @s Pos
data modify storage km_distance: tmp.x set from storage km_distance: tmp.pos[0]
data modify storage km_distance: tmp.y set from storage km_distance: tmp.pos[1]
data modify storage km_distance: tmp.z set from storage km_distance: tmp.pos[2]

# 負の値を正に
execute positioned as @s unless predicate {"condition":"minecraft:location_check","predicate":{"position":{"x":{"min":0}}}} run function km_distance:zz/abs/x.m with storage km_distance: tmp
execute positioned as @s unless predicate {"condition":"minecraft:location_check","predicate":{"position":{"y":{"min":0}}}} run function km_distance:zz/abs/y.m with storage km_distance: tmp
execute positioned as @s unless predicate {"condition":"minecraft:location_check","predicate":{"position":{"z":{"min":0}}}} run function km_distance:zz/abs/z.m with storage km_distance: tmp

# 幾何学実行
execute positioned 0.0 0.0 0.0 rotated 0 0 run function km_distance:zz/geometry.m with storage km_distance: tmp

# マーカー削除
kill @s