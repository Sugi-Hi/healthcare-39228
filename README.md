# アプリケーション名
healthcare

# アプリケーション概要
現状態の自己チェックにより、体調異変があってもすぐ気付き、自分に合ったケアへの対策や選択を決定する事で、健康管理が効率的にできる健康診断用アプリです。

# URL
http://57.181.137.4:3000/

# テスト用アカウント(履歴書・職務経歴書に記載)
・Basic認証ID：

・Basic認証パスワード：

## 健康診断回答者用(healthさん)
・メールアドレス：health@h.com

・パスワード：heal2019

## 回答との共感者者用(careさん)
・メールアドレス：care@c.com

・パスワード：care2021


# 利用方法
## 目標投稿
1.トップページ(一覧ページ)からヘッダーのユーザー新規登録・ログインを行います。

2.健康診断回答ページ(投稿ページ)から、自己チェックで下記の様に回答します。

○必須入力2項目(主なストレス要因・主なリフレッシュ習慣)

○必須選択9項目(行動面,心理面|a,b,c,d:4箇所|[計8項目(5段階評価)]・ストレス優先順位[1項目(3ランク評価)])

○必須選択9項目(行動面,心理面|a,b,c,d:4箇所|[計8項目(5段階評価)]・リフレッシュ優先順位[1項目(3ランク評価)])

○任意選択(画像ファイル)

3.2項目入力、18項目選択[合計20項目]を自己チェックできたら、回答ボタンをクリックします。

## 他者への応援
1.一覧ページから健康診断回答アイコン(画像,イラスト図)をクリックして、移動先の詳細ページから確認します。

2.健康状態データ表の直下側に「お気に入り共感」ボタンがあり、共感したリンク先ユーザーのニックネームを表示します。

# アプリケーション作成した背景
多様化する現在、忙しすぎて体調管理が難しい方が多く、さらに私も含めて大変な事情で休息が厳しい課題を抱える様になりました。原因は、周りでやるべき事が多すぎて自分の体調に気付かず、何処でどう休めば良いか不明になる事だと考えられました。そこで、余裕無い方々にもすぐ体調に気付いて自己ケアを心がけの為、過剰な負担を緩和に向ける健康管理アプリケーションを作成する事に決めました。

# 洗い出した要件(要件定義書URL)
https://docs.google.com/spreadsheets/d/1m0IO_7z3tM7Sson11jOdkInVE6r80QBjZWSf-xsAY1w/edit

# 実装した機能についての画像・GIFの説明
1.トップページ(一覧ページ上側)：[大空の白鳥形雲]

→大変な状態でも、羽ばたく事で乗り越えられる希望を象徴します。


2.ユーザー新規登録・健康診断回答：[山頂付近での渓谷風景]

→山登りで癒しの新規開拓していく創作を意味します。


3.ユーザー登録変更・診断結果詳細・診断結果編集：[湖上での噴水虹]

→結果が出た後にじっくり見直し修正の為に眺められる湖を意味します。


4.ログイン・ケア対策の各ページ背景写真：[海岸小島]

→登録・回答・提案を参考にした上で、指定範囲の中から自分に合った所を選び出せる海岸上の小島を意味します。


5.ストレスで詳細での[提案](+ケア対策)：有り[健康食品](+健康飲料)、多くて大変[健康サプリメント](+癒し語り場)、過剰で困難[医療機関](+処方箋)

→ストレス度合に応じたケア対策を提案・奨励され、大きくなるに従ってケアが専門的に強くなっていく事を示します。


6.リフレッシュ詳細での[提案](+アクティブ対策)：有り[展望観光](+海岸小島)、多くて大変[新幹線旅行](+娯楽エンターテインメント)、過剰で困難[活発な交流会](+富士山)

→リフレッシュ度合に応じたアクティブ対策を提案・推奨され、大きくなるに従って活動・活躍が多くなっていく事を示します。


# 実装予定
[1]アプリ企画・構想：9/27（水）〜/30（金）

[2]DB設計：9/30（水）〜10/7（土）　エンティティ定義書・必要カラム名整理・README、ER図作成

[3]フロント実装：10/2(月)〜10/8(日)　新規登録・ログイン、登録更新・ログアウト

⇒[ニックネーム(英字のみ)・Email・パスワード]のみデータ入力

[4]実装準備 ：10/6(金)〜10/12(木)　バック背景の設定

○[自然・空など癒されそうな画像|HTML]/(大きさ・上下幅の調整|CSS)

○投稿と同様な回答(ストレス要因<影響度>

○生活リフレッシュ習慣<優先度>)

⇒健康状態の表示、提案

[5]機能実装 ①：10/9(月)〜10/15(日)　回答一覧表、詳細ページ

⇒自己分析<マイページ有>・編集(ボタン)・削除(ボタン)

[6]機能実装 ②：10/10(火)〜10/19(木)　詳細ページ、ケア提案・説明

⇒奨励(おススメ)ページ、提案付き

[7]機能実装 ③：10/18(水)〜10/26(木)　対策ページ、予定の決定ページ

⇒提案後のケア・アクティブ等の対策ページ、予定の選定・決定

[8]デプロイ・動作確認：10/6(金)〜10/27(金)　HP画面でのビュー調整

○ローカル開発環境Ubuntuターミナル「rails s」サーバー起動、

○リモート本番環境Renderダッシュボード

○「連携GitHubDesktopコミット・プッシュ」自動デプロイON

[9]一時完了後の修正期間：10/21(土)～10/27(金)

●実装完成予定時間 ：103時間

⇒⇒[実際完成時間]：147時間程


# データベース設計
## ER図
healthcare.dio
## Table図(Model関連)
----------------------------------------------------------
### users(ユーザー管理機能) Table
| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false             	|
| email              | string   | null: false, unique: true	|
| encrypted_password | string   | null: false               |
### Association
- has_many :healths
- has_many :cares
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
### healths(健康診断の回答機能) Table
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| stress           | string     | null: false                    |
| stressdoa_id     | integer    | null: false                    |
| stressdob_id     | integer    | null: false                    |
| stressdoc_id     | integer    | null: false                    |
| stressdod_id     | integer    | null: false                    |
| stressfeela_id   | integer    | null: false                    |
| stressfeelb_id   | integer    | null: false                    |
| stressfeelc_id   | integer    | null: false                    |
| stressfelld_id   | integer    | null: false                    |
| stressweight_id  | integer    | null: false                    |
| refresh          | string     | null: false                    |
| refreshdoa_id    | integer    | null: false                    |
| refreshdob_id    | integer    | null: false                    |
| refreshdoc_id    | integer    | null: false                    |
| refreshdod_id    | integer    | null: false                    |
| refreshfeela_id  | integer    | null: false                    |
| refreshfeelb_id  | integer    | null: false                    |
| refreshfeelc_id  | integer    | null: false                    |
| refreshfeeld_id  | integer    | null: false                    |
| refreshweight_id | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |
<!-- ・ストレス要因
必須の合計点数(stress_score)も必須カラムとの前提です。
各ストレス要因の点数は計9カラム(stressdoa～stressdod,stressfeela～stressfeeld,stressweight)使用されます。 -->
<!-- ・リフレッシュ習慣
必須の合計点数(refresh_score)も必須カラムとの前提です。
各リフレッシュ習慣の点数は計9カラム(refreshdoa～refreshdod,refreshfeela～refreshfeeld,refreshweight)使用されます。 -->
### Association
- belongs_to :user
- has_one :care
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


### cares(ケア対策の選定機能) Table
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| care_date     | date       | null: false                    |
| care_time     | datetime   |                                |
| care_place    | text       |                                |
| go_by         | string     |                                |
| caremethod_id | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
| health        | references | null: false, foreign_key: true |
<!-- ケア対策は基本ストレスとリフレッシュの合計点数を元に提案されますが、1対策では1人健康1診断の回答によって指定できるものとします。 -->

### Association
- belongs_to :user 
- belongs_to :health
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
----------------------------------------------------------

# 開発環境
・プログラミングコード：Visual Studio code

・ターミナル：Ubuntu

・プログラミング言語：HTML/CSS、Ruby、Ruby on Rails、JavaScript

・データベースDB：MySQL(DBeaver)

・記録・経緯：GitHub Desktop

・ローカル(個人)環境：localhost:3000

・本番環境：GitHub、Render(Dashboard)、PostgreSQL(TablePlus)

・企画・要件定義：Goobleスプレッドシート

・DB設計ER図：Draw.io拡張機能

・参考資料：Google検索(ChatGPT、Qiitaなど)

・サクラエディタ(メモ用)


# ローカルでの動作方法
・git clone https://github.com/Sugi-Hi/healthcare-39228

・cd ~/Techcamp/projects/healthcare-39228

・ruby 2.6.5

・rails 6.0.0

・mysql 0.4.4 (DBeaver)

・bundle install

・yarn install

・rails s

# 工夫したポイント
　今の健康状態を点数化する際に、ストレスをマイナス点数[9項目]・リフレッシュをプラス点数[9項目]として、入力フォーム以外の選択フォーム[計18項目]を点数対象としました。特に、工夫したポイントはActiveHashクラスでの選択ID番号を、点数化への数値に置き換えて健康評価の対象にした点です。ストレス8項目(-1～-5点)のマイナス合計、リフレッシュ項目8項目(+1～+5点)のプラス合計と仮定し、人の適性・状況によって異なる優先順位・重みをストレス重度(×1～3ランク)・リフレッシュ優先度(×1～3ランク)として掛け合わす事によって、健康評価の対象とした点数化計算が大量モデルファイル情報で苦労しました。

　主に、わかりにくい健康状態をわかりやすく可視化した健康の総合点(-120～0～+120点)に力を入れてきました。