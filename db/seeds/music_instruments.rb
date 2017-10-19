class SeedInstruments

  def self.seed
    category = Category.create(name: "Musical Instruments")
    store = Store.create(name: "Jamming Base", description: "For all your music needs", image: "jamming_base")
    60.times do
      title = Faker::Music.instrument
      category.items.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00), store: store)
    end
    puts "musical instrument seeded"
   end

end
