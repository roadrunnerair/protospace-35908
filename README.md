# テーブル設計

## users テーブル

| Column     | Type   | Options  |
| ---------- | ------ | -------- |
| email      | string | NOT NULL |
| password   | string | NOT NULL |
| name       | string | NOT NULL |
| profile    | text   | NOT NULL |
| occupation | text   | NOT NULL |
| position   | text   | NOT NULL |

### Association

- has_many :prototypes_users
- has_many :comments


## prototypes テーブル

| Column    | Type               | Options  |
| --------- | ------------------ | -------- |
| title     | string             | NOT NULL |
| cath_copy | text               | NOT NULL |
| concept   | text               | NOT NULL |
| image     | ActiveStorageで実装 |
| user      | references型       |

### Association

- belongs_to :users
- has_many :comments


## comments テーブル

| Column    | Type   | Options      |
| --------- | ------ | ------------ |
| text      | string | NOT NULL     |
| user      | text   | references型 |
| prototype | text   | references型 |

### Association

- belongs_to :users
- belongs_to :comments