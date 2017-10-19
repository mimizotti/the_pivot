class SeedGoldfish

  def self.seed
    store = Store.create(name: "Goldfish Pals", description: "Fishy friends on demand", image: "gold_fish")
    category = Category.create(name: "Underwater Supply")
    60.times do
      title = Faker::HitchhikersGuideToTheGalaxy.character
      category.items.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00), store: store)
    end
    puts "tricked out fish whips seeded"
  end

end
