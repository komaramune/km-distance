#> km_distance:storage_vec_len
#
# ストレージ上の3次元ベクトルの長さを測ります
#
# @input
#   storage km_distance: in: 3次元ベクトル
# @output
#   storage km_distance: out: ベクトルの長さ
# @public

# 内部処理呼び出し
execute summon marker run function km_distance:zz/vec_length/_

# ストレージ掃除
data remove storage km_distance: tmp