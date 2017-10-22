FactoryGirl.define do
  factory :user do
    sequence :username do |i|
      "darkly_lit_caverns#{i}"
    end
    first_name "Bon"    
    last_name "Jovi"
    password "test"
    address "123 Street"
    email "test@gmail.com"
  end
end
