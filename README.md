# README

# DB(Model関連Tabel)設計

----------------------------------------------------------

## users(ユーザー管理機能) Table

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false             	|
| email              | string   | null: false, unique: true	|
| encrypted_password | string   | null: false               |


### Association
- has_many :healths
- has_many :cares
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


## healths(健康診断の回答機能) Table

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| stress        | string     | null: false                    |
| hardwork      | integer    | null: false                    |
| stress_socre  | integer    | null: false                    |
| refresh       | string     | null: false                    |
| goodjob       | integer    | null: false                    |
| refresh_socre | integer    | null: false                    |
| assess_id     | integer    | null: false                    |
| wight_id      | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
<!-- ストレス|必須点数はカラム使用|任意点数は変数使用|：hardpersons,painfullife,expense,duty,tired,neglect,nervous⇒ -->
<!-- リフレッシュ|必須点数はカラム使用|任意点数は変数使用|：easypersons,happylife,income,hobby,energy,support,safely⇒ -->
### Association
- belongs_to :user
- has_one :care
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


## cares(ケア対策の決定機能) Table
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| health        | references | null: false, foreign_key: true |
| care_date     | integer    | null: false                    |
| care_time     | integer    | null: false                    |
| care_place    | text       | null: false                    |
| go_by         | string     |                                |
| caremethod_id | integer    | null: false                    |


<!-- 決済：クレジットカード決済代行サービス[pay.jp] -->

### Association
- belongs_to :user 
- belongs_to :health
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||