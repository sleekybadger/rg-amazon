FactoryGirl.define do
  sequence :country_name do |n|
    "#{Faker::Address.country} #{n}"
  end

  factory :country do
    name { FactoryGirl.generate(:country_name) }
  end

end
