class SeedPeppers

  def self.seed
    category = Category.create(name: "Peppers")
    store = Store.create(name: "Fuko", description: "Feast your eyes on the spiciest peppers the world has to offer", image: "logos/fuko_logo")
    titles.each do |title|
      category.items.create(title: title.upcase, description: BetterLorem.w, price: rand(100..250), store: store)
    end
    store.items.create(title: "Black Pepper#{i}", description: "The most peppery", price: 999)
    puts "peppers planted"
  end

  def self.titles
    ["naga viper",
     "trinidad moruga scorpion",
     "carolina reaper",
     "ghost pepper",
     "scotch bonnet",
     "serrano",
     "datil pepper",
     "habanero pepper",
     "cayenne pepper",
     "jalapeno pepper",
     "anaheim chilli",
     "sriracha pepper",
     "chipotle",
     "giardinera mix",
     "aleppo pepper",
     "pimento pepper",
     "banana pepper",
     "guajillo chilli",
     "malaguenta pepper",
     "bhut jolokia",
     "dragon's breath",
     "komodo dragon",
     "barrackpore",
     "desert naga pepper",
     "naga monich pepper",
     "chocolate habanero",
     "devil's tongue",
     "white bullet",
     "guyana pepper",
     "infinity pepper",
     "red savina habanero",
     "wiri wiri pepper",
     "chiltepin pepper",
     "charleston hot pepper",
     "byadgi chilli"]
  end

  def self.reset
    store = Store.find_by(name: "Fuko")
    category = Category.find_by(name: "Peppers")
    if store
      store.items.each do |item|
        item.item_categories.destroy_all
      end
      store.items.destroy_all
      puts "electronic items deleted"
      store.destroy
      puts "Fuko deleted"
    end
    items = category.items
    category.destroy
    puts "Peppers category deleted"
    seed
    category = Category.find_by(name: "Peppers")
    category.items << items
  end

end
