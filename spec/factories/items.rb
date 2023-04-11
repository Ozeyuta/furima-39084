FactoryBot.define do
  factory :item do
    item_name               {'商品名'}
    item_text               {'説明'}
    category_id             {2}
    status_id               {2}
    cost_id                 {2}
    shipping_origin_id      {2}
    shipping_day_id         {2}
    price                   {1000}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
