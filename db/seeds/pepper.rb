class SeedPepper

  def seed
    store = Store.create(name: "Fuko", description: "Feast your eyes on the spiciest peppers the world has to offer", image: "http://teriacha.com/wp-content/uploads/2016/09/Pepper.png")
    32.times do |i|
      28.times do |i|
        store.items.create(title: titles[i].upcase, description: BetterLorem.w, price: rand(100..250))
      end
      store.items.create(title: "Black Pepper#{i}", description: "The most peppery", price: 999)
    end
  end

  def titles
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
     "guyana pepper"]
  end




end
