# robosys2023
ロボ死す
# plusコマンド
[![test](https://github.com/erisu-Y/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/erisu-Y/robosys2023/actions/workflows/test_plus.yml)

標準入力から読み込んだ数字を偶数か奇数かを判別し、加減の計算を行う。偶数の場合は足し算、奇数の場合は引き算を行う。

## ダウンロード
$ git clone https://github.com/erisu-Y/robosys2023.git

## 使用例

```
$chmod +x plus

$seq 5 | ./plus

-3.0

$seq 10 | ./plus

5.0

$seq 39 | ./plus

-20.0
```

## テスト環境
* Ubuntu20.04

* Python
   *テスト済み: 3.7~3.10

## ライセンス
*このソフトウェアパッケージは、3条項BSDライセンスの下、再配布および使用が許可されます。
*このパッケージのコードは、下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て、いくつか変更点を加え、自身の著作としたものです。
[ryuichiueda/my_slides/robosys2023/lesson4.md](https://github.com/ryuichiueda/my_slaides/tree/master/robosys_2022)
©　2023 Yuto Okuda
