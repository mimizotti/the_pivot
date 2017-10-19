class SeedGoldfish

  def self.seed
    store = Store.create(name: "Goldfish Pals", description: "Fishy friends on demand", image: "logos/goldfish_pals_logo")
    category = Category.create(name: "Underwater Supply")
    30.times do
      title = Faker::HitchhikersGuideToTheGalaxy.character
      category.items.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00),
                  image: fish[rand(0..11)],
                  store: store)
    end
    puts "tricked out fish whips seeded"
  end

  def self.fish
    ["https://upload.wikimedia.org/wikipedia/commons/e/e9/Goldfish3.jpg",
     "http://media.istockphoto.com/photos/goldfish-picture-id115075364?k=6&m=115075364&s=612x612&w=0&h=nqGhRRA2lU3ZWdcBQ22JIFfqGYIQPFWTe6Un3SpNxc8=",
     "http://www.petmd.com/sites/default/files/goldfish-swimmingtoward_285011336_0.jpg",
     "http://i.telegraph.co.uk/multimedia/archive/03353/goldfish_3353046b.jpg",
     "http://howtotakecareofgoldfish.com/wp-content/uploads/2012/01/goldfish2.jpg",
     "https://cmeimg-a.akamaihd.net/640/cme/cuteness_data/s3fs-public/diy_blog/Do-Goldfish-Sleep.jpg",
     "http://www.about-goldfish.com/images/Comet_Goldfish.jpg",
     "https://cdn.theatlantic.com/assets/media/mt/national/goldfish-thumb.jpg",
     "https://www.caringpets.org/wp-content/uploads/take-care-of-a-goldfish.jpg",
     "https://www.caringpets.org/wp-content/uploads/fantail-goldfish.jpg",
     "http://www.desktopgoldfish.com/assets/img/sections/large/Oranda_Goldfish.jpg",
     "https://i.pinimg.com/736x/a9/d2/75/a9d275d885c0195503871fc829a17ad8--japanese-goldfish-japanese-koi.jpg",
     "https://i.ytimg.com/vi/n42YzuSVvSs/hqdefault.jpg"]
  end

  def self.reset
    store = Store.find_by(name: "Goldfish Pals")
    category = Category.find_by(name: "Underwater Supply")
    if store
      store.items.each do |item|
        item.item_categories.destroy_all
      end
      store.items.destroy_all
      puts "fishy friends deleted"
      store.destroy
      puts "Goldfish Pals deleted"
    end
    items = category.items
    category.destroy
    puts "Underwater Supply deleted"
    seed
    category = Category.find_by(name: "Underwater Supply")
    category.items << items
  end

end
