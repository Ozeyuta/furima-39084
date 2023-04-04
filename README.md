# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_one :buyer

## items テーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | ----------------- |
| item_name          | string      | null: false       |
| text               | text        | null: false       |
| category           | string      | null: false       |
| status             | string      | null: false       |
| cost               | string      | null: false       |
| price              | string      | null: false       |
| shipping_origin    | string      | null: false       |
| shipping_days      | string      | null: false       |
| user_id            | references  | foreign_key: true |

### Association

- belongs_to :buyer
- belongs_to :user
- has_one :history

## history テーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | ----------------- |
| buyer_id           | references  | foreign_key: true |
| item_id            | references  | foreign_key: true |

- belongs_to :item
- belongs_to :buyer

## buyers テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| post_code          | string     | null: false       |
| shipping_origin    | string     | null: false       |
| city               | string     | null: false       |
| address            | string     | null: false       |
| building_name      | string     |                   |
| phone_number       | string     | null: false       |
| user_id            | references | foreign_key: true |

### Association

- has_many :items
- belongs_to :user
- has_one :history
