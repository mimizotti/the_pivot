class SeedTowels

  def self.seed
    category = Category.create(name: "Towels")
    store = Store.create(name: "Dri", description: "Bring a towel for every occasion", image: "logos/dri_logo")
    titles.keys.each do |title|
      category.items.create(title: title, description: BetterLorem.w, price: rand(100..250), image: titles[title], store: store)
    end
    puts "towels draped"
  end

  def self.titles
    {"Silk Towel" => "https://ae01.alicdn.com/kf/HTB1qPdWKFXXXXbGXXXXq6xXFXXXj/Fleece-Mulberry-font-b-silk-b-font-font-b-towel-b-font-33-X-75-cm.jpg",
     "Tan Wool Towel" => "http://cdn6.bigcommerce.com/s-huul4/products/2474/images/2555/Tan__79442.1432240265.500.750.jpg?c=2",
     "Blue Wool Towel" => "http://www.chemicalguys.com/v/vspfiles/photos/MIC32103-2.jpg",
     "Gray Wool Towel" => "https://images-na.ssl-images-amazon.com/images/I/610Z-67cHNL._SL500_AC_SS350_.jpg",
     "Red Wool Towel" => "http://www.chemicalguys.com/v/vspfiles/photos/MIC35103-2.jpg",
     "Egyptian Cotton Towel" => "http://frontgate.scene7.com/is/image/frontgate/b-66288_main?$wfih$",
     "Linen Towel" => "https://www.vivaterra.com/media/catalog/product/cache/1/thumbnail/495x/17f82f742ffe127f42dca9de82fb58b1/v/2/v2532-pure-linen-towel-collection.jpg",
     "Boucle Suiting Towel" => "https://www.fabricland.co.uk/wp-content/uploads/2017/02/P2060045.jpg",
     "20x24 Bath Towel" => "https://img1.etsystatic.com/076/1/10363882/il_340x270.812976303_rwbo.jpg",
     "10x12 Bath Towel" => "https://img1.etsystatic.com/076/1/10363882/il_340x270.812976303_rwbo.jpg",
     "5x6 Bath Towel" => "https://img1.etsystatic.com/076/1/10363882/il_340x270.812976303_rwbo.jpg",
     "Yellow Wool Snuggie" => "https://img.bidorbuy.co.za/image/upload/user_images/510/1066510_110505172246_YELLOW_SNUGGIE_2.jpg",
     "Green Wool Snuggie"=> "https://ruthanneclare.files.wordpress.com/2011/01/slanket.jpg",
     "Shag Towel" => "https://images.coplusk.net/project_images/37689/image/full_towel_shag_rug_2_1259128954.jpg",
     "Comically Small Towel" => "https://s3.amazonaws.com/cdn.aprilcornell.com/images/product/popup/TD4QUED_Blue.jpg",
     "Definitely not a Towel" => "http://www.behindthevoiceactors.com/_img/chars/towelie-south-park-4.37.jpg"}
  end

end
