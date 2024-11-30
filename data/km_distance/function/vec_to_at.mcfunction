#> km_distance:vec_to_at
#
# ストレージ上の3次元座標位置と実行位置の距離を測ります
#
# @input
#   storage km_distance: in: 3次元座標
#   at position: in: 実行位置
# @output
#   storage km_distance: out: 距離
# @public

# ベクトルをストレージに代入
data modify storage km_distance: tmp.x set from storage km_distance: in[0]
data modify storage km_distance: tmp.y set from storage km_distance: in[1]
data modify storage km_distance: tmp.z set from storage km_distance: in[2]

# 実行位置と実行者位置の差分取得
execute rotated 180 0 summon marker run function km_distance:zz/get_delta.m with storage km_distance: tmp

# ストレージ掃除
data remove storage km_distance: tmp