FactoryBot.define do
  factory :item do
    image                   {Faker::Lorem.sentence}
    item_name               {'商品名'}
    item_text               {'説明'}
    price                   {1000}
    status_id               {1}
    cost_id                 {1}
    shipping_origin_id      {1}
    shipping_day_id         {1}
    category_id             {1}
    association :user
  end
end
