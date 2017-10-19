FactoryGirl.define do
  factory :item do
    sequence :title do |i|
      "MyString#{i}"
    end
    description "MyText"
    price "9.99"
    image "https://memegenerator.net/img/images/600x600/9214447/ruh-roh-dog.jpg"
  end
end
