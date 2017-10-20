class SeedInstruments

  def self.seed
    category = Category.create(name: "Musical Instruments")
    store = Store.create(name: "Jamming Base", description: "For all your music needs", image: "logos/jamming_base_logo")
    values.keys.each do |title|
      title = Faker::Music.instrument
      category.items.create(title: title,
                  description: BetterLorem.w,
                  price: rand(0.10..140.00),
                  image: title[key],
                  store: store)
    end
    puts "musical instrument seeded"
   end

   def self.values
     ["Electric Guitar": "https://i.ebayimg.com/thumbs/images/g/2kUAAOSwRUhY-GhO/s-l225.jpg",
      "Grand Piano": "https://www.steinway.com/.imaging/mte/steinway-us-theme/Small-Square/dam/pianos/Essex/Grands/Square/EGP_173C_black_square-1-.jpg/jcr:content/EGP_173C_black_square.jpg",
      "Saxophone": "https://images-na.ssl-images-amazon.com/images/I/71acsKKEUGL._SY355_.jpg",
      "C Trumpet": "https://media.wwbw.com/is/image/MMGS7/Philadelphia-Series-Stradivarius-C-Trumpet-C180SL229PC-Silver/464028000232000-00-500x500.jpg",
      "Alto Trumpet": "https://images.musicstore.de/images/1600/yamaha-ytr-4435-ii-bb-c-trumpet-_1_BLA0003138-000.jpg",
      "Flugelhorn": "https://media.wwbw.com/is/image/MMGS7/AC154-1-0-Professionel-Bb-Flugelhorn-Silver-Rose-Brass-Bell/463523000232020-00-500x500.jpg",
      "Tuba": "http://cdn.shopify.com/s/files/1/0846/2504/products/yamaha-ycb-621-cc-3-4-tuba_grande.jpg?v=1466477756",
      "Sousaphone": "https://images-na.ssl-images-amazon.com/images/I/71%2BNemW6H4L._SY355_.jpg",
      "Ukulele": "http://media.guitarcenter.com/is/image/MMGS7/Hawaiian-Soprano-Ukulele/519269000000000-00-500x500.jpg",
      "Acoustic Drum Set": "https://i.pinimg.com/736x/5f/69/12/5f69121238fe6d3b70c7faa4c4efa201--kids-drum-set-acoustic-drum.jpg",
      "Bongos": "http://media.musiciansfriend.com/is/image/MMGS7/CP221-Tunable-Bongos-with-Bag/440683000000000-00-500x500.jpg",
      "Double Kick Pedal": "http://www.trapsdrums.com/wp-content/uploads/2015/01/double-kick-pedal-3.png",
      "Crash Cymbal": "http://media.musiciansfriend.com/is/image/MMGS7/AAX-Recording-Crash-Cymbal-16-in./J26357000001000-00-500x500.jpg",
      "Ride Cymbal": "https://s3.amazonaws.com/images.static.steveweissmusic.com/products/images/uploads/1128031_34146_popup.jpg",
      "Latin Toms": "http://themusicshopwesternsuburbs.com.au/bmz_cache/3/32b047fbe90b3c6aacd2388665198437.image.413x550.jpg",
      "Nylon Guitar Strings": "http://www.guitarlessonspoway.com/wp-content/uploads/2012/11/nylon-classical-guitar-strings.jpg",
      "Titanium Guitar Strings": "https://lindoguitars.com/wp-content/uploads/2015/07/0237.jpg",
      "Acoustic Guitar": "https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/178532-L-LO.jpg",
      "Steel Guitar": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Lapstyle.jpg/220px-Lapstyle.jpg",
      "100W Amp": "https://www.projectmusic.net/ekmps/shops/projectmusic/images/fender-champion-100-guitar-amp-15649-p.jpg",
      "200W Amp": "http://media.musiciansfriend.com/is/image/MMGS7/GA-212-2X12-200W-Guitar-Combo-Amplifier-Black/H83971000001000-00-500x500.jpg",
      "Electronic Drum Set": "http://media.musiciansfriend.com/is/image/MMGS7/DD5X-Electronic-Drum-Kit/J06657000000000-00-500x500.jpg",
      "Guitar Slide": "https://az58332.vo.msecnd.net/e88dd2e9fff747f090c792316c22131c/Images/Products23973-1200x1200-292259.jpg",
      "Guitar Picks": "https://images-na.ssl-images-amazon.com/images/I/716okGFUlXL._SL1500_.jpg",
      "Animal Skin Djembe": "https://i.ebayimg.com/images/g/1KsAAOSwTA9X77DL/s-l300.jpg",
      "Black Fender Stratocaster": "http://media.guitarcenter.com/is/image/MMGS7/Special-Edition-Standard-Stratocaster-Electric-Guitar-Black/H64303000001000-00-500x500.jpg",
      "Electric Keyboard": "https://images-na.ssl-images-amazon.com/images/I/91NCxoZe7wL._SL1500_.jpg",
      "Midi Launchpad": "https://www.decks.co.uk/productimages/l-76024-m-25821-en-pr-5.jpg",
      "Midi Drums Guitar Attachment": "https://i.ytimg.com/vi/eJFfnTkyj-g/maxresdefault.jpg",
      "Microphone": "https://www.dawsons.co.uk/media/catalog/product/cache/1/image/1200x/6b9ffbf72458f4fd2d3cb995d92e8889/s/h/shure-55-sh-2-vintage.jpg",
      "Electric Bass Guitar": "http://media.guitarcenter.com/is/image/MMGS7/TRBX174EW-Mango-Wood-4-String-Electric-Bass-Guitar-Natural/J18947000001000-00-500x500.jpg",
      "Double Neck Guitar": "https://d1aeri3ty3izns.cloudfront.net/media/25/251549/1200/preview.jpg",
      "12 String Guitar": "http://media.guitarcenter.com/is/image/MMGS7/G-Series-GD30CE-12-Dreadnought-12-String-Acoustic-Electric-Guitar-Natural/H99532000001000-00-500x500.jpg",
      "Acoustic Bass Guitar": "http://media.guitarcenter.com/is/image/MMGS7/AEB5E-Acoustic-Electric-Bass-Black/620445000001000-00-290x290.jpg",
      "Steel Bass Strings": "http://www.bassstringsonline.com/assets/images/productimages/rotosound/funkmaster_string.jpg",
      "Effects Board": "http://derringers.com.au/media/product/f21/boss-me20b-bass-multiple-effects-pedal-board-7ad.jpg",
      "Cowbell": "https://images-na.ssl-images-amazon.com/images/I/81-Wesqi7vL._SY355_.jpg",
      "Festival Speaker": "https://operatingevents.files.wordpress.com/2012/12/martin-line-array-festival-speaker-7-metre-pyramid-tower.jpg",
      "Deadmau5 Head": "http://www.lovethispic.com/uploaded_images/deadmau5_head.jpg",
      "Amp Cables": "https://images-na.ssl-images-amazon.com/images/I/31W7y9QHx%2BL.jpg",
      "Brass Cleaning Equipment": "http://www.house-cleaning-howtos.com/image-files/brass-cleaner.jpg",
      "DJ Turntables": "https://wallpapercave.com/wp/r1kmqU0.jpg",
      "Electric Cello": "https://cdn.fiddlershop.com/image/cache/catalog/data/Products/CECO/CECO-2-Front-500x500.jpg",
      "Acoustic Cello": "http://media.musiciansfriend.com/is/image/MMGS7/Sonata-Series-Hybrid-Cello-Outfit-3-4-Size/J11720000001000-00-500x500.jpg",
      "Electric Violin": "http://images.samash.com/sa/CRE/CREV55OFX-P.fpx?cvt=jpg",
      "Acoutstic Violin": "http://media.guitarcenter.com/is/image/MMGS7/My-Violin-Starter-Pack-1-4-Size/H73551000001000-00-500x500.jpg",
      "Steel Violin Strings": "http://i0.wp.com/stringsmagazine.com/wp-content/uploads/2016/01/Pilat-Paul-Violin-1.jpg?resize=572%2C324",
      "Cowhide Violin Strings": "https://ae01.alicdn.com/kf/HTB1nblsIXXXXXXuXXXXq6xXFXXX1/STRADPET-Violin-Neckguard-set-Guarneri-Style-Chinrest-with-Titanium-Chinrest-Clamps-for-4-4-violin-Genuine.jpg",
      "Steel Cello Strings": "https://reverb-res.cloudinary.com/image/upload/v1452705672/cello-663563_1280_gmabal.jpg",
      "Cowhide Cello Strings": "https://images-na.ssl-images-amazon.com/images/I/61nKXadWq9L._SL1001_.jpg"
      ]
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
