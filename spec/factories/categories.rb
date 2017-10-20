FactoryGirl.define do
  factory :category do
    sequence :name do |i|
      "Scuba#{i}"
    end
  end
end
