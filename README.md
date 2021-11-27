# Ksylitoli
## ピンアウト
![CH554](https://user-images.githubusercontent.com/31387612/143665460-61dda03b-befd-42e3-a19b-f7cb1ce404c1.jpg)
## macOS
sdccをインストール
```sh
brew install sdcc
```

binutilsをインストール
```sh
brew install sdcc
```

libusbをインストール
```sh
brew install libusb
```

ch55xtoolをインストール
```sh
pip install ch55xtool
```

## コンパイル
```sh
make
```
するとコンパイルします。

## 書き込み
downloadボタンを押しながらUSBケーブルを挿すとブートローダモードに入ります。
```sh
python -m ch55xtool -f ./build/ksylitoli.bin
```
すると、書き込まれます。




