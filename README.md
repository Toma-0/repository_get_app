# repository_get_app

Toma-0 　コーディングテスト

## 概要

Gituhub のリポジトリ検索アプリの実装

## figma (初期UI案)
https://www.figma.com/file/gV3IphhzXHbP0rylxLlhdQ/Untitled?type=design&node-id=0%3A1&mode=design&t=hOHQrMrVMCvux6Y2-1

## 環境

IDE:version 1.88<br>
Flutter:3.19.5<br>
Dart:3.3.3<br>
DevTools:2.31.1<br>

## App画像
検索前<br>
![image](https://github.com/Toma-0/repository_get_app/assets/69076412/1b284b65-9574-4f50-869f-144b36d87aed)

検索結果<br>
![image](https://github.com/Toma-0/repository_get_app/assets/69076412/51a37aa2-8c81-4534-85c0-ef1f9e3b273a)

詳細画面<br>
![image](https://github.com/Toma-0/repository_get_app/assets/69076412/ed11eda5-1c7a-4cf3-8d45-78fa954cc400)

リポジトリが存在しないときの画面<br>
![image](https://github.com/Toma-0/repository_get_app/assets/69076412/b66f48f7-7d3f-48f6-912e-4ff84a131678)

エラーが起こったときの画面<br>
![image](https://github.com/Toma-0/repository_get_app/assets/69076412/aec241fb-3138-4f24-bd17-c5fa61c62419)

## デモ動画
https://github.com/Toma-0/repository_get_app/assets/69076412/bb4248e3-aa04-4a3f-b8dd-be87192b341a




## コーディングテストの取り組み方

1.仕様決定 <br>2.タスク分解 <br>3.デザイン作成(figma)<br>
4.CI/CD 設定 <br>5.アクセストークンの追加 <br>6.テーマの実装 <br>7.共通部分の実装 <br>8.フェイクデータの実装 <br>9.共通ウィジェットの作成 <br>10.検索画面 UI の作成<br>
11 リポジトリ詳細画面の作成<br>
12.API 通信の初期設定の実装 <br>13.検索画面の通信周りを実装 <br>14.詳細画面の通信周りの実装 <br>15.リファクタリング <br><br>


## コーディングテスト前の評価ポイントに対する知識量

実装経験あり<br>
・テーマ、ダークモードの実装<br>

実装経験があるものの自信なし<br>
・エラー処理<br>
・画面回転<br>
・レスポンシブ<br>
・多言語対応<br>
・アニメーション<br>
<br>
調べたことがあるものの実装経験なし<br>
・テスト全般<br>
・CI/CD<br>
<br>
知識に不安あり<br>
・READ ME の充実<br>
・適切なコメント<br>
・適切な git ignore の設定<br>
・適切なコミット粒度<br>
・適切なブランチ運用<br>
・簡潔性・可読性・安全性・保守性の高いコード<br>
・Dart の言語機能を適切に使いこなせているか<br>
<br>
利用経験あり<br>
・プルリクエスト機能の利用<br>

## アーキテクチャ
MVVMを採用<br>
理由:今回は作業者が1人であることとViewになるべく早くデータを反映したいため<br>


## アピール点
・issuesカードの表示<br>
・検索App Barの実装<br>
・Github Actionの使用<br>

## 悔しい点
・テストに関しての学習が間に合わなかった。
なぜ、テストがうまくいかなかったのかを調べ追加開発したい。<br>
・riverpod generatorに引数を持たせていいのかどうかが最後まで答えが出なかった。<br>
・MaterialApp内で現在の使用言語を取得する方法を見出すことができなかった。<br>
・GithubActionの実装時等でコミット履歴が汚くなってしまった。<br>
・コミットの粒度を気にしすぎて、どのタイミングでいつもコミットしていたかわからなくなってしまった。<br>

## 追加で開発しようと思っている点
・ログイン機能の実装<br>
・お気に入り機能の作成
