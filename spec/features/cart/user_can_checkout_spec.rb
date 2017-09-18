RSpec.feature "user can checkout" do
  scenario "from the cart path" do
    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
    category = Category.create(name: "scuba")
    item_1 = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
    item_2 = category.items.create!(title: "Tank", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit items_path

    within(".item-#{item_1.id}") do
      find(:css, ".add-to-cart").click
    end

    within(".item-#{item_2.id}") do
      find(:css, ".add-to-cart").click
    end

    find(:css, ".cart").click

    expect(current_path).to eq(cart_path)
    expect(page).to have_content(item_1.title)
    expect(page).to have_content(item_2.title)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit "/dashboard"

    expect(page).to have_content("Logged in as #{user.username}")
    expect(page).to have_content user.username

    find(:css, ".cart").click

    click_link "Checkout"

    expect(current_path).to eq(orders_path)
    expect(page).to have_content("Order was successfully placed")
    expect(page).to have_content("order #{user.orders.last.id}")

    find(:css, ".cart").click

    expect(page).to_not have_content(item_1.title)
    expect(page).to_not have_content(item_2.title)
  end

  scenario "visitor cannot checkout" do

    category = Category.create(name: "scuba")
    item_1 = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
    item_2 = category.items.create!(title: "Tank", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

    visit items_path

    within(".item-#{item_1.id}") do
      find(:css, ".add-to-cart").click
    end

    within(".item-#{item_2.id}") do
      find(:css, ".add-to-cart").click
    end

    find(:css, ".cart").click

    expect(page).to have_content("Login or Register to checkout")
    expect(page).to_not have_content("Checkout")
  end
end
