FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    shipping_origin_id { 2 }
    city { '東京都' }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    phone_number { Faker::Number.decimal_part(digits: 11) }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
    user_id { Faker::Number.non_zero_digit }
    item_id { Faker::Number.non_zero_digit }
  end
end
