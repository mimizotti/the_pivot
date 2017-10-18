class SeedGoldFish

  def self.seed
    category = Category.create(name: "Underwater")

    items = 60.times do
      Item.create(title: Faker::HitchhikersGuideToTheGalaxy.character,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00),
                  image: "http://ichef.bbci.co.uk/wwfeatures/wm/live/1280_640/images/live/p0/29/40/p02940bz.jpg")
      puts "tricked out fish whip seeded"
    end; return nil

  end

end
