require 'rails_helper'

RSpec.describe "Visitor has an item in cart" do
  it "and increases the quantity in cart" do
    category = Category.create(name: "scuba")
    item = category.items.create(title: "Mask", description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit '/scuba'
    click_on 'Add to cart'
    expect(current_path).to eq('/cart')
    expect(page).to have_content(item.title)
    expect(page).to have_content(1)
    expect(page).to have_content(49.95)

    select('2', from: 'quantity')

    expect(current_path).to eq('/cart')
    expect(page).to have_content(2)
    expect(page).to have_content(99.90)
  end

  it "and decreases the quantity in cart" do
    category = Category.create(name: "scuba")
    item = category.items.create(title: "Mask", description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit '/scuba'
    click_on 'Add to cart'
    select('0', from: 'quantity')

    expect(current_path).to eq('/cart')
    expect(page).to have_content(0)
    expect(page).to have_content(0.00)
  end
end
