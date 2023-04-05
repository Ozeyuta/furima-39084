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
- has_one :history

## items テーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | ----------------- |
| item_name          | string      | null: false       |
| text               | text        | null: false       |
| category_id        | integer     | null: false       |
| status_id          | integer     | null: false       |
| cost_id            | integer     | null: false       |
| price_id           | integer     | null: false       |
| shipping_origin_id | integer     | null: false       |
| shipping_days_id   | integer     | null: false       |
| user               | references  | foreign_key: true |

### Association

- has_one :buyer
- belongs_to :user
- has_one :history

## histories テーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | ----------------- |
| buyer              | references  | foreign_key: true |
| item               | references  | foreign_key: true |
| user               | references  | foreign_key: true |

- belongs_to :item
- has_one :buyer
- belongs_to :user

## buyers テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| post_code          | string     | null: false       |
| shipping_origin_id | integer    | null: false       |
| city               | string     | null: false       |
| address            | string     | null: false       |
| building_name      | string     |                   |
| phone_number       | string     | null: false       |
| user               | references | foreign_key: true |

### Association

- belongs_to :item
- belongs_to :history
