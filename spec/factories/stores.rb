FactoryGirl.define do
  factory :store do
    sequence(:name) do |n|
      "Store#{n}"
    end
    description "store description"
    image "smacys.png"

    # factory :store_with_items do
    #   items {create_list(:item, 3)}
    # end
  end
end
