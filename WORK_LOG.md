# 2022/01/01 
- やったこと
  - mode の更新の修正
  - アイコンのアニメーションを AnimatedContainer を使って修正
# 2021/12/31 Part2
- やったこと
  - Better な設計
  - Container/Presentational で分割するリファクタリング
  - リファクタリング色々やった
  - HomeIconSessionHandler がかなり良さそう
- 次にやること
  - HomeIconSessionHandler 内で mode の切り替えを行うようにする
    - HomeIconController を置き換えるような形
  - HomeIconSessionHandler の riverpod 周りのコードが増えてきたので part ファイルで分離する。

# 2021/12/31
## やったこと
- State 上の dragGlobalPosition を更新する
- Avatar は dragGlobalPosition を監視して位置を補正するようにする
- Slot の位置を globalPosition で計算するようにする
- 手を離した時に AnimationController で所定の位置に戻す
- Slot の位置を globalPosition で計算するようにする
## 次やること
- Draggable から Avatar を分離する
- Avatar には slot 位置を与えるようにする
  - コンポーネントに自分で自分の位置を計算させるか
  - 統括管理してコンポーネントに考えさせずに、位置を与えるか
## 設計手法
- global => data storage 
  - できるだけ管理をしない
- local => container/presentational
  - dynamic/static のレイヤを分離する
  - computed な値は dynamic 側で計算する
# 2021/12/30
- やること
  - リファクタリング 
    - Listener を Draggable ではなく、親 Widget に持っていって、State で現在位置を管理するようにする
    - ドラッグを担当するコンポーネントは、 ドラッグが完了後所定の位置に AnimationController で戻すことも担当する
    - Draggable と Avatar を分離するかは微妙な問題
  - blur 表示中に手を離しても表示が切り替わらないこと
  - background をタッチして Dismiss
  - コンテキストメニューを表示
    - https://github.com/HeavenOSK/flutter_ipad_ui_clone/tree/open_app_navigation/lib/components
- やったこと 
  - アイコンタップ時のフェイズ移行のコードを書く
  - フェイズ移行のバグ修正を行った
  - showContext mode でバックグラウンドに Blur をかけるようにした
  - mode が reorder になる前にドラッグを始めた場合、mode を強制的に reorder に移行する
  - Blur と拡大のアニメーションのタイミングを合わせた
  - 拡大時の位置調整を行った
  - 拡大時にアプリの名前を非表示にする
  - SpringBoardState の mode 切り替えのバグを修正する
- 次やること
  - リファクタリング
    - Listener を Draggable ではなく、親 Widget に持っていって、State で現在位置を管理するようにする
    - ドラッグを担当するコンポーネントは、 ドラッグが完了後所定の位置に AnimationController で戻すことも担当する
    - Draggable と Avatar を分離するかは微妙な問題
# 2021/12/29 part2
- やること
  - コンテキストメニューの実装
  - 一旦、静的に実装する
    - ズームアウトしつつ
    - Blur をかける
  - SpringBoard をズームアウトする
  - ズームアウトしたら Blur をかける
- やったこと
  - SpringBoard 全体に Blur をかけてみた。
    - すると、ズームアウトをせずともそれっぽくなった
  - 長押し時の SpringBoard の Phase 移行の疑似コードを書いた
- 次にやること
  - アイコンの ShortTap 判定
  - アイコンの LongPress 判定をして ContextMenu を表示する
  - ContextMenu が非表示になったあと draggable に移行する
  - 上記がキャンセルされた際のハンドリングを実機を確認しながら再現する
# 2021/12/29
- 今日やること
  - Long press 怪しいので一旦消す
    - きたるべき時に対応する 
  - 拡大表示する
    - 位置の調整
    - ドロップシャドウを入れる
- 今日やったこと
  - Long press 怪しいので一旦消す
  - family の実装ミスを修正
    - 型を指定しないとバグが見つからない場合がある
  - [【Flutter】図解とサンプルでわかる連続アニメーション ⭐️💨 TweenSequence
    ](https://zenn.dev/inari_sushio/articles/98b1ee55aadd12) を読んだ。
    - Icon の拡大・コンテキストメニューを順番に表示するのに使えるかも
    - 少なくとも内部実装は使えそう
- 明日やること
  - コンテキストメニューの実装
    - SpringBoard をズームアウトする 
    - ズームアウトしたら Blur をかける
# 2021/12/27
- やったこと
  - ドラッグ時に名前を消して表示する 
- 次やること
  - 拡大表示する

# 2021/12/26
- やったこと
  - Draggable を個別に設定できるようにする
  - 並び替えのバグの修正
    - 移動先の index のチェックだけではなく、スロットの一致性のチェックも必要だった。
    - デバッガでは再現しなかったので、プリントデバッグを試す
- 次やること
  - ドラッグ中に文字を消す
  - 拡大表示する
  - ドラッグを重くする
    - フレームの更新起因で位置を更新する
  - 位置やレイアウトに影響する要素を挙げて整理する
    - Size を変化するのは悪手
  - 長押しからのドラッグのハンドルが発生するのどうやんの?
# 2021/12/25
- やったこと
  - Draggable のコードを全消しする 
  - Draggable を作り直す
    - Why
      - キャンセルのアニメーションが非常に作りづらく、できれば StatefulWidget の仕組みに乗っけたい
    - Portal を使って作る
    - とりあえずインターフェースはそのままにして、新しい Widget で置き換える。 
    - 実装の順番
      - FlutterPortal を使えるようにする
      - GestureRecognizer を仕込む
      - ドラッグ中に子を透明にすること
      - ドラッグ中に avatar を表示する
      - ドラッグ中に avatar を動かす
      - onUpdate で現在位置を知らせること
      - ドラッグ終了時にアニメーションして所定の位置に戻ること
  - プルプルさせる
    - state に dragging を追加する
    - dragging を更新する処理を追加する
    - 動いてる途中のものはプルプルさせないようにする
- 次やること
  - ドラッグを重くする
    - フレームの更新起因で位置を更新する
  - 拡大表示する
  - 位置やレイアウトに影響する要素を挙げて整理する
    - Size を変化するのは悪手　
  - ドラッグ中に文字を消す
  - 長押しからのドラッグのハンドルが発生するのどうやんの?
# 2021/12/21
- やったこと
  - スロットの位置を色分けして表示した。
  - showDebugSlot 的なフラグを作ったけど、まだ使ってない
    - どういう用途? スロットを色分け表示できればデバッグしやすそうだ。
    - Opacity 薄めてもいいかも
  - padding.horizontal は合計じゃなくて片方のみの値
  - アイコンを表示する
  - スロット丸ごと入れ替えられるようにする
  - Slot の計算できたから、それを使って DragTarget とか作る
  - DragTarget を Rect で作る
  - DragTarget を positions から分離して別のリストにした
  - 並び替えできるようになった
- 次やること
  - 手放した時にスムーズに戻る
  - PageView 化する
  - PageView に関わる特殊ケースを実装する
  - プルプルを実装する
  - グループ化を実装する
  - ディテイールに拘る
  - コンテキストメニューを実装する
  - ライブラリ化する
  - スマホ対応する
  - 自分のポートフォリオサイトに適用する
  - ScalableDouble を追加する
# 2021/12/21 
- やったこと
  - デバッグ用に order の表示と shuffle button を表示した
  - movable の実装消した
- 次やること
  - 画面サイズを見て preferred position を算出するようにして、AnimatedPositionedで宣言的に移動させる
  - Animated なしで Positioned を使って表示する
    - 画面サイズと縦横の最大アイコン数を使って距離などを求めるようにする
      - もしかしたらアイコンのサイズも動的に決定するようにした方がいいかも
      - どのデータが computed にできないのか考える。
  
# 2021/12/20
- やったこと
  - Scale の拡大縮小をクラス内に閉じ込める
  - MockIconData を作成
  - SpringBoardStorage に order と mockIconData を追加
- 次やること 
  - デバッグ用に order の表示と shuffle button を表示する
  - movable の実装消す
  - 画面サイズを見て preferred position を算出するようにして、AnimatedPositionedで宣言的に移動させる

# 2021/12/15
- やったこと
  - タッチ~ドラッグ間で、コンポーネント上のポインタの位置がずれないように、
    - ポインタのポジションに対してローカルポジションを引いた
- 次やること
  - Scale の拡大縮小をクラス内に閉じ込める
    - クラスに倍率を注入して拡大縮小済みの値が取得できるようにしておく。 
    - 理由: 長さを式の状態で扱うのロジックややこしくなる。

# 2021/12/14
- やったこと
  - SpringBoardDragAvatar を追加した
  - Draggable の実装をちゃんと読んだ
    - わかんねーーーーーーーー
- 次やること
  - ドラッグした時にアイコンがついてくるようにする
  - ドラッグして手離した時に、スムーズに定位置に戻るようにする。
# 2021/12/13
- 作戦
　- インクリメンタルに実装する
　- まず一個のアイコンをドラッグできるようにする
- やったこと
  - 拡大の倍率を Provider から提供するようにした
  - コードを消したりコメントアウトして、アイコン一つを画面左上に配置した
  - アイコンをタッチした時にアイコンを拡大表示するようにした
- 次やること
  - ドラッグした時にアイコンがついてくるようにする
  - ドラッグして手離した時に、スムーズに定位置に戻るようにする。
# 2021/12/11
- やったこと
  - デバイスの各サイズをスケールで測って定数として書いた
  - SpringBoard にアイコンを並べた
    - そのコンポーネントがどのような役割か Component/Composable の観点で見直すのが大事
  - ディレクトリを整理した
  - とりあえずアイコン一個だけブルブルさせる
    - と思って始めたら普通に全部ブルブルさせれた (Shaker widget) 
- 次やること
  - Shaker の ON/OFF を実装する
# 2021/12/10
- やったこと
  - とりあえず iPhone の形を作った
- 次やること
  - 静的に画面内にアイコンを並べる
