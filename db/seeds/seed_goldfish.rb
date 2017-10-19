class SeedGoldfish

  def self.seed
    store = Store.create(name: "Goldfish Pals", description: "Fishy friends on demand", image: "logos/goldfish_pals_logo")
    category = Category.create(name: "Underwater Supply")
    60.times do
      title = Faker::HitchhikersGuideToTheGalaxy.character
      category.items.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00), store: store)
    end
    puts "tricked out fish whips seeded"
  end

  def self.reset
    store = Store.find_by(name: "Goldfish Pals")
    category = Category.find_by(name: "Underwater Supply")
    if store
      store.items.each do |item|
        item.item_categories.destroy_all
      end
      store.items.destroy_all
      puts "fishy friends deleted"
      store.destroy
      puts "Goldfish Pals deleted"
    end
    items = category.items
    category.destroy
    puts "Underwater Supply deleted"
    seed
    category = Category.find_by(name: "Underwater Supply")
    category.items << items
  end

end
