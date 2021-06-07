
# URl: https://finding-employment.herokuapp.com/



# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association

- has_many : enterprises
- has_one : memo

## memos テーブル

| Column            | Type    | Options                           |
| ----------------- | ------- | --------------------------------  |
| title             | string  | null: false                       |
| selection＿status | text    | null: false                       |
| body              | text    | null: false                       |
| industry_id       | integer | null: false                       |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to : user

## Enterprises テーブル

| Column        | Type    | Options                           |
| ------------- | ------- | --------------------------------- |
| industry_id   | integer | null: false                       |
| title         | string  | null: false                       |
| image         | ActiveStorageで実装                         |
| text          | text    | null: false                       |
| theme         | text    | null: false                       | 
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to : user


### Association

- belongs_to : user
- belongs_to : enterprise
