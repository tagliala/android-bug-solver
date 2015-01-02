FactoryGirl.define do
  factory :device do
    name
    released_at { Faker::Date.between(2.years.ago, Date.today) }
  end

  factory :issue do
    device
    description 'Issue description'
  end
end
