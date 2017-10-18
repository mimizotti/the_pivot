class SeedInstruments

  def self.seed
    category = Category.create(name: "Musical Instruments")

    items = 60.times do
      Item.create(title: Faker::Music.instrument,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00),
                  image: "https://www.vintageandrare.com/blog/wp-content/uploads/2013/04/Lospennato1.jpg")
      puts "musical instrument seeded"
    end; return nil
   end

end
