require "rails_helper"

feature "Unauthenticated user" do
  context "visits items index page" do
    it "and sees all items" do
      items = create_list(:item, 5)
      item = items.first
      visit "/items"

      expect(page).to have_css(".col-sm-4", 5)
      expect(page).to have_content(item.title)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.price)
    end
  end

  context "visits an indivdual item page" do
    it "sees the item information" do
      item = create(:item)
      visit "/items/#{item.id}"

      expect(page).to have_content(item.title)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.price)
    end
  end

  context "visits all categories page" do
    it "it sees all categories" do
      categories = create_list(:category, 5)
      category = categories.first
      visit "/categories"

      expect(page).to have_css(".col-md-2", 5)
      expect(page).to have_link(category.title)
    end
  end

  context "visits and individual category page" do
    it "sees the items for that category" do
      category = create(:category)
      items = create_list(:item, 5)
      items.each do |item|
        ItemCategory.create(item: item, category: category)
      end
      visit "/#{category.slug}"

      expect(page).to have_css(".item", count: 5)
      expect(page).to have_link(items.first.title)
      expect(page).to have_link(items.last.title)
      expect(page).to have_content(items.first.description)
      expect(page).to have_content(items.last.description)
    end
  end
end
