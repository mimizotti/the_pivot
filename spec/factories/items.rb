FactoryGirl.define do
  factory :item do
    sequence(:title) do |n|
      "Useless Product#{n}"
    end
    description "This product is totatlly useless"
    price "9.99"
    image "smacys.png"
    store
  end
end
