require 'rails_helper'

RSpec.describe "Visitor has an item in cart" do

  let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }

  it "and increases the quantity in cart" do
    category = Category.create(title: "scuba")
    item = category.items.create(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit "/categories/#{category.id}"
    click_on 'Add to Cart'

    visit '/cart'

    expect(page).to have_content(item.title)
    expect(page).to have_content(1)
    expect(page).to have_content(49.95)

    click_on '+'

    expect(current_path).to eq('/cart')
    expect(page).to have_content(2)
    expect(page).to have_content(99.90)
  end

  it "and decreases the quantity in cart" do
    category = Category.create(title: "scuba")
    item = category.items.create(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit "/categories/#{category.id}"
    click_on 'Add to Cart'

    visit '/cart'

    click_on '-'

    expect(current_path).to eq('/cart')
    expect(page).to have_content(0)
    expect(page).to have_content(0.00)
  end
end
