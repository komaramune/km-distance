#> km_distance:as_to_at
#
# 実行位置と実行者位置の距離を測ります
#
# @input
#   as entity position
#   at position
# @output
#   storage km_distance: out: 実行位置と実行者位置の距離
# @public

# 実行者位置Pos取得
execute positioned as @s summon marker run function km_distance:zz/get_pos

# 実行位置と実行者位置の差分取得
execute rotated 180 90 summon marker run function km_distance:zz/get_delta.m with storage km_distance: tmp

# ストレージ掃除
data remove storage km_distance: tmp