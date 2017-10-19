class SeedGoldfish

  def self.seed
    category = Category.create(name: "Underwater Supply")
    category.items = 60.times do
      title = Faker::HitchhikersGuideToTheGalaxy.character
      Item.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00))
    end
    puts "tricked out fish whips seeded"; return nil

  end

end
