FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'00000a'}
    password_confirmation {password}
    family_name           {'山田'}
    first_name            {'太郎'}
    family_name_kana      {'ヤマダ'}
    first_name_kana       {'タロウ'}
    birth_year            {2023}
    birth_month           {1}
    birth_day             {1}
  end
end