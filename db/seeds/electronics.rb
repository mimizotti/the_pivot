class SeedElectronics

  def self.seed
    category = Category.create(name: "Electronics")
    category.items = 60.times do
      title = "#{Faker::Hacker.adjective} #{Faker::Hacker.ingverb} #{Faker::Hacker.verb} #{Faker::Hacker.noun}"
      Item.create(title: title,
                  description: Faker::Hacker.say_something_smart,
                  price: rand(100.00..1000.00))
      puts "fancy computer gadjet seeded"
    end; return nil
  end

end
