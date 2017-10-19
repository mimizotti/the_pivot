Dir[File.dirname(__FILE__) + '/seeds/*.rb'].each {|file| require file }

SeedInstruments.seed
SeedGoldfish.seed

user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "bonjovirules")
user_2 = User.create(first_name: "Styx", last_name: "Rules", address: "123 man in the wilderness", email: "renegade@amazing.com", username: "styxrules", password: "styxrules", role: "admin")
store_1 = Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png")
category_1 = Category.create(name: "scuba", title: "Scuba Diving Supplies")

item_1 = Item.create(title: "Yellow Tank", description: "This lovely tank has a tiny scuba diver to accompany you on your weaving adventures.  With him, you're never alone, even if you are totally, utterly deserted.", price: 45.00, image: "yellow_tank.jpg")
item_2 = Item.create(title: "Basic Mask", description: "This is a basic mask, don't expect much else from it.", store: store_1, price: 29.95, image: "basicmask.jpg")
item_3 = Item.create(title: "Black and Red Mask", description: "Similar to the basic mask, but with a little bit more flare!", store: store_1, price: 34.95, image: "blackredmask.jpg")
item_4 = Item.create(title: "Black SUPER Vest with Hookups", description: "If you don't want to concern yourself with the details of scuba diving, but want to scuba dive, this is the product for you!", store: store_1, price: 495.95, image: "blacksupervestwithhookups.jpg")
item_5 = Item.create(title: "Scuba Vest with Hookups (Grey)", description: "This vest is by no means SUPER, but you can still be lazy, as you don't have to deal with any of that pesky 'gear', people keep talking about.", store: store_1, price: 450.00, image: "bluevestwithhookups.jpg")
item_6 = Item.create(title: "Double Tank", description: "Wanna do a lot of weaving? Great, you can stay under water even longer.  Make sure you booked the nanny for a few extra hours!", store: store_1, price: 150.00, image: "doubletank.png")
item_7 = Item.create(title: "Grey Vest", description: "Build your own adventure with this vest, minus all the attachments!  Wow! You're an explorer!", store: store_1, price: 99.95, image: "grey_vest.jpg")
item_8 = Item.create(title: "Handheld Tanks (Tiny - Set of 3)", description: "Do you need to fix a small error, but don't want the hassle of a full size tank? Maybe you're running out of air! Either way, these tiny companions are essential!", store: store_1, price: 69.95, image: "handheldsmalltanks.jpg")
item_9 = Item.create(title: "Hot Pink Tank", description: "Visibility WILL NOT be an issue. Make sure everyone, within 400 miles, can see how amazing your are with your weaving!", store: store_1, price: 59.95, image: "pinktank.png")
item_10 = Item.create(title: "Red Tank", description: "It's a tank, it's red.  There you go.", store: store_1, price: 64.95, image: "redtank.png")
item_11 = Item.create(title: "Scuba Vest with Attachments (Blue)", description: "This vest is by no means SUPER, but you can still be lazy, as you don't have to deal with any of that pesky 'gear', people keep talking about.", store: store_1, price: 450.00, image: "scuba_vest_with_attachments.jpg")
item_12 = Item.create(title: "Normal Tank", description: "This tank lets you breathe under water.  Crazy, right?!", store: store_1, price: 149.95, image: "standardtank.jpg")
item_13 = Item.create(title: "Yellow Tank, Vest, and Hookups", description: "For those of us unconcerned with how we get underwater, and more interested in staying there while not drowning, look no more! This complete set is a ready-to-go setup, just for your type.", store: store_1, price: 550.00, image: "yellowtankwithhookups.png")

category_2 = Category.create(name: "basket", title: "Finished Baskets")

item_14 = Item.create(title: "Basic Basket", description: "Basic Basket for all of your lush supplies.  Woven at a depth of 400ft, while shipwreck diving.", store: store_1, price: 39.95, image: "basicbasket.jpg")
item_15 = Item.create(title: "Twotone Dream Basket", description: "Basket to hold your dreams.  Woven at a depth of 1200ft, in an old diving suit. while fighting hammerheads.", store: store_1, price: 129.95, image: "barrelbasketmultitone.jpg")
item_16 = Item.create(title: "Black Tray Basket", description: "Simple black tray basket.  Woven in a pool.", store: store_1, price: 5.00, image: "blacktraybasket.jpg")
item_17 = Item.create(title: "Basket with Rim", description: "Need a place to put Magazines in your 15th guest bathroom? Look no further!  Woven at a depth of 12ft, while diving for clams.", store: store_1, price: 55.95, image: "multicolorbasket.jpg")
item_18 = Item.create(title: "Picnic Basket", description: "This lovely picnic basket has a notch to sit comfortably on the side of the table.  Woven at a depth of 395ft, while looking for lost treasure.", store: store_1, price: 149.95, image: "picnicbasket.jpg")
item_19 = Item.create(title: "Pronounced Weave Basket", description: "Basket with an intricate, noticeable weave.", store: store_1, price: 79.95, image: "pronouncedweavebasket.jpg")
item_20 = Item.create(title: "Baskets with Extra Weave Arrow Layer (set of 3)", description: "Normal baskets, with a little bit of flare!  Woven at a depth of 200ft, no air tank, free-diving.  Took 4 years.", store: store_1, price: 249.95, image: "setof3baskets.jpg")
item_21 = Item.create(title: "Tall Baskets with Lids (set of 3)", description: "Pier 1 has nothing on you!  Imagine how coordinated you'll look with these pre-matched baskets.  Woven at a depth of 5ft (weaver held her head underwater), with crab claws.", store: store_1, price: 315.99, image: "setof3basketswithlids.jpg")
item_22 = Item.create(title: "Tribal Basket", description: "COLOR! Woven at a depth of 25ft, weaver lost an arm when the colors attracted a barracuda.", store: store_1, price: 249.95, image: "tribalbasket.jpg")
item_23 = Item.create(title: "Waste Basket", description: "It's a wastebasket.  Woven in the shallow end of the kiddy pool, has been properly sanitized post-weave.", store: store_1, price: 29.95, image: "wastebasket.jpg")

category_3 = Category.create(name: "basketmaking", title: "Basket Making Supplies")

item_24 = Item.create(title: "1inch flat Reed", description: "Flat Reed for weaving.  35ft", store: store_1, price: 59.95, image: "1inchflatreed.png")
item_25 = Item.create(title: "8inch Wood Base", description: "8inch wood base, nothing special.", store: store_1, price: 13.95, image: "8inchwoodbase.jpg")
item_26 = Item.create(title: "10inch Wood Base", description: "10inch wood base, nothing special.", store: store_1, price: 16.95, image: "10inchbasewood.jpg")
item_27 = Item.create(title: "Small Blue Ceramic Bases", description: "Tiny bases for tiny baskets.  Short projects for those who can't hold their breath.", store: store_1, price: 14.95, image: "bluesmallceramicbasketbases.jpg")
item_28 = Item.create(title: "Ceramic Starfish Base", description: "This is the most elegant vase you've ever laid eyes on. It's almost assured that anything you come up with, weaving-wise, to sit atop this gorgeous piece isn't worthy of the pedestal.  Good Luck!", store: store_1, price: 650.00, image: "ceramicstarfishbase.jpg")
item_29 = Item.create(title: "Half-Inch Flat Reed", description: "Half-Inch flat reed, great for weaving your standard wastebasket. 100ft", store: store_1, price: 69.95, image: "halfinchflatreed.jpg")
item_30 = Item.create(title: "Long Palm Frond (set of 6)", description: "Reconnect with nature, enjoy underwater basket weaving the way it was originally, 1000's of years ago.", store: store_1, price: 14.95, image: "longpalmfrond.jpg")
item_31 = Item.create(title: "Multi-colored Small Ceramic Bases", description: "They're tiny, but they can pack a punch...of color!  Small projects for days when your nanny can't take the kids for long.", store: store_1, price: 45.95, image: "multicoloredceramicsmallbases.jpg")
item_32 = Item.create(title: "Wooden Oval Base", description: "Wooden oval base, about the size of Steven Colbert's head.", store: store_1, price: 23.95, image: "ovalbase.jpg")
item_33 = Item.create(title: "Wooden Rectangular Base", description: "Wooden, rectangular base. About the side of a small axe.", store: store_1, price: 23.95, image: "rectanglebase.jpg")
item_34 = Item.create(title: "Round Basket Cord", description: "Cord for weaving details on the outside of your basket.  Works equally well in, and out, of water, but out of water would be cheating! 200ft", store: store_1, price: 33.95, image: "round_baskey_cord.jpg")
item_35 = Item.create(title: "Round Reed", description: "300ft", store: store_1, price: 34.95, image: "roundcordextralong.jpg")
item_36 = Item.create(title: "Round Palm Frond (set of 6)", description: "Reconnect with nature, enjoy underwater basket weaving the way it was originally, 1000's of years ago.", store: store_1, price: 14.95, image: "roundpalmfrond.jpg")
item_37 = Item.create(title: "Twine", description: "You could leave your basket plain, but then you'd be boring.  Buy this twine for weaving beautiful details! Don't be boring...", store: store_1, price: 45.95, image: "twineforaccents.jpg")
item_38 = Item.create(title: "Extra Thick Reed", description: "Building a framework for an industrial basket? Present and accounted for, this is your reed!  Can stand up to a Category 5 hurricane (tested)!  Unfortunately, our tester was not so lucky.", store: store_1, price: 67.96, image: "xtrathickreed.jpg")

category_4 = Category.create(name: "snorkel", title: "Snorkeling Gear")

item_39 = Item.create(title: "Black Snorkel", description: "It's a snorkel, it's black, you should purchase this one if you don't have much of a personality.", store: store_1, price: 19.95, image:"blacksnorkel.jpg")
item_40 = Item.create(title: "Blue Snorkel", description: "It's a snorkel, it's blue, you should purchase this one if you have a little bit of a personality.", store: store_1, price: 21.95, image: "bluesnorkel.jpg")
item_41 = Item.create(title: "Orange Snorkel", description: "It's a snorkel, it's orange, you should purchase this one if you have a little bit of a personality.  Has a strap for your head.  All the cool kids are doing it.", store: store_1, price: 22.95, image: "orangesnorkel.jpg")
item_42 = Item.create(title: "Rainbow Snorkel", description: "It's a snorkel, it's rainbow, you should purchase this one if you have a lot of personality.  Goes well with our hot pink or yellow tank.", store: store_1, price: 24.95, image: "rainbowsnorkel.jpg")
item_43 = Item.create(title: "Snorkel with Head Attachments", description: "Do you like options? Of course you do!  Here are 3. They do different things.", store: store_1, price: 210.00, image: "snorkelwithextraheadattachments.jpg")
item_44 = Item.create(title: "Yellow Snorkel, Extra Long", description: "Some extra snorkel for that big noggin of yours.  Don't worry, there's a filter for that!", store: store_1, price: 76.95, image: "yellowFinis-Freestyle-Snorkel.jpg")


item_45 = Item.create(title: "Blue and Clear Split Fins", description: "These fins will make you go SO fast, which is essential during basketweaving because we said so. Plus, they're split, which we are sure is integral to the speed, somehow.", store: store_1, price: 149.95, image: "blueandclearMares-x-stream-dive-fins.jpg")
item_46 = Item.create(title: "Blue Open Fin", description: "Fins that are blue, have openings, to allow water through, and obviously play a vital role in your staying alive.", store: store_1, price: 129.95, image: "blueopenfin.jpg")
item_47 = Item.create(title: "Full Face Mask with Go Pro", description: "Do you feel the need to not only weave, but film your adventures? This is the mask for you.  Pinterest/Instagram account not included.", store: store_1, price: 650.00, image: "fullfacemaskblack.jpg")
item_48 = Item.create(title: "Full Face Mask", description: "Only the most adventurous need apply.  With this face mask, you can swim the great barrier reef with sharks, and weave your little heart out at the same time! What fun!", store: store_1, price: 100.00, image: "fullfacemaskminussnorkel.png")
item_49 = Item.create(title: "Full Face Mask with Go Pro (White)", description: "Do you feel the need to not only weave, but film your adventures? This is the mask for you.  Pinterest/Instagram account not included.", store: store_1, price: 700.00, image: "fullfacewhitesnorkel.jpg")
item_50 = Item.create(title: "Grey Fins, Extra Long", description: "Grey Fins, extra long for your pleasure...of swimming! Flappy Flap Flap!", store: store_1, price: 55.95, image: "greyfinsextralong.jpg")
item_51 = Item.create(title: "Merfin", description: "Wanna be fabulous and weaving at the same time?  Now you can! Enter the merfin.  Please be advised, swimming is mildly difficult.", store: store_1, price: 54.95, image: "merfin.png")
item_52 = Item.create(title: "Orange Lens Mask", description: "Worried about eye protection while weaving? Aren't we all.  Full protection from UVA, UVB, UCV, UVG, UVX, and UVZ rays. You can never be too careful!", store: store_1, price: 79.95, image: "orange lens goggles.jpg")
item_53 = Item.create(title: "Orange Short Fins", description: "Shorter fins for shorter projects.  We know what we're talking about.", store: store_1, price: 43.95, image: "orange_fins.jpg")
item_54 = Item.create(title: "Black and Yellow Viper Fins", description: "Aren't you sporty?! Look at you, going so fast in that swimming pool, while weaving.  That's totally a thing.", store: store_1, price: 64.95, image: "yellowblackviperfins.jpg")


ItemCategory.create(item: item_1, category: category_1)
ItemCategory.create(item: item_2, category: category_1)
ItemCategory.create(item: item_3, category: category_1)
ItemCategory.create(item: item_4, category: category_1)
ItemCategory.create(item: item_5, category: category_1)
ItemCategory.create(item: item_6, category: category_1)
ItemCategory.create(item: item_7, category: category_1)
ItemCategory.create(item: item_8, category: category_1)
ItemCategory.create(item: item_9, category: category_1)
ItemCategory.create(item: item_10, category: category_1)
ItemCategory.create(item: item_11, category: category_1)
ItemCategory.create(item: item_12, category: category_1)
ItemCategory.create(item: item_13, category: category_1)
ItemCategory.create(item: item_45, category: category_1)
ItemCategory.create(item: item_46, category: category_1)
ItemCategory.create(item: item_47, category: category_1)
ItemCategory.create(item: item_48, category: category_1)
ItemCategory.create(item: item_49, category: category_1)
ItemCategory.create(item: item_50, category: category_1)
ItemCategory.create(item: item_51, category: category_1)
ItemCategory.create(item: item_52, category: category_1)
ItemCategory.create(item: item_53, category: category_1)
ItemCategory.create(item: item_54, category: category_1)
ItemCategory.create(item: item_14, category: category_2)
ItemCategory.create(item: item_15, category: category_2)
ItemCategory.create(item: item_16, category: category_2)
ItemCategory.create(item: item_17, category: category_2)
ItemCategory.create(item: item_18, category: category_2)
ItemCategory.create(item: item_19, category: category_2)
ItemCategory.create(item: item_20, category: category_2)
ItemCategory.create(item: item_21, category: category_2)
ItemCategory.create(item: item_22, category: category_2)
ItemCategory.create(item: item_23, category: category_2)
ItemCategory.create(item: item_24, category: category_3)
ItemCategory.create(item: item_25, category: category_3)
ItemCategory.create(item: item_26, category: category_3)
ItemCategory.create(item: item_27, category: category_3)
ItemCategory.create(item: item_28, category: category_3)
ItemCategory.create(item: item_29, category: category_3)
ItemCategory.create(item: item_30, category: category_3)
ItemCategory.create(item: item_31, category: category_3)
ItemCategory.create(item: item_32, category: category_3)
ItemCategory.create(item: item_33, category: category_3)
ItemCategory.create(item: item_34, category: category_3)
ItemCategory.create(item: item_35, category: category_3)
ItemCategory.create(item: item_36, category: category_3)
ItemCategory.create(item: item_37, category: category_3)
ItemCategory.create(item: item_38, category: category_3)
ItemCategory.create(item: item_39, category: category_4)
ItemCategory.create(item: item_40, category: category_4)
ItemCategory.create(item: item_41, category: category_4)
ItemCategory.create(item: item_42, category: category_4)
ItemCategory.create(item: item_43, category: category_4)
ItemCategory.create(item: item_44, category: category_4)
ItemCategory.create(item: item_45, category: category_4)
ItemCategory.create(item: item_46, category: category_4)
ItemCategory.create(item: item_47, category: category_4)
ItemCategory.create(item: item_48, category: category_4)
ItemCategory.create(item: item_49, category: category_4)
ItemCategory.create(item: item_50, category: category_4)
ItemCategory.create(item: item_51, category: category_4)
ItemCategory.create(item: item_52, category: category_4)
ItemCategory.create(item: item_53, category: category_4)
ItemCategory.create(item: item_54, category: category_4)

order_1 = Order.create(user_id: 1, status: 0, total_price: 154.85)
order_2 = Order.create(user_id: 2, status: 0, total_price: 149.89)
OrderItem.create(order: order_1, item: item_1, quantity: 3)
OrderItem.create(order: order_1, item: item_3, quantity: 1)
OrderItem.create(order: order_2, item: item_2, quantity: 2)
OrderItem.create(order: order_2, item: item_4, quantity: 1)

order_3 = Order.create(user_id: 2, status: 1, total_price: 349.85)
order_4 = Order.create(user_id: 2, status: 1, total_price: 193.85)
OrderItem.create(order: order_3, item: item_45, quantity: 1)
OrderItem.create(order: order_3, item: item_7, quantity: 2)
OrderItem.create(order: order_4, item: item_40, quantity: 2)
OrderItem.create(order: order_4, item: item_12, quantity: 1)

order_5 = Order.create(user_id: 2, status: 2, total_price: 141.85)
order_6 = Order.create(user_id: 2, status: 2, total_price: 129.95)
OrderItem.create(order: order_5, item: item_17, quantity: 2)
OrderItem.create(order: order_5, item: item_23, quantity: 1)
OrderItem.create(order: order_6, item: item_1, quantity: 2)
OrderItem.create(order: order_6, item: item_14, quantity: 1)

order_7 = Order.create(user_id: 2, status: 3, total_price: 94.85)
order_8 = Order.create(user_id: 2, status: 3, total_price: 165.87)
OrderItem.create(order: order_7, item: item_30, quantity: 2)
OrderItem.create(order: order_7, item: item_54, quantity: 1)
OrderItem.create(order: order_8, item: item_38, quantity: 2)
OrderItem.create(order: order_8, item: item_23, quantity: 1)

puts "seeded"


mimizon = Store.create(name: "Mimizon", description: "You want all the books? You can have all the books", image: "mimizon.png")
indiecovers = Store.create(name: "Indie Covers", description: "A collection of independent titles aimed for hipsters", image: "indie-covers.png")

books = Category.create(name: "books", title: "Read to your heart's content")

book_collection = [Item.create(title: "The Little Prince", description: "Antoine de Saint-Exupery. The Little Prince is a poetic tale, with watercolour illustrations by the author, in which a pilot stranded in the desert meets a young prince visiting Earth from a tiny asteroid. The story is philosophical and includes social criticism of the adult world", price: 6.99, image: "little-prince.jpg", store: mimizon),
Item.create(title: "Leonardo da Vinci", description: "Walter Isaacson. The author of the acclaimed best sellers Benjamin Franklin, Einstein, and Steve Jobs delivers an engrossing biography of Leonardo da Vinci, the world's most creative genius", price: 12.99, image: "leonardo-da-vinci.png", store: mimizon),
Item.create(title: "Ready Player One", description: "By Ernest Cline. At once wildly original and stuffed with irresistible nostalgia, Ready Player One is a spectacularly genre-busting, ambitious, and charming debut - part quest novel, part love story, and part virtual space opera set in a universe where spell-slinging mages battle giant Japanese robots, entire planets are inspired by Blade Runner, and flying DeLoreans achieve light speed", price: 22.99, image: "ready-player-one.png", store: mimizon),
Item.create(title: "The Circle", description: "By Dave Eggers. When Mae Holland is hired to work for the Circle, the world's most powerful internet company, she feels she's been given the opportunity of a lifetime. The Circle, run out of a sprawling California campus, links users' personal emails, social media, banking, and purchasing with their universal operating sysItem, resulting in one online identity and a new age of civility and transparency", price: 12.99, image: "the-circle.png", store: mimizon),
Item.create(title: "Tuesdays with Morrie", description: "By Mitch Albom. Maybe it was a grandparent, or a teacher, or a colleague.  Someone older, patient and wise, who understood you when you were young and searching, helped you see the world as a more profound place, gave you sound advice to help you make your way through it", price: 14.99, image: "tuesdays-with-morrie.png", store: mimizon),
Item.create(title: "Ender's Game", description: "By Orson Scott Card. In order to develop a secure defense against a hostile alien race's next attack, government agencies breed child geniuses and train them as soldiers. A brilliant young boy, Andrew Ender Wiggin lives with his kind but distant parents, his sadistic brother Peter, and the person he loves more than anyone else, his sister Valentine. Peter and Valentine were candidates for the soldier-training program but didn't make the cut―young Ender is the Wiggin drafted to the orbiting Battle School for rigorous military training", price: 10.99, image: "enders-game.png", store: mimizon),
Item.create(title: "Divergent", description: "By Veronica Roth. In Beatrice Prior's dystopian Chicago, society is divided into five factions, each dedicated to the cultivation of a particular virtue - Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent). On an appointed day of every year, all sixteen-year-olds must select the faction to which they will devote the rest of their lives. For Beatrice, the decision is between staying with her family and being who she really is - she can't have both. So she makes a choice that surprises everyone, including herself", price: 9.99, image: "divergent.png", store: mimizon),
Item.create(title: "The Maze Runner", description: "By James Dashner. When Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone", price: 9.99, image: "the-maze-runner.png", store: mimizon),
Item.create(title: "Gone Girl", description: "By Gillian Flynn. Marriage can be a real killer. One of the most critically acclaimed suspense writers of our time, New York Times best seller Gillian Flynn, takes that staItement to its darkest place in this unpausable masterpiece about a marriage gone terribly, terribly wrong. The Chicago Tribune proclaimed that her work draws you in and keeps you reading with the force of a pure but nasty addiction. Gone Girl's toxic mix of sharp-edged wit and deliciously chilling prose creates a nerve-fraying thriller that confounds you at every turn", price: 9.99, image: "gone-girl.png", store: mimizon),
Item.create(title: "The Fault in Our Stars", description: "By John Green. Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel's story is about to be completely rewritten", price: 12.99, image: "the-fault-in-our-stars.png", store: mimizon),
Item.create(title: "The Hunger Games", description: "By Suzanne Collins. The acclaimed author of the 'New York Times'-bestselling Underland Chronicles series delivers equal parts suspense and philosophy, adventure and romance, in a stunning novel set in a future with unsettling parallels to the present", price: 9.99, image: "the-hunger-games.png", store: mimizon),
Item.create(title: "Twilight", description: "By Stephenie Meyer. When Isabella Swan moves to the gloomy town of Forks and meets the mysterious, alluring Edward Cullen, her life takes a thrilling and terrifying turn. With his porcelain skin, golden eyes, mesmerising voice, and supernatural gifts, Edward is both irresistible and impenetrable. Up until now, he has managed to keep his true identity hidden, but Bella is determined to uncover his dark secret. What Bella doesn't realise is the closer she gets to him, the more she is putting herself and those around her at risk", price: 9.99, image: "twilight.png", store: mimizon),
Item.create(title: "Pretty Girls", description: "By Karin Slaughter. More than twenty years ago, Claire and Lydia's teenaged sister Julia vanished without a trace. The two women have not spoken since, and now their lives could not be more different. Claire is the glamorous trophy wife of an Atlanta millionaire. Lydia, a single mother, dates an ex-con and struggles to make ends meet. But neither has recovered from the horror and heartbreak of their shared loss-a devastating wound that's cruelly ripped open when Claire's husband is killed", price: 12.99, image: "pretty-girls.png", store: mimizon),
Item.create(title: "It", description: "By Stephen King. Welcome to Derry, Maine. It's a small city, a place as hauntingly familiar as your own hometown. Only in Derry the haunting is real", price: 13.99, image: "it.png", store: mimizon),
Item.create(title: "The Shining", description: "By Stephen King. Jack Torrance's new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he'll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote...and more sinister", price: 13.99, image: "the-shining.png", store: mimizon),
Item.create(title: "Game of Thrones", description: "By George R. R. Martin. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction", price: 10.99, image: "game-of-thrones.png", store: mimizon),
Item.create(title: "The Hitchhiker's Guide to the Galaxy", description: "By Douglas Adams. Don't leave earth without this story of the end of the world and the happy-go-lucky days that follow. The writing of New York Times Best-selling author, Douglas Adams, has been brilliantly successful on both sides of the Atlantic in radio, television, theatre and spoken word audio", price: "10.99", image: "the-hitchhikers-guide-to-the-galaxy.jpg", store: mimizon),
Item.create(title: "The Martian", description: "By Andy Weir. Six days ago, astronaut Mark Watney became one of the first people to walk on Mars. Now, he's sure he'll be the first person to die there", price: 14.99, image: "the-martian.jpg", store: mimizon),
Item.create(title: "Jurassic Park: A Novel", description: "By Michael Crichton. An astonishing technique for recovering and cloning dinosaur DNA has been discovered. Now humankind's most thrilling fantasies have come true. Creatures extinct for eons roam Jurassic Park with their awesome presence and profound mystery, and all the world can visit them - for a price", price: 20.99, image: "jurassic-park.jpg", store: mimizon),
Item.create(title: "World War Z", description: "By Max Brooks. World War Z: The Complete Edition (Movie Tie-in Edition): An Oral History of the Zombie War is a new version of Max Brooks' episodic zombie novel. The abridged versions of the original stories are now joined with new, unabridged recordings of the episodes that were not included in the original (abridged) version of the audiobook. These additional episodes feature a star-studded cast of narrators to coincide with the upcoming release of the film", price: 20.99, image: "world-war-z.jpg", store: mimizon),
Item.create(title: "Children of Time", description: "By Adrian Tchaikovsky. Adrian Tchaikovksy's critically acclaimed stand-alone novel Children of Time is the epic story of humanity's battle for survival on a terraformed planet", price: 12.99, image: "children-of-time.jpg", store: mimizon),
Item.create(title: "The Three-Body Problem", description: "By Cixin Liu. ThreeBody Problem is the first chance for English-speaking listeners to experience this multiple award-winning phenomenon from China's most beloved science fiction author, Liu Cixin", price: 19.99, image: "three-body-problem.jpg", store: mimizon),
Item.create(title: "The Girl with All the Gifts", description: "By M. R. Carey. Melanie is a very special girl. Every morning, Melanie waits in her cell to be collected for class. When they come for her, Sergeant keeps his gun pointing at her while two of his people strap her into the wheelchair. She thinks they don't like her. She jokes that she won't bite, but they don't laugh", price: 9.99, image: "the-girl-with-all-the-gifts.jpg", store: mimizon),
Item.create(title: "The Chemist", description: "By Stephenie Meyer. She used to work for the US government, but very few people ever knew that. An expert in her field, she was one of the darkest secrets of an agency so clandestine it doesn't even have a name. And when they decided she was a liability, they came for her without warning", price: 17.99, image: "the-chemist.jpg", store: mimizon),
Item.create(title: "The Great Gatsby", description: "By F. Scott Fitzgerald. F. Scott Fitzgerald's classic American novel of the Roaring Twenties is beloved by generations of readers and stands as his crowning work", price: 12.99, image: "the-great-gatsby.jpeg", store: mimizon),
Item.create(title: "Twelve Years a Slave", description: "By Solomon Northup. In this riveting landmark autobiography which reads like a novel, Academy Award and Emmy winner Louis Gossett, Jr., masterfully transports us to 1840s New York, Washington, D.C., and Louisiana to experience the kidnapping and twelve years of bondage of Solomon Northup, a free man of color", price: 11.99, image: "12-years-a-slave.jpg", store: mimizon),
Item.create(title: "The Productivity Project", description: "By Chris Bailey. A fresh, personal, and entertaining exploration of a topic that concerns all of us: how to be more productive at work and in every facet of our lives", price: 12.99, image: "the-productivity-project.jpg", store: mimizon),

Item.create(title: "Little Fires Everywhere", description: "By Celeste Ng. The riveting new novel by the bestselling author of Everything I Never Told You is a September 2017 Indie Next List Great Read", price: 10.99, image: "little-fires-everywhere.png", store: indiecovers),
Item.create(title: "A Gentleman in Moscow", description: "By Amor Towles. Towles' transporting novel about a man who is ordered to spend the rest of his life inside a luxury hotel is a September 2016 Indie Next List Great Read", price: 14.99, image: "a-gentleman-from-moscow.png", store: indiecovers),
Item.create(title: "What Happened", description: "By Hillary Rodham Clinton. Clinton describes what it was like to run against Donald Trump, the mistakes she made, how she has coped with the loss, and how she found the strength to pick herself back up afterward", price: 14.99, image: "what-happened.png", store: indiecovers),
Item.create(title: "The Handmaid's Tale", description: "By Margaret Atwood. Atwood's funny, unexpected, horrifying, and altogether convincing novel is at once scathing satire, dire warning, and literary tour de force. Now a Hulu series", price: 11.99, image: "the-handmaids-tale.png", store: indiecovers),
Item.create(title: "All the Light We Cannot See", description: "By Anthony Doerr. From the highly acclaimed, multiple award-winning Anthony Doerr, the stunningly beautiful instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II", price: 15.99, image: "all-the-light-we-cannot-see.png", store: indiecovers),
Item.create(title: "The Whistler", description: "By John Grisham. We expect our judges to be honest and wise. Their integrity is the bedrock of the entire judicial system. We trust them to ensure fair trials, to protect the rights of all litigants, to punish those who do wrong, and to oversee the flow of justice. But what happens when a judge bends the law or takes a bribe?", price: 14.99, image: "the-whistler.png", store: indiecovers),
Item.create(title: "The Woman in Cabin 10", description: "By Ruth Ware. In this tightly wound, enthralling story reminiscent of Agatha Christie's works, Lo Blacklock, a journalist who writes for a travel magazine, has just been given the assignment of a lifetime: a week on a luxury cruise with only a handful of cabins. The sky is clear, the waters calm, and the veneered, select guests jovial as the exclusive cruise ship, the Aurora, begins her voyage in the picturesque North Sea", price: 15.99, image: "the-woman-in-cabin-10.png", store: indiecovers),
Item.create(title: "The Girl Who Takes an Eye for an Eye", description: "By David Lagercrantz, Stieg Larsson, George Goulding. The series that began with The Girl with the Dragon Tattoo continues as brilliant hacker Lisbeth Salander teams up with journalist Mikael Blomkvist to uncover the secrets of her childhood and to take revenge", price: 27.99, image: "the-girl-who-takes-an-eye-for-an-eye.png", store: indiecovers),
Item.create(title: "The Last Ballad", description: "By Wiley Cash. The New York Times bestselling author of the celebrated A Land More Kind Than Home and This Dark Road to Mercy returns with this eagerly awaited new novel, set in the Appalachian foothills of North Carolina in 1929 and inspired by actual events", price: 26.99, image: "the-last-ballad.png", store: indiecovers),
Item.create(title: "The Glass Eye: A Memoir", description: "By Jeannie Vanasco. The Glass Eye, at its heart, is a memoir of Jeannie's relationship with her late father and the grief she experienced after his death. But it's also about her half-sister, Jeanne, who died before she was born; it's about mental illness; and it's about family and what that means. This is memoir at its best. The prose is powerful and often breathtaking - it'll make your heart break, it might make you cry, and you'll probably even laugh a few times. This is an elegy fierce and lyrical and raw, like none I've read before", price: 15.99, image: "the-glass-eye.jpg", store: indiecovers),
Item.create(title: "Manhattan Beach", description: "By Jennifer Egan. Anna Kerrigan, nearly twelve years old, accompanies her father to visit Dexter Styles, a man who, she gleans, is crucial to the survival of her father and her family. She is mesmerized by the sea beyond the house and by some charged mystery between the two men", price: 28.99, image: "manhattan-beach.jpg", store: indiecovers),
Item.create(title: "The Rules of Magic", description: "By Alice Hoffman. Hundreds of years later, in New York City at the cusp of the sixties, when the whole world is about to change, Susanna Owens knows that her three children are dangerously unique. Difficult Franny, with skin as pale as milk and blood red hair, shy and beautiful Jet, who can read other people's thoughts, and charismatic Vincent, who began looking for trouble on the day he could walk", price: 27.99, image: "the-rules-of-magic.jpg", store: indiecovers),
Item.create(title: "The Twelve-Mile Straight", description: "By Eleanor Henderson. Cotton County, Georgia, 1930: in a house full of secrets, two babies-one light-skinned, the other dark-are born to Elma Jesup, a white sharecropper's daughter. Accused of her rape, field hand Genus Jackson is lynched and dragged behind a truck down the Twelve-Mile Straight, the road to the nearby town", price: 27.99, image: "the-twelve-mile-straight.jpg", store: indiecovers),
Item.create(title: "Caroline: Little House", description: "By Sarah Miller. In this novel authorized by the Little House Heritage Trust, Sarah Miller vividly recreates the beauty, hardship, and joys of the frontier in a dazzling work of historical fiction, a captivating story that illuminates one courageous, resilient, and loving pioneer woman as never before", price: 25.99, image: "caroline.jpg", store: indiecovers),
Item.create(title: "Forest Dark", description: "By Nicole Krauss. Jules Epstein, a man whose drive, avidity, and outsized personality have, for sixty-eight years, been a force to be reckoned with, is undergoing a metamorphosis", price: 27.99, image: "forest-dark.jpg", store: indiecovers),
Item.create(title: "We Were Eight Years in Power", description: "By Ta-Nehisi Coates. A vital account of modern America by the National Book Award-winning author of Between the World and Me", price: 28.99, image: "we-were-eight-years-in-power.jpg", store: indiecovers),
Item.create(title: "Braving the Wilderness: The Quest for True Belonging and the Courage to Stand Alone", description: "By Brene Brown. Social scientist Brene Brown, PhD, LMSW, has sparked a global conversation about the experiences that bring meaning to our lives--experiences of courage, vulnerability, love, belonging, shame, and empathy. In Braving the Wilderness, Brown redefines what it means to truly belong in an age of increased polarization", price: 28.99, image: "braving-the-wilderness.jpg", store: indiecovers),
Item.create(title: "Hillbilly Elegy: A Memoir of a Family and Culture in Crisis", description: "By J. D. Vance. From a former marine and Yale Law School graduate, a powerful account of growing up in a poor Rust Belt town that offers a broader, probing look at the struggles of America's white working class", price: 27.99, image: "hillbilly-elegy.jpg", store: indiecovers),
Item.create(title: "The Couple Next Door", description: "By Shari Lapena. A domestic suspense debut about a young couple and their apparently friendly neighbors--a twisty, rollercoaster ride of lies, betrayal, and the secrets between husbands and wives", price: 15.99, image: "the-couple-next-door.jpg", store: indiecovers),
Item.create(title: "Behind Closed Doors", description: "By B. A. Paris. Everyone knows a couple like Jack and Grace. He has looks and wealth; she has charm and elegance. He's a dedicated attorney who has never lost a case; she is a flawless homemaker, a masterful gardener and cook, and dotes on her disabled younger sister. Though they are still newlyweds, they seem to have it all. You might not want to like them, but you do. You re hopelessly charmed by the ease and comfort of their home, by the graciousness of the dinner parties they throw. You d like to get to know Grace better", price: 16.99, image: "behind-closed-doors.jpg", store: indiecovers),
Item.create(title: "A Man Called Ove", description: "By Fredrik Backman. Meet Ove. He's a curmudgeon--the kind of man who points at people he dislikes as if they were burglars caught outside his bedroom window. He has staunch principles, strict routines, and a short fuse. People call him the bitter neighbor from hell. But must Ove be bitter just because he doesn't walk around with a smile plastered to his face all the time?", price: 16.99, image: "a-man-called-ove.jpg", store: indiecovers),
Item.create(title: "Astrophysics for People in a Hurry", description: "By Neil Degrasse Tyson. What is the nature of space and time? How do we fit within the universe? How does the universe fit within us? There's no better guide through these mind-expanding questions than acclaimed astrophysicist and best-selling author Neil deGrasse Tyson", price: 18.99, image: "astrophysics-for-people-in-a-hurry.jpg", store: indiecovers),
Item.create(title: "The Couple Next Door", description: "By Shari Lapena. A domestic suspense debut about a young couple and their apparently friendly neighbors--a twisty, rollercoaster ride of lies, betrayal, and the secrets between husbands and wives", price: 16.99, store: indiecovers),
Item.create(title: "You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life", description: "By Jen Sincero. In this refreshingly entertaining how-to guide, bestselling author and world-traveling success coach, Jen Sincero, serves up 27 bitesized chapters full of hilariously inspiring stories, sage advice, easy exercises, and the occasional swear word, helping you to: Identify and change the self-sabotaging beliefs and behaviors that stop you from getting what you want, Create a life you totally love. And create it NOW, Make some damn money already. The kind you've never made before", price: 16.99, image: "you-are-a-badass.jpg", store: indiecovers),
Item.create(title: "Cross the Line", description: "By James Patterson. In all of Alex Cross's years with Homicide, Washington, DC, has never been more dangerous", price: 9.99, image: "cross-the-line.jpg", store: indiecovers),
Item.create(title: "The Husband's Secret", description: "By Liane Moriarty. Imagine your husband wrote you a letter, to be opened after his death. Imagine, too, that the letter contains his deepest, darkest secret--something with the potential to destroy not only the life you built together, but the lives of others as well. And then imagine that you stumble across that letter while your husband is still very much alive", price: 9.99, image: "the-husbands-secret.jpg", store: indiecovers)]

book_collection.map do |book|
  ItemCategory.create(item: book, category: books)
end

livecomfy = Store.create(name: "Live Comfy", description: "The best type of life is a comfortable life", image: "live-comfy.png")
bf = Store.create(name: "BeauFrames", description: "Elevate your bedroom with a beautiful bed frame", image: "beau-frame.png")
dt = Store.create(name: "18th & Market", description: "Find stylish and affordable Furniture to reflect your personality at 18th & Market. Enjoy free shipping on many  wide selection!", image: "18-and-market.png")

furniture = Category.create(name: "furniture", title: "Find stylish and affordable Furniture to reflect your personality")

furnitures = [Item.create(title: "Maier Charcoal 2 Piece Sectional W/Raf Chaise", description: "Whether enjoying a cozy evening with your sweetie or entertaining a party of many, this sectional has the perfect design for getting close and spreading out. Tufted cushions provide exceptional comfort and impart tailored style, while a chaise lounge allows you to stretch your legs and seat more guests", price: 595.99, image: "maier-charcoal.png", store: livecomfy),
Item.create(title: "Zella Charcoal 2 Piece Sectional W/Raf Chaise", description: "Big on comfort and style yet tidy in size, the Zella charcoal sectional is the ideal contemporary piece for living rooms of all sizes. A handsome profile marked by shaped arms and soft grey upholstery exudes understated elegance, while reversible accent pillows add a pop of color. Available with a right or left-facing chaise, this sectional sofa offers versatile seating options and snazzy style", price: 550.99, image: "zella-charcoal.png", store: livecomfy),
Item.create(title: "Alenya Charcoal 2 Piece Sectional W/Raf Loveseat", description: "Whether you’re drawn to its clean lines or its subtle vintage flair, the Alenya Charcoal sectional presents a versatile look that suits an array of interiors. Handsome gray upholstery and welted seams complement the crisp frame, which is appointed with track arms and thick tapered feet. Featuring a reversible design, the accent pillows allow you to maintain a simple modern style or add a hint of old world charm with an elegant script print", price: 630.99, image: "alenya-charcoal.png", store: livecomfy),
Item.create(title: "Loric Smoke 3 Piece Sectional W/Raf Chaise", description: "With a design that feels as good as it looks, this sectional will inspire you to take every opportunity to entertain everybody. Whether you’re hosting a movie marathon or book club, in charge of happy hour or game night, this is a piece that’s primed for accommodating all of your guests and events. Aside from its substantial size, the soft upholstery and cushions provide exceedingly satisfying seating. Enriched by a handsome shade of grey and reversible accent pillows, this crowd-pleaser has a place in any space", price: 795.99, image: "loric-smoke.png", store: livecomfy),
Item.create(title: "Kerri Sofa", description: "Our Kerri sofa has everything you could want from your lounge. Enjoy generous proportions, supportive cushions and a sophisticated, streamlined look. A natural addition to any living room, this design is especially versatile and available at an exceptional value. Fabric customization is also an option through our Special Order program, so you can style it your way", price: 495.99, image: "kerri-sofa.png", store: livecomfy),
Item.create(title: "Hampton Sofa", description: "From the moment guests enter your living room, they’ll be charmed by our Hampton sofa’s refreshed classic aesthetic. Turned feet, paneled roll arms, tasteful accent patterns and tailored details add a dose of tradition, while the modern color palette breathes new life into the design. You can also put your own spin on it thanks to our Special Order program, which offers a variety of fabric customization options", price: 495.99, image: "hampton-sofa.png", store: livecomfy),
Item.create(title: "Callie Sofa", description: "Bring classic charm to your living room with our Callie sofa, which pairs timeless colors and traditional details on a tasteful design. Stately rolled arms and pillows decked in sophisticated stripes enrich the piece, while a navy and white palette lends inviting all-American style", price: 395.99, image: "callie-sofa.png", store: livecomfy),
Item.create(title: "Parker Sofa", description: "Entertaining guests and getting rest come equally easy on our Parker sofa. Casual, comfortable and versatile, this piece is designed to please with plush cushions, abundant accent pillows and flat, expansive arms. Thanks to our Special Order program, you can also customize the fabrics and select textures, colors and patterns that complement your interior", price: 595.99, image: "parker-sofa.png", store: livecomfy),
Item.create(title: "Mansfield 96 Inch Cocoa Leather Sofa", description: "Get a classic design in the size and cover of your choice. Our Mansfield collection is inspired by the timeless Chesterfield style, which is characterized by a tight shelter-height back, graceful roll arms and deep, distinctive button tufting. Our interpretation also boasts the highest quality construction materials and techniques, from Kiln-dried solid hardwood frames, to 8-way hand-tied suspension and thick down blend cushions. We offer an 86” sofa, 96” sofa and chair that come in tasteful beige linen, luxurious graphite velvet and 100% top grain cocoa leather", price: 2295.99, image: "mansfield.png", store: livecomfy),
Item.create(title: "Mansfield 96 Inch Graphite Velvet Sofa", description: "Get a classic design in the size and cover of your choice. Our Mansfield collection is inspired by the timeless Chesterfield style, which is characterized by a tight shelter-height back, graceful roll arms and deep, distinctive button tufting. Our interpretation also boasts the highest quality construction materials and techniques, from Kiln-dried solid hardwood frames, to 8-way hand-tied suspension and thick down blend cushions. We offer an 86” sofa, 96” sofa and chair that come in tasteful beige linen, luxurious graphite velvet and 100% top grain cocoa leather", price: 1495.99, image: "mansfield-graphite.png", store: livecomfy),
Item.create(title: "Talin Power Reclining Sofa W/Usb", description: "Perfect for the style and tech-savvy lounger, our Talin reclining sofa wows with its modern flair and function. Smart features – including luxurious power motion, useful USB ports and adjustable headrests that enhance the way you relax – are wrapped up in a seriously sleek package. Thanks to this state-of-the-art stunner, you’ll see that support and sophisticated design can be one and the same", price: 995.99, image: "talin-power.png", store: livecomfy),
Item.create(title: "Melina Bisque Power Reclining Sofa W/Usb", description: "Part of a new generation of recliners that deliver equal parts modern support and sleek style, our Melina reclining sofa proves you can have it all. This design features streamlined mechanisms, which disguise power motion capabilities handsomely. Thick yet tailored cushions and headrests provide an ultra-indulgent experience, while USB outlets let your devices recharge with you", price: 795.99, image: "melina.png", store: livecomfy),
Item.create(title: "Wayne II Power Reclining Sofa W/Usb", description: "You deserve daily pampering and our deluxe Wayne sofa allows you to indulge mornings, afternoons and evenings. Top grain leather seating, plush padding and channeled backs provide quality comfort and enhanced lumbar support, while power motion makes your reclining experience smooth and seamless. In addition to all of those amenities, this piece features USB outlets, so you can recharge electronics while you’re relaxing", price: 1195.99, image: "wayne-2.png", store: livecomfy),
Item.create(title: "Torben Brown Power Reclining Sofa W/Usb", description: "You deserve the very best when it comes to getting rest, and our Torben power reclining sofa delivers exactly what you wish for and more. At the press of a button, you’ll experience smooth motion and seamless relaxation. To up the ante on luxury, this design is upholstered in 100% top grain leather upholstery that feels as irresistible as it looks. Thanks to USB ports on both ends, you can also keep devices charging while you’re lounging", price: 1495.99, image: "torben.png", store: livecomfy),
Item.create(title: "Alenya Charcoal Loveseat", description: "Whether you’re drawn to its clean lines or its subtle vintage flair, the Alenya Charcoal loveseat presents a versatile look that suits an array of interiors. Handsome gray upholstery and welted seams complement the crisp frame, which is appointed with track arms and thick tapered feet. Featuring a reversible design, the accent pillows allow you to maintain a simple modern style or add a hint of old world charm with an elegant script print", price: 295.99, image: "alenya-charcoal-loveseat.png", store: livecomfy),
Item.create(title: "Lennon Granite Loveseat", description: "Your best rest is yet to come on our Lennon loveseat. Featuring smooth, sophisticated top grain leather seating and high resiliency cushions with supportive comfort wave cores, this piece has luxury covered. Its streamlined design is also exceptionally sturdy and lends finesse to any space", price: 795.99, image: "lennon-granite.png", store: livecomfy),
Item.create(title: "Colt Power Reclining Loveseat W/Console", description: "With its space-saving wallaway feature, our Colt power reclining loveseat is as functional as it is comfortable. Store remote controls or other small devices in the center console so they remain in reach. The urban design is enhanced with a smooth reclining power motion, and the soft grey upholstery invites you to relax from a stressful day", price: 1250.99, image: "colt-power.png", store: livecomfy),
Item.create(title: "Oliver Ivory Power Reclining Loveseat W/Console", description: "With its deluxe ergonomic-inspired design, you will be inclined to endlessly unwind on the Oliver power reclining loveseat. From smooth top grain leather seating and plush, high-density foam cushions, to the quality support of superior suspension technology, the construction is truly exceptional, resulting in comfort that is truly extraordinary. For an extra indulgent experience, the loveseat comes equipped with a center console that offers convenient cup holders", price: 1996.99, image: "oliver-ivory.png", store: livecomfy),
Item.create(title: "Walter Loveseat", description: "A little bit country, a little bit luxury, the Walter sofa lures you in with its ruggedly handsome design. Rich 100% top grain leather is stitched with flanged seams, revealing a peek of the hide’s soft suede side, which outlines the plush espresso body. Wide and generously padded, the arms enhance this piece’s cozy appeal", price: 1850.99, image: "walter-loveseat.png", store: livecomfy),
Item.create(title: "Churchill Loveseat", description: "As regal as it gets, our Churchill loveseat offers excellence in style and support. Elegant rolled arms and turned feet gracefully contrast this otherwise streamlined piece, which boasts deluxe cushions decked in leather. Box stitching and nailhead trim further refine the design by adding a tasteful, tailored touch", price: 1150.99, image: "churchill-loveseat.png", store: livecomfy),
Item.create(title: "Daniel Nutmeg Pressback Recliner", description: "Our handsome Daniel high leg recliner will exceed your expectations for support and style. Stealthy and streamlined, a three-way push-back recliner mechanism with footrest allows you to experience deeper lounging and enjoy more distinctive design. Enriched by top grain leather seating and offered in three colors, this piece is offered at an exceptional value and found only at Living Spaces", price: 585.99, image: "daniel-nutmeg.png", store: livecomfy),
Item.create(title: "Daniel Chocolate Pressback Recliner", description: "Our handsome Daniel high leg recliner will exceed your expectations for support and style. Stealthy and streamlined, a three-way push-back recliner mechanism with footrest allows you to experience deeper lounging and enjoy more distinctive design. Enriched by top grain leather seating and offered in three colors, this piece is offered at an exceptional value and found only at Living Spaces", price: 595.99, image: "daniel-chocolate.png", store: livecomfy),
Item.create(title: "Dane Flax Pressback Recliner", description: "Comfort has a new look thanks to our Dane high leg recliner, which is offered at an incredible value and available exclusively at Living Spaces. With clean lines, exceptional support and a three-way push-back recliner mechanism that lets you lounge more deeply, this sleek design provides quality relaxing. You also have three color options to choose from, so you can get the best fit for your room", price: 393.99, image: "dane-flax.png", store: livecomfy),
Item.create(title: "Dane Seal Pressback Recliner", description: "Comfort has a new look thanks to our Dane high leg recliner, which is offered at an incredible value and available exclusively at Living Spaces. With clean lines, exceptional support and a three-way push-back recliner mechanism that lets you lounge more deeply, this sleek design provides quality relaxing. You also have three color options to choose from, so you can get the best fit for your room", price: 393.99, image: "dane-seal.png", store: livecomfy),
Item.create(title: "Parker Ottoman", description: "Entertaining guests and getting rest come equally easy on our Parker ottoman. Casual, comfortable and versatile, this piece is designed to please. Thanks to our Special Order program, you can also customize the fabric for your interior", price: 350.99, image: "parker-ottoman.png", store: livecomfy),

Item.create(title: "Sinclair Grey California King Panel Bed", description: "Now available in a charcoal grey finish, our Sinclair bed’s solid pine design looks fresher than ever. Distinguished by its weathered texture and rustic nature, the frame is softly appointed by upholstered head and footboard panels, which are outlined in nailhead trim", price: 595.99, image: "sinclair-grey.png", store: bf),
Item.create(title: "Leighton California King Upholstered Platform Bed", description: "As fashionable as it is comfortable, our Leighton bed is distinguished by its exceptional quality and beauty. Available with or without a footboard, this stunner showcases hand-applied diamond tufting with full fabric folds, as well as individually-applied nail head accents. Durable steel slats also ensure extraordinary support while you’re sleeping. Best of all, it's offered at a brag-worthy price", price: 550.99, image: "leighton-california.png", store: bf),
Item.create(title: "Damon II California King Upholstered Platform Bed", description: "Distinguished by its lofty, tufted headboard, our Damon bed is a stylish spot for slumber. This versatile, well-priced design features grey upholstery and subtly winged sides that enhance its class, panache and comfort", price: 495.99, image: "damon.png", store: bf),
Item.create(title: "Chad California King Panel Bed", description: "When it comes to catching some Z’s, the Chad panel bed is all about the C’s: clean, contemporary, chic. A slatted and slightly curved headboard commands your undivided attention; that is until your eyes trace the crisp geometric lines to its stylized base. At last, the bed’s frame is draped with a scrumptious brown cherry finish to achieve a refreshingly contemporary design", price: 295.99, image: "chad-california.png", store: bf),
Item.create(title: "Livingston California King Storage Bed", description: "With its bold angular frame and gently distressed warm cocoa finish, the Livingston storage bed will instantly transport you to your happy place. A slatted headboard and wide platform foundation enhance the design’s Zen-like presence and add visual balance. Two cavernous under bed drawers not only provide convenient storage but also strengthen the robust frame", price: 1195.99, image: "livingston-california.png", store: bf),
Item.create(title: "Copenhagen Brown California King Storage Bed", description: "Inspired by the simplicity, functionality and quality craftsmanship of Shaker-style furniture, the Copenhagen storage bed is a modern interpretation of classic design. Constructed of solid wood and veneer, the clean-lined piece sits atop tapered legs and features a truffle finish, which showcases the distinctive grain of the wood. With two drawers on each side, it provides plenty of space to place extra blankets and clothes", price: 895.99, image: "copenhagen-brown.png", store: bf),
Item.create(title: "Livingston California King Panel Bed", description: "With its bold angular frame and gently distressed warm cocoa finish, the Livingston bed will instantly transport you to your happy place. A slatted headboard and wide platform foundation enhance the design’s Zen-like presence and add visual balance. Also distinguished by durable construction, you can rest easy knowing that this piece will beautify your bedroom for years to come", price: 995.99, image: "blake-california.png", store: bf),
Item.create(title: "Dalton California King Panel Bed", description: "Set the stage for your own relaxing retreat with the versatile Dalton panel bed. Escaping everyday stress is a cinch thanks to the cozy haven created by its paneled headboard and footboard. A charming cocoa finish, subtle crown molding accents and gently tapered feet further lull you into a blissful state of utter peace and relaxation", price: 395.99, image: "dalton-california.png", store: bf),
Item.create(title: "Dean Charcoal California King Upholstered Panel Bed", description: "Featuring a silhouette and design elements that lean mid-century, our Dean bed takes style cues from the past but lives entirely in the present. Available in two colors, this tailored design has the added bonus of offering luxe rest for less", price: 393.99, image: "dean-charcoal.png", store: bf),
Item.create(title: "Dean Sand California King Upholstered Panel Bed", description: "Featuring a silhouette and design elements that lean mid-century, our Dean bed takes style cues from the past but lives entirely in the present. Available in two colors, this tailored design has the added bonus of offering luxe rest for less", price: 393.99, image: "dean-sand.png", store: bf),
Item.create(title: "Sophia California King Upholstered Platform Bed", description: "Featuring regal curves and radiant nailhead accents, this design will be the belle of your bedroom. Available with or without a footboard, the Sophia bed comes upholstered in a beige linen blend, which looks chic in any retreat", price: 495.99, image: "sophia-california.png", store: bf),
Item.create(title: "Miles California King Upholstered Panel Bed", description: "Our Miles bed earns star status thanks to the unique nailhead detail that boldly distinguishes its streamlined frame. The warm, neutral design is decked in bespoke linen blend upholstery that will complement your room's style and color palette", price: 350.99, image: "miles-california.png", store: bf),
Item.create(title: "Milton California King Panel Bed", description: "You can keep your retreat simple without sacrificing style thanks to our Milton bed’s sophisticated minimalism. Maple veneer and a handsome black finish enrich the clean-lined design, which is budget-friendly to boot", price: 295.99, image: "milton-california.png", store: bf),
Item.create(title: "Rowan California King Panel Bed W/Storage", description: "Vintage printmaker's cabinets are the inspiration behind our handsome Rowan storage bed. Rough-hewn solid pine construction, charming planked detail and rustic bronze hardware instill heirloom character. Uniquely designed drawers – like the kind used for organizing maps, plans and blueprints – have been reimagined for bedroom use", price: 995.99, image: "rowan-california.png", store: bf),
Item.create(title: "Riley Greystone California King Panel Bed", description: "Our Riley bed will add plenty of character and order to your bedroom. Crafted of hardwood and veneer, the handsome, streamlined piece features a greystone finish and convenient USB outlets built into the headboard. It is also available with storage", price: 595.99, image: "riley-greystone.png", store: bf),
Item.create(title: "Caira Black California King Panel Bed", description: "You'll find that beauty rest is easier to get with the casual elegance of our Caira bed, now available in black. While elements like graceful curves and decorative moldings reflect classic design, the ebonized acacia finish updates this piece for today", price: 450.99, image: "caira-black.png", store: bf),

Item.create(title: "Pierce 5 Piece Counter Set", description: "Those charming x-back stools, that clean, streamlined table, the beyond phenomenal value – it’s no wonder this set is so popular. In addition to the immediately discernible perks, our Pierce dining collection raises the bar for entertaining thanks to its counter height designs. The hardwood and veneer pieces also boast an espresso finish, which enriches their appeal and complements every meal", price: 195.99, image: "pierce.png", store: dt),
Item.create(title: "Jarrod 5 Piece Counter Set", description: "As counter dining sets go, this collection is one of the most stylish and comfortable. These simple, streamlined designs deliver exemplary form, function and flair thanks to hardwood and veneer in a dark espresso finish. A sleek foundation, the table tastefully coordinates with four stools, which feature fortifying stretchers and upholstered seats and backs", price: 295.99, image: "jarrod.png", store: dt),
Item.create(title: "Rio 5 Piece Counter Set", description: "A perfect find for smaller spaces, the Rio counter set is compact but large enough to seat adults. The dark brown faux leather seats are soft and strong to provide years of comfortable dining with the family. With a smooth and clean design, the dining table proves to be versatile and the rich espresso wood warmly invites for more gatherings", price: 295.99, image: "rio.png", store: dt),
Item.create(title: "Rocco 8 Piece Extension Counter Set", description: "Thanks to lofty counter height design, our Rocco collection helps recreate the pub atmosphere at home. A dark espresso finish enriches each piece, including a bench and stools that feature upholstered seats, ladder backs and reinforcing stretchers. When you add more guests to the party, you can add more inches to the table with a convenient loose leaf extension", price: 895.99, image: "rocco.png", store: dt),
Item.create(title: "Lancaster 5 Piece Counter Set", description: "Whether you’re sitting down for breakfast, lunch or dinner, our Lancaster collection makes every meal a winner. Topped with soft cushions, the charming chairs gather around an extension table featuring metal bracket detail. If you’re interested in an alternative experience, this set also comes in a dining height version", price: 670.99, image: "lancaster.png", store: dt),
Item.create(title: "Malcolm 7 Piece Extension Counter Set", description: "For those who prefer an elevated dining experience, you'll want to raise a glass to the lofty style and silhouettes found in the Malcolm counter set. At this altitude, each meal served and every celebration held will reach great heights on the trestle table and x-back stools. Distinguished by a dark oak finish and upholstered seats, this collection enjoys a boost in captivating charm and compelling design", price: 599.99, image: "malcom.png", store: dt),
Item.create(title: "Patterson 5 Piece Counter Set", description: "Elevated entertaining is effortless, enjoyable and available at an incredible value thanks to our Patterson dining collection. The 5-piece counter height set includes a lofty table and ladderback stools that feature comfortable upholstered seats. Sturdy, streamlined wood construction and a chocolate finish serve up major charm in your room", price: 350.99, image: "patterson.png", store: dt),
Item.create(title: "Sandy Honey 5 Piece Square Dining Set", description: "Offering streamlined design at an impressive value, our Sandy collection delivers no matter what’s on the menu. Marked by tapered legs and crisp edges, the table serves as a strong base for any dining setting and finds a suitable pair in coordinating x-back chairs. Solid wood instills each piece with exceptional support, while a honey finish enriches their casual appeal", price: 290.99, image: "sandy-honey.png", store: dt),
Item.create(title: "Carson II 5 Piece Dining Set", description: "What could be more appetizing than an entire dining set offered at an outstanding deal? With its incomparable price and versatile design, this is one of the most popular selections in our menu of collections. The slat back chairs and tapered leg table boast hardwood and veneer construction and a dark brown finish that fits numerous styles and settings", price: 195.99, image: "carson.png", store: dt)]

furnitures.map do |f|
  ItemCategory.create(item: f, category: furniture)
end

toys = Category.create(name: "Toys", title: "Toy Stores")
cars = Category.create(name: "Cars", title: "Car stores")


Store.create(name: "Uncle Randy's Toy Shop", description: "Flashback toys from the 80's", image: "uncle-randys-toy-shop.png")
Store.create(name: "ToyTastic Shop", description: "Flashback toys from the 90's", image: "toytastic-shop.png")
Store.create(name: "Double A's Dodge Dealership", description: "Dodge Vehicles all Day", image: "double-a-dodge-dealership.png")
Store.create(name: "Joel's 80's Rustbuckets", description: "No Lemons we Promise", image: "joels-80-rustbuckets.png")
Store.create(name: "Dan Phillips Car Emporium", description: "The safest vehicles around", image: "dan-phillips-car-emporium.png")



toy_collection = [Item.create(title: "Picachu", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "pikachu.jpeg"),
Item.create(title: "Legos", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "lego-park-lego-furniture.jpg"),
Item.create(title: "Train Set", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "mountain-town-wooden-train-set.jpg"),
Item.create(title: "Buzz Lightyear", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "buzz_lightyear.jpg"),
Item.create(title: "Cabbage Patch", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "cabbage_patch.jpeg"),

Item.create(title: "GI Joe", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "gi-joe.jpg"),
Item.create(title: "Teddy Ruxpin", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "teddy_ruxpin.jpg"),
Item.create(title: "Lite Brite", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "lite_brite.jpeg"),
Item.create(title: "Garfield Stuffed Animal", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "garfield.jpg"),
Item.create(title: "Fisher Price Medical Kit", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "fisher_price_medical_kit.jpg"),

Item.create(title: "Care Bears", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "care_bears.jpeg"),
Item.create(title: "Teenage Mutant Ninja Turtles", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "tmnt.jpg"),
Item.create(title: "Big Wheel", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "big_wheel.jpg"),
Item.create(title: "View Master", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "viewmaster.jpg"),
Item.create(title: "Barbie", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "barbie.jpg"),

Item.create(title: "Transformers", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "transformers.jpg"),
Item.create(title: "Smurfs", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "smurfs.jpg"),
Item.create(title: "Pound Puppies", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "pound_puppies.jpg"),
Item.create(title: "Thunder Cats", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "thundercats.jpg"),
Item.create(title: "My Little Pony", description: Faker::Hipster.sentence, store: Store.find_by(name: "Uncle Randy's Toy Shop"), price: rand(1..100), image: "my_little_pony.jpeg"),

Item.create(title: "Speak & Spell", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "speak_and_spell.jpg"),
Item.create(title: "Little Tikes Cozy Coupe", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "little_tikes_car.jpeg"),
Item.create(title: "Super Soaker", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "super_soaker.jpg"),
Item.create(title: "Talkboy", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "talkboy.jpg"),
Item.create(title: "Tamagotchi", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "tamagotchi.png"),

Item.create(title: "Crossfire", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "Crossfire.jpg"),
Item.create(title: "Polly Pocket", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "polly_pocket.jpg"),
Item.create(title: "Treasure Trolls", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "treasure_trolls.jpg"),
Item.create(title: "Creepy Crawlers", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "creepycrawlers.jpg"),
Item.create(title: "Tickle Me Elmo", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "tickle_me_elmo.jpeg"),

Item.create(title: "Furby", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "furby.jpg"),
Item.create(title: "Street Sharks", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "street_sharks.jpeg"),
Item.create(title: "Batman", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "batman.jpg"),
Item.create(title: "Easy-Bake Oven", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "easy_bake_oven.jpg"),
Item.create(title: "Skip-It", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "Skip_it.jpg"),

Item.create(title: "Power Rangers", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "power_rangers.jpeg"),
Item.create(title: "Beanie Babies", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "beanie_babies.jpg"),
Item.create(title: "Silly Putty", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "silly_putty.jpg"),
Item.create(title: "Slinky", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "slinky.jpeg"),
Item.create(title: "Indiana Jones", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "indiana_jones.JPG"),

Item.create(title: "Hungry Hungry Hippos", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "hungry_hungry_hippos.jpeg"),
Item.create(title: "Mr. Potato Head", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "Mr._Potato_Head.png"),
Item.create(title: "Alf", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "alf.jpg"),
Item.create(title: "Pogo Ball", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "pogo_ball.jpg"),
Item.create(title: "See N Say", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "see_and_say.jpeg"),

Item.create(title: "Play Doh", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "play_doh.jpeg"),
Item.create(title: "Antique Viewmaster", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "antique_viewmaster.jpg"),
Item.create(title: "Hot Wheels", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "hotwheels.jpeg"),
Item.create(title: "YoYo", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "yoyo.jpg"),
Item.create(title: "Pogs", description: Faker::Hipster.sentence, store: Store.find_by(name: "Toytastic Shop"), price: rand(1..100), image: "pogs.jpg")]

toy_collection.map do |t|
  ItemCategory.create(item: t, category: toys)
end

###need to add car items

car_collection = [Item.create(title: "Dodge Ram 1500", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_ram1500.jpeg"),
Item.create(title: "Dodge Ram 2500", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_ram2500.jpeg"),
Item.create(title: "Dodge Ram 3500", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_ram3500.jpeg"),
Item.create(title: "Dodge Journey", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_journey.jpg"),
Item.create(title: "Dodge Durango", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "Dodge_Durango.jpg"),

Item.create(title: "Dodge Canyonero", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_canyonero.jpeg"),
Item.create(title: "Dodge Grand Caravan", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "Dodge-Caravan.jpg"),
Item.create(title: "Dodge Demon", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_demon.jpg"),
Item.create(title: "Dodge Charger", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_charger.jpg"),
Item.create(title: "Dodge Challenger", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_challenger.jpg"),

Item.create(title: "Dodge Dart", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_dart.png"),
Item.create(title: "Dodge Ram Promaster", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_limited_tungsten.jpg"),
Item.create(title: "Dodge Viper", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_harvest_edition.jpg"),
Item.create(title: "Dodge Viper 95", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "1995_dodge_viper.jpeg"),
Item.create(title: "Dodge Challenger 2010", description: Faker::Hipster.sentence, store: Store.find_by(name: "Double A's Dodge Dealership"), price: rand(1000..50000), image: "dodge_challenger.jpg"),


Item.create(title: "Acura Integra 1989", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "acura_integra_1989.jpg"),
Item.create(title: "AMG Hammer 1987", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "amg_hammer_87.jpg"),
Item.create(title: "Audi Quattro", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "audi_quattro.jpg"),
Item.create(title: "BMW M3 1990", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1990-BMW-M3-Sport-Evolution-Front.jpg"),
Item.create(title: "Buick Grand National 1987", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1987_buick_grand_national.JPG"),

Item.create(title: "Chevrolet Camaro IROC-Z 1986", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "86_camaro.JPG"),
Item.create(title: "DeLorean DMC-12 1982", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "delorean_82.jpg"),
Item.create(title: "Dodge Omni Shelby 1985", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "dodge_omni_1985.jpg"),
Item.create(title: "Ferrari F40 1990", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1990_ferrari_f40.jpg"),
Item.create(title: "Ferrari Testarossa 1989", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "ferrari_testarossa_89.jpg"),

Item.create(title: "Ford Mustang 1990", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "90_mustang.jpeg"),
Item.create(title: "Honda CRX Si 1986", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "honda_crx_86.jpg"),
Item.create(title: "Jeep Cherokee 1996", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "jeep_cherokee_96.jpeg"),
Item.create(title: "Lamborghini Countach 1979", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "lamborghini-countach-1979.jpg"),
Item.create(title: "Mazda 323 GTX 1988", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1987-Mazda-RX-7-Turbo-II-07.jpg"),

Item.create(title: "Mazda RX-7 Turbo 2 1987", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "mazda_323_gtx_1988.JPG"),
Item.create(title: "Merkur XR4Ti 1986", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "merkur_1986.jpg"),
Item.create(title: "Mitsubishi Starion 1984", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "mitsubishi_starion_1984.jpg"),
Item.create(title: "Porche 944 Turbo 1988", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1988-Porsche-944-Turbo-S.jpg"),
Item.create(title: "Porche 959 1989", description: Faker::Hipster.sentence, store: Store.find_by(name: "Joel's 80's Rustbuckets"), price: rand(1000..50000), image: "1989_Porsche_959.jpg"),


Item.create(title: "Ford KA", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "Ford_Ka.jpg"),
Item.create(title: "Ford Focus 2000", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "2000_ford_focus.jpg"),
Item.create(title: "Ford Fiesta 2004", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "2004-ford-fiesta.jpeg"),
Item.create(title: "Ford Fusion 2000", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_fusion.jpg"),
Item.create(title: "Ford Taurus 2000", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "2000-Taurus.jpg"),

Item.create(title: "Ford Focus rS 2016", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "2016-Ford-Focus-RS.jpg"),
Item.create(title: "Ford Mustang 1965", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "1965-Ford-Mustang.jpg"),
Item.create(title: "Ford B-Max 2012", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "Ford-B-MAX-2012.jpg"),
Item.create(title: "Ford C-Max 2003", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_cmax_2003.jpg"),
Item.create(title: "Ford S-Max 2009", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_smax_2009.jpeg"),


Item.create(title: "Ford Galaxy 2010", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_galaxy2010.jpg"),
Item.create(title: "Ford Ecosport 2009", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford-ecosport-2009.jpg"),
Item.create(title: "Ford Kuga 2004", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_kuga_2004.jpeg"),
Item.create(title: "Ford Flex 2009", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "ford_flex_2009.jpg"),
Item.create(title: "Ford Edge 2011", description: Faker::Hipster.sentence, store: Store.find_by(name: "Dan Phillips Car Emporium"), price: rand(1000..50000), image: "2011-ford-edge.jpg")]

car_collection.map do |c|
  ItemCategory.create(item: c, category: cars)
end

ants = Store.create!(name: "Ants in My Eyes Johnson's", description: "Our prices, I hope, aren't too low!", image: "j-peterman.png")

    appliances = Category.create(name: "home appliances", title: "Home Appliances")

    appliance_items = [
      Item.create(store: ants, title: "Refridgerator", description: "Keep food cold", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Microwave", description: "Heat food up", price: Faker::Commerce.price),
      Item.create(store: ants, title: "VCR", description: "Outdated but classic", price: Faker::Commerce.price),
      Item.create(store: ants, title: "DVD Player", description: "Streaming has taken its place", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Toaster Oven", description: "The bachelor's dream", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Vacuum Cleaner", description: "Clean up", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Space Heater", description: "Stay warm dude!", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Toaster", description: "Breakfast is served", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Deep Freeze", description: "Keep large amounts of meat", price: Faker::Commerce.price),
      Item.create(store: ants, title: "TV", description: "Cornerstone", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Interdimensional Cable Box", description: "Check out TV from different timelines", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Butter Robot", description: "Passes the butter, SRP baby!", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Meseeks Box", description: "Give it a simple task, or else", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Box Fan", description: "keep cool", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Boombox", description: "Blast the tunes", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Alarm Clock", description: "Wake up Morty!", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Roomba", description: "If you don't want to manually vacuum", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Desk Lamp", description: "Get some work done with proper lighting", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Printer", description: "Print off your emails and then shred them up", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Coffee Maker", description: "For the working stiff", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Crock Pot", description: "Slooooow cook that pork shoulder", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Pressure Cooker", description: "Garbanzo beans come out great", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Waffle Iron", description: "Because who doesn't love waffles", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Blender", description: "Make that smoothie", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Food Processor", description: "Make that pesto", price: Faker::Commerce.price),
      Item.create(store: ants, title: "TV Tray", description: "For TV dinners", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Reading Lamp", description: "Clamp it onto your headboard", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Hot Plate", description: "Makes great grilled cheeses", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Espresso Machine", description: "For the purest", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Bendy Lamp", description: "Works in tight spaces", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Washer", description: "Standard washer", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Dryer", description: "Standard dryer", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Washer/Dryer Stack Combo", description: "Excellent space saver", price: Faker::Commerce.price),
      Item.create(store: ants, title: "The Clapper", description: "Clap on Clap off", price: Faker::Commerce.price),
      Item.create(store: ants, title: "TV Stand", description: "Put the TV on it", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Stand Mixer", description: "Make some dough, or batter", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Immersion Blender", description: "Handy mixing tool", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Panini Press", description: "Make grilled sandwiches", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Iron", description: "Smooth out your clothes", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Can opener", description: "Automatic", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Juicer", description: "All the rage right now", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Dehumidifier", description: "Dry up the air", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Humidifier", description: "Helps with breathing difficulties in dry climates", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Garbage Disposal", description: "Dump food down the drain", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Water Purifier", description: "Take out the heavy metals", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Sewing Machine", description: "Sew it up", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Paper Shredder", description: "To shred up your printed emails", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Smoke Detector", description: "Don't get burnt", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Carbon Monoxide Detector", description: "The silent killer just met its match", price: Faker::Commerce.price),
      Item.create(store: ants, title: "Swamp Cooler", description: "Keep it cool, and dare I say it, moist", price: Faker::Commerce.price)
    ]

    appliance_items.each do |item|
      ItemCategory.create(item: item, category: appliances)
      puts "Adding #{item[:name]} to the Home Appliances category"
    end

    store_a = Store.create!(name: "Francesca's", description: "Clothing and Jewelry", image: "francescas.png")
    store_2 = Store.create!(name: "Trunkt Club", description: "Men's Clothing", image: "trunkt-club.png")
    store_3 = Store.create!(name: "Zippo's", description: "Jewelry", image: "zippos.png")
    store_4 = Store.create!(name: "Smacy's", description: "Jewelry", image: "smacys.png")
    store_5 = Store.create!(name: "J. Peterman", description: "Distinctive Lifestyle Merchandise", image: "j-peterman.png")

    jewelry = Category.create!(name: "jewelry", title: "Jewelry")
    clothes = Category.create!(name: "clothes", title: "Clothes")


    clothes_items = [Item.create(store: store_a, title: "White Dress", description: "With cool designs", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Blue Dress", description: "Plain blue dress", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Black Dress", description: "Plain black dress", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Red Dress", description: "Plain red dress", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Green Dress", description: "Leafs and stuff", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "White Skirt", description: "Who wears white skirts?", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Blue Skirt", description: "Just a blue skirt", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Black Skirt", description: "Goes with everything", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Red Skirt", description: "Doesn't go with as many outfits as the black skirt", price: Faker::Commerce.price),
      Item.create(store: store_a, title: "Green Skirt", description: "Goes with even less outfits", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Searsucker Suit Jacket", description: "Classic pattern for classy dudes", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "White Pinstripe Suit Jacket", description: "Pinstripes are slimming", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Dark Blue Suit Jacket", description: "Versatile, for cocktails or job interviews. Why not both on the same day?", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Tan Suit Jacket", description: "Just a tan suit jacket", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Red Wool Suit Jacket", description: "What?", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Charcoal Suit Jacket", description: "Cool grey vibes", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Black Suit Jacket", description: "Wear to funerals", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Blue Pinstripe Suit Jacket", description: "Really pops", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Brown Suit Jacket", description: "Paintin the town brown", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Orange Suit Jacket", description: "Dumb", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Baby Blue Suit Jacket", description: "and Dumber", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Tan Pants", description: "Tan pants", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Black Pants", description: "Just regular black pants", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Khaki Pants", description: "Play some polo", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "White Pinstripe Pants", description: "Classy pants for a classy dude", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Green Pants", description: "Whoa, calm down there buddy", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Orange Pants", description: "Pretty darn hip", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Short Pants", description: "Pretty much just shorts", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Plaid Tie", description: "Doesn't really go with anything", price: Faker::Commerce.price),
      Item.create(store: store_2, title: "Black Tie", description: "Makes you look serious", price: Faker::Commerce.price),
      Item.create(store: store_5, title: "Urban Sombrero", description: "It combines the spirit of old Mexico with a little big city panache.", price: 125.00),
      Item.create(store: store_5, title: "The Rogue's Wallet", description: "That's where he kept his card, his dirty little secret. Short, devious, balding. his name was Costanza. He killed my mother!", price: 49.99),
      Item.create(store: store_5, title: "Italian Cap Toe Oxfords", description: "Then, in the distance, I heard the bulls. I began running as fast as I could. Fortunately, I was wearing my Italian cap toe oxfords. Sophisticated yet different; nothing to make a huge fuss about. Rich dark brown calfskin leather. Matching leather vent. Men's whole and half sizes 7 through 13", price: 135.00),
      Item.create(store: store_5, title: "Irish Storytelling Sweater", description: "No sleeves because, as any Irishman knows, to tell a good story you need your arms and hands free. Slip it on and you’ll be more entertaining. Even fanciful. Have an unquenchable thirst for Guinness.", price: 148.00),
      Item.create(store: store_5, title: "1924 Football Jersey", description: "1924 Football Jersey (No. 3731). I made this with pure cotton jersey knit. Crew neckline crosses at center front. Full-length sleeves with contrasting stripes. Three-inch ribbed cuffs. Side seams. Quilted elbow patches and yoke. Imported.", price: 89.00),
      Item.create(store: store_5, title: "The Pamplona Beret", description: "...And there, tucked into the river's bend was the object of my search. The Gwon-Jaya River market, fabrics and spices traded under a starlit sky. It was there that I discovered the Pamplona beret. Sizes seven-and-a-half through eight-and-three-quarters.", price: 35.00),
      Item.create(store: store_5, title: "Grouse-Hunting Jacket", description: "To be worn kindly: this splendid Irish tweed grouse-hunting jacket with all the traditional country details, e.g., buttoning throat-latch, rear bi-swing vents and stitched-down Norfolk belt, suede elbow patches.", price: 698.00),
      Item.create(store: store_5, title: "Horseman's Duster", description: "Because it’s cut very long to do the job, it’s unintentionally very flattering. With or without a horse.", price: 379.00),
      Item.create(store: store_5, title: "The Dressy Sneaker", description: "The Dressy Sneaker (No. 5696). Rich cognac leather that will only get better the more you wear it. Navy and olive striping detail. Dark laces contrast sharply with the white rubber sole. Comfortable. Sharp. Different. Imported.", price: 129.00),
      Item.create(store: store_5, title: "The Last Lumberjacks Cotton Shirt", description: "The Last Lumberjack’s Cotton Shirt (No. 5479). 100% heavyweight cotton twill in yarn-dyed plaid. Adjustable button cuffs. Flat-felled seams with three-needle topstitching. Patch pockets with flap-and-button closure. Shirttail hem. Double-layer back yoke with box pleat at center back. Built to last. Imported.", price: 89.00),
      Item.create(store: store_5, title: "Roughside Leather Jacket", description: "Despite an evaporating sense of what is real, or was once real, a few old things mysteriously hold up under the pressure of overexposure, the onslaught of fame. This is one of those things.", price: 349.00),
      Item.create(store: store_5, title: "Otavalo Mountain Shirt", description: "Men will look broad-shouldered, brave, and secretly kind. Their female friends will encourage them to go without shaving for a few days. Women will look narrow-waisted, innocent (but with a hint of wildness) when wearing it with trousers. Worn with a soft skirt and a wide belt? That’s another matter entirely. I don't want to spoil the surprise. Imported.", price: 98.00),
      Item.create(store: store_5, title: "Quilted Chambray Nightshirt", description: "It's a hot night. The mind races. You think about your knife; the only friend who hasn't betrayed you, the only friend who won't be dead by sun up. Sleep tight, mates, in your quilted Chambray nightshirts.", price: 84.98),
      Item.create(store: store_5, title: "Lush Paisley Blazer", description: "Autumn Reflections. The light is different now. Not blinding white like summer. It’s more like old gold, a little more burnished. More fireplaces are blazing. More candles are doing their magic. What’s needed is a superbly-cut velvet blazer in a classic French paisley to subtly capture all that magic in its folds", price: 198.00),
      Item.create(store: store_5, title: "Lambswool Stole", description: "Nothing will get their juices flowing like throwing a luscious Lambswool Stole (No. 5560) in a moody hellebore print over your shoulder. Much more dismissive and dramatic than the hair flip; your agent will be fielding offers soon. 100% lightweight lambswool. Designed in Scotland. Dry clean only.Imported.", price: 198.00),
      Item.create(store: store_5, title: "The Almost Fall Wool Shawl", description: "Easily dressed up with a belt and boots for evening jaunts. Leave it on your sofa and get compliments on your eye-catching throw. Made in India. ", price: 178.00),
      Item.create(store: store_5, title: "The Last Frontier Boot", description: "The Last Frontier Boot (No. 5548). Full-grain leather boot with laser-etched western pattern on foot and upper. Hand-nailed, scoured and distressed leather outsole. Stonewash finishing. Goodyear leather welt and Ariat’s Advanced Torque Stability (ATS) technology for all-day comfort. 1 3/4” heel height, 13” shaft height.  Imported.", price: 239.00),
      Item.create(store: store_5, title: "Black Bowtie Cape", description: "Black Bowtie Cape (No. 2460). Found in a little boutique in Orleans. Made of 100% pure cashmere. Trimmed to waist length with a 9-inch wide collar, three-quarter length bell sleeves and tie front. A definite attention-getter.  ", price: 279.00),
      Item.create(store: store_5, title: "The Tuxedo-Front Dress", description: "Who needs a power suit when you’ve got a dress like this? The navy color is rich, classic, and bold. You’re not suffering fools in this dress and the board knows this.", price: 229.00),
      Item.create(store: store_5, title: "The Quarter-Zip Cashmere Sweater", description: "This 100% cashmere quarter-zip sweater (or pullover if you prefer) is a light 306 grams, exceedingly soft and supple, yet warm enough to do the job.", price: 298.00)]

    jewelry_items = [
      Item.create(store: store_1, title: "Gold Necklace", description: "Pretty chill necklace", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Silver Pendant", description: "Super hip", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Jangly Bracelets", description: "Make a lot of noise", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Big Ruby Ring", description: "This is gawdy", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Dream Catcher Earrings", description: "Cultural appropriation!", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Gold Earrings", description: "Hoops", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Silver Earrings", description: "Dangly things", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Butterfly Wing Earrings", description: "They died naturally", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Ruby Earrings", description: "Faceted rubies", price: Faker::Commerce.price),
      Item.create(store: store_1, title: "Bone Earrings", description: "They're fake bones, chill out", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Emerald Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Ruby Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Sapphire Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Opal Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Topaz Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Jade Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Turquoise Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Tourmaline Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Calcite Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Amethyst Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Citrine Ring", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Gold Bracelet with Emeralds", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Gold Bracelet with Rubies", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Silver Bracelet with Lapis Lazuli", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Silver Bracelet with Jade", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Bronze Necklace", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Sterling Silver Necklace", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Rose Gold Necklace", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Ornate Gold Earrings", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_3, title: "Ornate Silver Earrings", description: "Sparkly", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Bracelet with Diamonds", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Bracelet with Jade", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Bracelet with Sapphire", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Ring with Garnet", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Ring with Topaz", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Bracelet with Topaz", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Bracelet with Lapis Lazuli", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Bracelet with Moonstone", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Bracelet with Rose Quartz", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Bracelet with Amethyst", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Bracelet with Peridot", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Bracelet with Citrine", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver and Gold Bracelet", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Brass Necklace", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Twine Necklace", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Leather Necklace", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Gold Necklace with Blue Tourmaline", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Necklace with Zircon", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Necklace with Amethyst", description: "Shiny", price: Faker::Commerce.price),
      Item.create(store: store_4, title: "Silver Necklace with Watermelon Tourmaline", description: "Shiny", price: Faker::Commerce.price)
    ]


    clothes_items.map do |item|
      ItemCategory.create(item: item, category: clothes)
      puts "Adding #{item[:name]} to the Clothes category"
    end

    puts "Clothes seeded"

    jewelry_items.map do |item|
      ItemCategory.create(item: item, category: jewelry)
      puts "Adding #{item[:name]} to the Jewelry category"
    end

    puts "Jewelry seeded"
