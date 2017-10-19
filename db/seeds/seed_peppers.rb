class SeedPeppers

  def self.seed
    category = Category.create(name: "Peppers")
    store = Store.create(name: "Fuko", description: "Feast your eyes on the spiciest peppers the world has to offer", image: "logos/fuko_logo")
    titles.keys.each do |title|
      category.items.create(title: title.upcase, description: BetterLorem.w, price: rand(100..250), image: titles[title] store: store)
    end
    store.items.create(title: "Black Pepper", description: "The most peppery", price: 999)
    puts "peppers planted"
  end

  def self.titles
    {"naga viper" => "https://cdn.shopify.com/s/files/1/0915/1060/products/Naga-Viper-hot-pepper-4-pepper-joes.jpg?v=1462325805",
     "trinidad moruga scorpion" => "https://ded8b07dd9e637888fc2-e87978aaae5cf97349d88697fd53e4c9.ssl.cf1.rackcdn.com/38040_300.jpg",
     "carolina reaper" => "https://images-na.ssl-images-amazon.com/images/I/71RBaImg-1L._SX355_.jpg",
     "ghost pepper" => "https://www.cayennediane.com/wp-content/uploads/Ghost-Peppers.jpg",
     "scotch bonnet" => "https://gfb.global.ssl.fastly.net/wp-content/uploads/2015/09/SCOTCH-BONNET-1.png",
     "serrano" => "https://1rxbfb2hflyo2jt6jd3f6sjr-wpengine.netdna-ssl.com/wp-content/uploads/2014/09/PP636_Sureno_IMG_2998.jpg",
     "datil pepper" => "https://www.cayennediane.com/wp-content/uploads/datil.jpg",
     "habanero pepper" => "https://parkseed.com/images/xxl/05641-pk-p1.jpg",
     "cayenne pepper" => "https://smhttp-ssl-17653.nexcesscdn.net/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/p/e/pepper-cayenne-blend.jpg",
     "jalapeno pepper" => "https://images-realfoodtorontoc.netdna-ssl.com/D.cache.large/Jalapeno-Pepper.jpg",
     "anaheim chili" => "http://whiteharvestseed.com/media/catalog/product/cache/1/image/500x500/17f82f742ffe127f42dca9de82fb58b1/a/n/anaheim1.jpg",
     "sriracha pepper" => "http://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/24171202/ING-fresno-chiles-thumb1x1.jpg",
     "chipotle" => "https://static.thespicehouse.com/images/file/1145/large_square_Morita_Black-and-Red_Whole_Dried_Chipotle_Chile_Peppers__close.jpg",
     "giardiniera mix" => "https://i0.wp.com/memoriediangelina.com/wp-content/uploads/2016/08/Giardiniera-8.jpg?resize=534%2C800",
     "aleppo pepper" => "http://www.fordsfieryfoodsandplants.com/peppers/image/cache/catalog/Aleppo/005-500x500.JPG",
     "pimento pepper" => "http://d13z1xw8270sfc.cloudfront.net/origin/13307/pimentol.pict.jpg",
     "banana pepper" => "https://bonnieplants.com/wp-content/uploads/hot-banana-pepper.jpg",
     "guajillo chili" => "http://www.tomatogrowers.com/images/9638.jpg",
     "malagueta pepper" => "https://www.pepperscale.com/wp-content/uploads/2013/07/malagueta-pepper_lg.jpeg",
     "bhut jolokia" => "http://www.pepperseeds.eu/media/catalog/product/cache/2/image/6231006839780215c5675ad11939ddec/c/h/chili_seeds_bhut_jolokia.jpg",
     "dragon's breath" => "https://1a1z1e22ozx83bgjsz17c6ba-wpengine.netdna-ssl.com/wp-content/uploads/2017/09/Dragons-Breath-Pepper-640x640.jpg",
     "komodo dragon" => "https://www.cayennediane.com/wp-content/uploads/Komodo-Dragon.jpg",
     "barrackpore" => "http://www.pepperseeds.eu/media/catalog/product/cache/2/image/6231006839780215c5675ad11939ddec/c/h/chili_seeds_-_7_pod_barrackpore.jpg",
     "desert naga pepper" => "https://i.pinimg.com/736x/96/f2/2a/96f22a724f230ec0483de3b6b0110bc2--green-chilli-chili.jpg",
     "naga monich pepper" => "http://www.pepperseeds.eu/media/catalog/product/cache/2/image/6231006839780215c5675ad11939ddec/n/a/naga_mo.jpg",
     "chocolate habanero" => "https://www.rareseeds.com/assets/1/14/DimRegular/pepper-chocolate-habanero-HPP136-IMG_4397.jpg",
     "devil's tongue" => "https://d1nw62gticy6e9.cloudfront.net/uploads/Devils-Tongue-Pepper-Seeds-600x600.jpg",
     "white bullet" => "https://s-media-cache-ak0.pinimg.com/originals/16/aa/37/16aa372f72fee90f03d0f5d558bf9ce7.jpg",
     "guyana pepper" => "https://www.cayennediane.com/wp-content/uploads/Wiri-Wiri-Pepper.jpg",
     "infinity pepper" => "http://www.semillas.de/pepper_fruits/7pot_infinity.jpg",
     "red savina habanero" => "https://images-na.ssl-images-amazon.com/images/I/41RIXpfemqL.jpg",
     "chiltepin pepper" => "https://www.totallytomato.com/PIF/03024/ChiltepinPepper.jpg",
     "charleston hot pepper" => "https://cdn.shopify.com/s/files/1/0915/1060/products/Charleston-600-Charleston-Pepper.jpg?v=1457556064",
     "byadgi chili" => "https://5.imimg.com/data5/DX/WE/MY-2115436/byadgi-chilli-250x250.jpg"}
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
