# numstatコマンド
![test](https://github.com/Kazuma-2932/robosys2026/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字の個数・最小値・最大値・平均値を計算して表示するコマンド。

## 機能

- 入力された数字の個数（count）
- 最小値（min）
- 最大値（max）
- 平均値（average）

数字はスペース区切りで入力。

## 使用方法

```bash
git clone https://github.com/Kazuma-2932/robosys2026.git
cd robosys2026
chmod +x numstat
echo "10 20 30 40 50" | ./numstat
```

実行結果:

```text
count: 5
min: 10.0
max: 50.0
average: 30.0
```

数字が入力されていない場合や、数字以外の文字が入力された場合はエラーメッセージを表示する。

## 必要なソフトウェア

- Python3
- テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Kazuma Fukumizu
