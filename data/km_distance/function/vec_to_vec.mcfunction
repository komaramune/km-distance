#> km_distance:vec_to_vec
#
# 2つのストレージ上の3次元座標位置の距離を測ります
#
# @input
#   storage km_distance: in1: 3次元座標
#   storage km_distance: in2: 3次元座標
# @output
#   storage km_distance: out: 距離
# @public

# 内部処理呼び出し
execute summon marker run function km_distance:zz/vec_to_vec/_

# ストレージ掃除
data remove storage km_distance: tmp