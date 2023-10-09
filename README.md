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
| stress_socre  | integer    | null: false                    |
| refresh       | string     | null: false                    |
| refresh_socre | integer    | null: false                    |
| assess_id     | integer    | null: false                    |
| wight_id      | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
<!-- ・ストレス要因
必須の合計点数(stress_score)も必須カラムとの前提です。
各ストレス要因の点数は計8変数(hardwork,hardpersons,painfullife,expense,duty,tired,neglect,nervous)使用されます。 -->
<!-- ・リフレッシュ習慣
必須の合計点数(refresh_score)も必須カラムとの前提です。
各リフレッシュ習慣の点数は計8変数(goodjob,matchpersons,happylife,income,hobby,energy,support,safely)使用されます。 -->
### Association
- belongs_to :user
- has_one :care
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


## cares(ケア対策の選定機能) Table
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| care_date     | date       |                                |
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