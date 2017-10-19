class SeedTowels

  def self.seed
    category = Category.create(name: "Towels")
    store = Store.create(name: "Dri", description: "Bring a towel for every occasion", image: "logos/dri_logo")
    titles.each do |title|
      if title == "Definitely not a Towel"
        category.items.create(title: title, description: BetterLorem.w, price: rand(100..250), store: store, image: "http://www.behindthevoiceactors.com/_img/chars/towelie-south-park-4.37.jpg")
      end
      category.items.create(title: title, description: BetterLorem.w, price: rand(100..250), store: store)
    end
    puts "towels draped"
  end

  def self.titles
    ["Silk Towel",
     "Tan Wool Towel",
     "Blue Wool Towel",
     "Gray Wool Towel",
     "Red Wool Towel",
     "Egyptian Cotton Towel",
     "Linen Towel",
     "Boucle Suiting Towel",
     "20x24 Bath Towel",
     "10x12 Bath Towel",
     "5x6 Bath Towel",
     "Yellow Wool Snuggie",
     "Green Wool Snuggie",
     "Shag Towel",
     "Comically Small Towel",
     "Definitely not a Towel"]
  end

end
