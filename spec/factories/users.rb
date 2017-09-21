FactoryGirl.define do
  factory :user do
    first_name "First"
    last_name "Name"
    username "test"
    password_digest "test"
    address "123 Street"
    email "test@gmail.com"
  end
end
