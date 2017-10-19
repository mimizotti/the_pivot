class SeedInstruments

  def self.seed
    category = Category.create(name: "Musical Instruments")
    store = Store.create(name: "Musical Instruments", description: "For all your music needs")
    items = []
    60.times do
      title = Faker::Music.instrument
      items << Item.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00))
    end
    category.items = items
    store.items = items
    puts "musical instrument seeded"
   end

end
