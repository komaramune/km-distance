#> km_distance:zz/vec_to_vec/_
#
# vec_to_vec内部処理
#
# @internal

# ベクトルをストレージに代入
data modify storage km_distance: tmp.x set from storage km_distance: in1[0]
data modify storage km_distance: tmp.y set from storage km_distance: in1[1]
data modify storage km_distance: tmp.z set from storage km_distance: in1[2]

# ベクトルをマーカーに代入
data modify entity @s Pos set from storage km_distance: in2

# 実行位置と実行者位置の差分取得
execute positioned as @s rotated 180 0 run function km_distance:zz/get_delta.m with storage km_distance: tmp