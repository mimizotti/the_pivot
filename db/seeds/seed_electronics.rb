class SeedElectronics

  def self.seed
    store = Store.create(name: "Hipster Electronics", description: "All the gadjets you didn't know you needed, for all the problems you didn't know you had", image: "logos/hipster_electronics_logo")
    category = Category.create(name: "Electronics")
    60.times do
      title = "#{Faker::Hacker.adjective} #{Faker::Hacker.ingverb} #{Faker::Hacker.verb} #{Faker::Hacker.noun}"
      category.items.create(title: title,
                  description: Faker::Hacker.say_something_smart,
                  price: rand(100.00..1000.00),
                  image: gadjets[rand(0..29)],
                  store: store)
    end
    puts "fancy computer gadjets seeded"
  end

  def self.gadjets
    ["https://www.theupsstore.com/Image%20Library/theupsstore/general-content/gc3/packing-electronics/gc3_packing-electronics-04.jpg",
      "https://pisces.bbystatic.com/BestBuy_US/store/ee/2017/com/pr/SOL-12375-ComputingAllOffersRedesign/flx_SOL-12375-Desktops.jpg;maxHeight=460;maxWidth=460",
      "https://i.ytimg.com/vi/TmprPSZFBpk/maxresdefault.jpg",
      "http://pop.h-cdn.co/assets/17/42/640x640/1508271661-square-1508255297-microsoft-surface-book-2.jpg",
      "https://www.thesource.ca/medias/L2-CategoryImage-Gadget.jpg?context=bWFzdGVyfGltYWdlc3wyODM5M3xpbWFnZS9qcGVnfGltYWdlcy9oNTkvaDczLzg4Mzk4NjEwNDMyMzAuanBnfDY2M2E2MWQxNmZmZjlmYWQ5MDNlMzIzOTUwY2MyM2YwNzgyZjZkNmYwMzI3ZTM3MjllMGRmZWVhZGE4M2VhZTQ",
      "https://i.pinimg.com/736x/2e/e1/e7/2ee1e75ed0317cb0e6b4fa38194b68fe--dj-sound-music-gadgets.jpg",
      "http://www.luckies.co.uk/wp-content/uploads/2017/03/gadgets_for_men.jpg",
      "http://www.thinkgeek.com/images/products/frontsquare/imro_led_potion_lamp.gif",
      "http://www.yankodesign.com/images/design_news/2017/09/vasqo_1-510x340.jpg",
      "https://cdn.shopify.com/s/files/1/0117/5372/products/AFB01ROW_a_grande_edc5e1db-342d-401c-b236-ddd29fef08eb_large.jpg?v=1473568153",
      "https://i0.wp.com/www.yugatech.com/wp-content/uploads/2017/08/Home-Assistant-Pack.jpg?fit=128%2C96?resize=160%2C160",
      "https://media.wired.com/photos/5932447452d99d6b984dd5f9/master/w_660,c_limit/watch-design-inline.jpg",
      "https://i.pinimg.com/736x/26/d3/7e/26d37ecf1b3114ec4569596247bb0e8e--coolest-gadgets-awesome-gadgets.jpg",
      "https://www.bp.com/content/dam/bp/images/technology/1-1/bp-technology-experience.jpg",
      "https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?h=350&auto=compress&cs=tinysrgb",
      "https://www.gannett-cdn.com/-mm-/8ef26ec0bc4a7b2f154de24c26500310627b191e/c=120-0-553-325&r=x404&c=534x401/local/-/media/2017/06/25/USATODAY/usatsports/getty-semiconductor_large.jpg",
      "http://108.179.210.38/~glotech3/wp-content/uploads/2017/02/tablet-pc.jpg",
      "https://cdn2.hubspot.net/hubfs/330950/blog-files/technology-512210_960_720.jpg",
      "http://static3.businessinsider.com/image/50c7a187eab8ea3d7d00000f/how-far-can-technology-advance-before-it-takes-over-the-world.jpg",
      "http://f.fwallpapers.com/images/computer-technology.jpg",
      "http://smarterware.org/wp-content/uploads/2016/04/tech-assets.jpg",
      "https://www.eisd.net/cms/lib/TX01001208/Centricity/Domain/89/Technology%20Pic.jpg",
      "http://bsmedia.business-standard.com/_media/bs/img/article/2016-09/28/full/1475085267-9225.jpg",
      "http://static6.businessinsider.com/image/58fe6b0e0ba0b896008b5bba/i-switched-from-the-iphone-7-to-googles-new-phone-and-couldnt-be-happier--heres-why.jpg",
      "https://www.android.com/static/2016/img/phones/phone-4_1x.jpg",
      "https://ae01.alicdn.com/kf/HTB1bGf4JVXXXXXSXVXXq6xXFXXXm/4-Sim-Cards-4-Standby-Mobile-Phone-C8-2-8-Big-Screen-Outside-FM-Radio-Cheap.jpg_350x350.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/61TjFuIP%2BRL._SL1000_.jpg",
      "https://www.essential.com/assets/images/static/mobile_cam_mounted.jpg",
      "https://ss7.vzw.com/is/image/VerizonWireless/home_phone_connect_f256vw?fmt=jpg&bgc=f6f6f6",
      "http://media.techeblog.com/images/kittenscomputer.jpg",
      "https://qph.ec.quoracdn.net/main-qimg-4c4a1f8f60483e9786801c579f663248"
    ]
  end

  def self.reset
    store = Store.find_by(name: "Hipster Electronics")
    category = Category.find_by(name: "Electronics")
    if store
      store.items.each do |item|
        item.item_categories.destroy_all
      end
      store.items.destroy_all
      puts "electronic items deleted"
      store.destroy
      puts "Hipster Electronics deleted"
    end
    items = category.items
    category.destroy
    puts "Electronics category deleted"
    seed
    category = Category.find_by(name: "Electronics")
    category.items << items
  end

end
