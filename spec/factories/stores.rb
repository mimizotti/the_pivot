FactoryGirl.define do
  factory :store do
    sequence :name do |i|
      "MyString#{i}"
    end
    "MyString"
    description "MyString"
    image "MyString"
  end
end
