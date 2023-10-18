# アプリケーション名
Health Care

# アプリケーション概要
健康維持の為に、健康診断用の自己チェックにより、体調不良にも気付き、自分に合ったすぐケアへの対策や選択の決定ができます。

# URL
https://healthcare-39228.onrender.com

# テスト用アカウント(必要時に記載)
・Basic認証ID：
・Basic認証パスワード：

## 健康診断回答者用
・メールアドレス：
・パスワード：
## 回答との共感者者用
・メールアドレス：
・パスワード：

# 利用方法
## 目標投稿
1.トップページ(一覧ページ)からヘッダーのユーザー新規登録・ログインを行います。
2.健康診断回答ページ(投稿ページ)から、自己チェックで下記の様に回答します。
・必須入力2項目(主なストレス要因・主なリフレッシュ習慣)、
・必須選択9項目(行動面,心理面:2項目|a,b,c,d:4箇所|[計8項目]・ストレス優先順位)
・必須選択9項目(行動面,心理面:2項目|a,b,c,d:4箇所|[計8項目]・リフレッシュ優先順位)
・任意選択(画像ファイル)
3.2項目入力、9項目選択[合計20項目]を自己チェックできたら、回答ボタンをクリックします。
## 他者への応援
1.一覧ページから健康診断回答アイコン(画像,イラスト図)をクリックして、移動先の詳細ページから確認します。

# アプリケーション作成した背景
多様化する現在、忙しすぎて体調管理が難しい方が多く、さらに私も含めて大変な事情で休息が厳しい課題を抱える様になりました。原因は、周りでやるべき事が多すぎて自分の体調に気付かず、何処でどう休めば良いか不明になる事だと考えられました。そこで、余裕無い方々にもすぐ体調に気付いて自己ケアを心がけの為、過剰な負担を緩和に向ける健康管理アプリケーションを作成する事に決めました。

# 洗い出した要件(要件定義書URL)
https://docs.google.com/spreadsheets/d/1m0IO_7z3tM7Sson11jOdkInVE6r80QBjZWSf-xsAY1w/edit

# 実装した機能についての画像・GIFの説明
・トップページ(一覧ページ上側)：[大空の白鳥形雲]
→大変な状態でも羽ばたける希望を象徴します。

・ユーザー新規登録・健康診断回答・ケア対策の各ページ背景写真：
・ユーザー登録変更、

# 実装予定


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
各ストレス要因の点数は計9カラム(stressdoa~stressdod,stressfeela~stressfeeld,)使用されます。 -->
<!-- ・リフレッシュ習慣
必須の合計点数(refresh_score)も必須カラムとの前提です。
各リフレッシュ習慣の点数は計8変数(goodjob,matchpersons,happylife,income,hobby,energy,support,safely)使用されます。 -->
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
VScode