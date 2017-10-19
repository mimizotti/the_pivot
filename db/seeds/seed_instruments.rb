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

   def self.reset
     store = Store.find_by(name: "Jamming Base")
     category = Category.find_by(name: "Musical Instruments")
     if store
       store.items.each do |item|
         item.item_categories.destroy_all
       end
       store.items.destroy_all
       puts "musical instruments deleted"
       store.destroy
       puts "Jamming Base deleted"
     end
     items = category.items
     category.destroy
     puts "Musical Instruments category deleted"
     seed
     category = Category.find_by(name: "Musical Instruments")
     category.items << items
   end


end
