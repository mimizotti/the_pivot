require 'rails_helper'

RSpec.describe "As a visitor" do

  let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }

  it "can view all items in a category" do
    category = Category.create(title: "scuba")
    category_2 = Category.create(title: "basketmaking")

    item = category.items.create(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
    item_2 = category.items.create(title: "Fins", store: store, description: "Something to put on your feet.", price: 69.95, image: "http://www.scuba-info.com/images/scuba_gear_fins.jpg")
    item_3 = category_2.items.create(title: "Basket Weaving Reed", store: store, description: "Something to weave your basket", price: 5.00, image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSmgQUfZjdClyn6CqS_Sc_eTm8zLe_bgG4RUnq-sbV2x6LyM1dD9ESyJdGf9AbdnKNYxe2wbRY&usqp=CAE")
    item_4 = category_2.items.create(title: "10 in Basket Base", store: store, description: "Something to base your basket on", price: 9.99, image: "https://files.slack.com/files-pri/T029P2S9M-F731BU32S/base-300x300.jpg")

    visit "/categories/#{category.id}"

    expect(page).to have_content(item.title)
    expect(page).to have_content(item_2.title)

    visit "/categories/#{category_2.id}"

    expect(page).to have_content(item_3.title)
    expect(page).to have_content(item_4.title)
  end
end
