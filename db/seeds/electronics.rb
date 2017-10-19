class SeedElectronics

  def self.seed
    store = Store.create(name: "Hipster Electronics", description: "All the gadjets you didn't know you needed, for all the problems you didn't know you had", image: "hipster_electronics")
    category = Category.create(name: "Electronics")
    60.times do
      title = "#{Faker::Hacker.adjective} #{Faker::Hacker.ingverb} #{Faker::Hacker.verb} #{Faker::Hacker.noun}"
      category.items.create(title: title,
                  description: Faker::Hacker.say_something_smart,
                  price: rand(100.00..1000.00), store: store)
    end
    puts "fancy computer gadjets seeded"
  end

end
