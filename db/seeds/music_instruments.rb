class SeedInstruments

  def self.seed
    category = Category.create(name: "Musical Instruments")
    category.items = 60.times do
      title = Faker::Music.instrument
      Item.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00))
    end
    puts "musical instrument seeded"; return nil
   end

end
