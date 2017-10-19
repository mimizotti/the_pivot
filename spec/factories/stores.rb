FactoryGirl.define do
  factory :store do
    sequence(:name) do |n|
      "Store#{n}"
    end
    description "store description"
    image "smacys.png"
  end
end
