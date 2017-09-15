require 'rails_helper'

RSpec.describe "An item can be retired" do
  it "and when a user views it they cannot add it to cart" do
    item_1 = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, status: 1, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit item_path(item_1)

    expect(page).to have_content(item_1.title)
    expect(page).to have_content(item_1.description)
    expect(page).to have_content(item_1.price)
    expect(page).to_not have_content("Add to Cart")
    expect(page).to have_content("Item Retired")
  end
end