# Ksylitoli
**NT鯖江にて逆流防止ダイオードが入っていないとご指摘を受けました。外部電源の使用時、静電気には十分ご注意ください**
## ピンアウト
![CH554](https://user-images.githubusercontent.com/31387612/143665460-61dda03b-befd-42e3-a19b-f7cb1ce404c1.jpg)
## macOS
sdccをインストール
```sh
brew install sdcc
```

binutilsをインストール
```sh
brew install binutils
```

### objcopyが見つからない場合
binutilsのパスを通します。


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

```sh
brew list binutils
```
でbinutilsがある場所を探し、そのパスを.zshrcなどに追記します。

## 書き込み
downloadボタンを押しながらUSBケーブルを挿すとブートローダモードに入ります。
```sh
python -m ch55xtool -f ./build/ksylitoli.bin
```
すると、書き込まれます。




