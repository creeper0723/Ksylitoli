# Ksylitoli
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




