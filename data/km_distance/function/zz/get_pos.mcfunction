#> km_distance:zz/get_pos
#
# 座標取得
#
# @internal

# Pos取得
data modify storage km_distance: tmp.pos set from entity @s Pos
data modify storage km_distance: tmp.x set from storage km_distance: tmp.pos[0]
data modify storage km_distance: tmp.y set from storage km_distance: tmp.pos[1]
data modify storage km_distance: tmp.z set from storage km_distance: tmp.pos[2]

# マーカー削除
kill @s