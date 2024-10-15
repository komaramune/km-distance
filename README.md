# km-distance
Minecraft JEのコマンドで距離測定を行うライブラリデータパックです。\
Library data pack for distance measurement with Minecraft JE commands.

## 対応バージョン / Verified mc versions
Minecraft Java Edition 1.21~

## 使用例 / How To Use
関数の実行位置と実行者位置の距離を測ります。\
Measure the distance between the function execution position and the executor position.
```mcfunction
# 関数実行 / Run Function
execute as @p positioned 0.0 0.0 0.0 run function km_distance:as_to_at

# 結果取得 / Get Value
data get storage km_distance: out
```

## 連絡先 / Contact
不具合や要望などがあればTwitterまでご連絡ください。
https://twitter.com/komaramune