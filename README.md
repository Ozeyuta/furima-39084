# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :histories

## items テーブル

| Column             | Type        | Options                        |
| ------------------ | ----------- | ------------------------------ |
| item_name          | string      | null: false                    |
| item_text          | text        | null: false                    |
| category_id        | integer     | null: false                    |
| status_id          | integer     | null: false                    |
| cost_id            | integer     | null: false                    |
| price              | integer     | null: false                    |
| shipping_origin_id | integer     | null: false                    |
| shipping_day_id    | integer     | null: false                    |
| user               | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :history

## histories テーブル

| Column             | Type        | Options                        |
| ------------------ | ----------- | ------------------------------ |
| item               | references  | null: false, foreign_key: true |
| user               | references  | null: false, foreign_key: true |

- belongs_to :item
- has_one :buyer
- belongs_to :user

## buyers テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| post_code          | string     | null: false                    |
| shipping_origin_id | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building_name      | string     |                                |
| phone_number       | string     | null: false                    |
| history            | references | null: false, foreign_key: true |

### Association

- belongs_to :history
