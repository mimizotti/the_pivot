class SeedGoldfish

  def self.seed
    category = Category.create(name: "Underwater Supply")
    suckr = ImageSuckr::GoogleSuckr.new
    category.items = 60.times do
      title = Faker::HitchhikersGuideToTheGalaxy.character
      Item.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00),
                  image: suckr.get_image_url({"q" => "goldfish"}))
      puts "tricked out fish whip seeded"
    end; return nil

  end

end
