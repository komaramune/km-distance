#> km_distance:zz/geometry.m
#
# ローカル相対座標をZ軸向きに回転させてtp
#
# @internal

# 幾何学で向き相対をZ軸方向に回転してtp
$execute facing ^ ^$(y) ^$(z) facing ^$(x) ^-$(y) ^$(z) facing ^ ^$(y) ^$(z) run tp @s ^-$(x) ^-$(y) ^$(z)

# マーカーのPos取得
data modify storage km_distance: out set from entity @s Pos[2]