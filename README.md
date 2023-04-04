# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :items
- has_one :buyers

## items テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| image_id           | integer | null: false |
| item_name          | string  | null: false |
| text               | string  | null: false |
| category           | string  | null: false |
| status             | string  | null: false |
| cost               | string  | null: false |
| price              | string  | null: false |
| shipping_origin    | string  | null: false |
| shipping_days      | string  | null: false |

### Association

- belongs_to :buyer
- belongs_to :user
- has_one :images

## images テーブル

| Column             | Type    | Options                      |
| ------------------ | ------- | ---------------------------- |
| image              | string  | null: false                  |
| item_id            | integer | null: false foreign_key: true|

- belongs_to :item

## buyers テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| post_code          | string  | null: false |
| prefecture         | string  | null: false |
| city               | string  | null: false |
| address            | string  | null: false |
| building_name      | string  |             |
| phone_number       | integer | null: false |
| user_id            | integer | null: false |

### Association

- has_many :items
- belongs_to :user
