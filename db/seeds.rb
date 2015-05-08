# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Camera.destroy_all

Camera.create([
  { 
    brand: "Sony",
    model: "a6000",
    price: "598.00",
    resolution: "24MP",
    zoom_range: "16-50mm",
    product_photo: "http://ecx.images-amazon.com/images/I/61m2uvNozqL._SL1200_.jpg",
    description: "Fast, cheap, compact mirrorless camera that works great for a variety of situations and is an excellent value. Great image quality and versatility."
  },
  { 
    brand: "Sony",
    model: "a7 II",
    price: "1799.00",
    resolution: "24MP",
    zoom_range: "28-70mm",
    product_photo: "http://ecx.images-amazon.com/images/I/71G2PIzqK2L._SL1200_.jpg",
    description: "Large sensor, high quality camera with advanced image stabilization and excellent image quality."
  },
  { 
    brand: "Samsung",
    model: "NX1",
    price: "1499.99",
    resolution: "28MP",
    zoom_range: "16-50mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81GyVQkh-oL._SL1500_.jpg",
    description: "Exceptionally versatile camera that earns high marks for speed, image quality, low-light performance, and 4k video recording. One of the hottest cameras in its segment."
  },
  { 
    brand: "Samsung",
    model: "NX300",
    price: "569.00",
    resolution: "20MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/61hk8YYJnPL._SL1000_.jpg",
    description: "Modern features like a swiveling touch screen and wireless capabiility define this entry level camera."
  },
  { 
    brand: "Olympus",
    model: "OM-D EM-5 II",
    price: "1248.00",
    resolution: "16MP",
    zoom_range: "14-42mm",
    product_photo: "http://ecx.images-amazon.com/images/I/41KGJ%2BSFKLL.jpg",
    description: "An excellent introduction into the world of mirrorless. Great handling, image stabilization, quality, and selection of lenses. Known as a fun-to-shoot portable camera that makes the perfect travel mate. Does not have flash built-in."
  },
  { 
    brand: "Olympus",
    model: "OM-D EM-10",
    price: "499.00",
    resolution: "16MP",
    zoom_range: "14-42mm",
    product_photo: "http://ecx.images-amazon.com/images/I/91Q1YHBxOtL._SL1500_.jpg",
    description: "Fantastic entry level mirrorless camera. Great handling, image stabilization, quality, and selection of lenses. Compact and perfect for travel, not the best option for video or night shooting."
  },
  { 
    brand: "Fuji",
    model: "X-E2",
    price: "999.00",
    resolution: "16MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81fnd8%2B3yML._SL1500_.jpg",
    description: "Fuji offers high quality mirrorless cameras with high quality lenses, and this one comes in at a relative bargain for the package. It is one of the best still photograpy cameras at the price point, but has below average video capabilities."
  },
  { 
    brand: "Fuji",
    model: "X-T1",
    price: "1499.95",
    resolution: "16MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81UmRd5xoBL._SL1500_.jpg",
    description: "There's no better way to learn photography than with a camera that offers full manual control at your fingertips. Fuji's X-T1 is one of the highest rated mirrorless cameras of the year and boasts excellent image quality."
  },
  { 
    brand: "Panasonic",
    model: "Lumix GX7",
    price: "797.99",
    resolution: "16MP",
    zoom_range: "14-42mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81fV%2BpbQ8TL._SL1500_.jpg",
    description: "A compact camera that delivers on both image and video quality. It is missing a few features compared to newer mirrorless models, but it still serves as an almost ideal companion for a street photographer."
  },
  { 
    brand: "Nikon",
    model: "1 J5",
    price: "496.95",
    resolution: "20MP",
    zoom_range: "10-30mm",
    product_photo: "http://ecx.images-amazon.com/images/I/91faFTktxgL._SL1500_.jpg",
    description: "The Nikon J5 makes up for its smaller sensor with incrediblly fast autofocus and shooting. Its portability and speed makes it ideal for home shooter or as an easy travel camera."
  },
  { 
    brand: "Panasonic",
    model: "Lumix DMC-LX100",
    price: "779.99",
    resolution: "12.8MP",
    zoom_range: "3.1X",
    product_photo: "http://ecx.images-amazon.com/images/I/81mJaWTxvtL._SL1500_.jpg",
    description: "Really good photo and video quality, and a great set of features, manual controls, fast lens, great for shallow depth of field, good low-light shooting, not as portable."
  },
  { 
    brand: "Sony",
    model: "Cybershot RX-100 Mark III",
    price: "799.00",
    resolution: "20.9MP",
    zoom_range: "24-70mm",
    product_photo: "http://ecx.images-amazon.com/images/I/61DLUsi1h8L._SL1200_.jpg",
    description: "Great pop-up electronic viewfinder, excellent performance, great photo and video quality, fast lens, good low-light shooting, lots of tools for shooting video."
  },
  { 
    brand: "Canon",
    model: "Powershot G7X",
    price: "649.00",
    resolution: "20.2MP",
    zoom_range: "4.2X",
    product_photo: "http://ecx.images-amazon.com/images/I/810GiAMVEWL._SL1500_.jpg",
    description: "Excellent photo quality, shoots a bit slow, long lens that is great for portraiture, multi-angle LCD that is selfie-friendly. Built in wifi and NFC."
  },
  { 
    brand: "Olympus",
    model: "Stylus 1",
    price: "599.00",
    resolution: "12MP",
    zoom_range: "10.7X",
    product_photo: "http://ecx.images-amazon.com/images/I/91OVAUq1XDL._SL1500_.jpg",
    description: "Excellent zoom lens, fine photo quality, excellent shooting performance. It has a touch screen and lots of control."
  },
  { 
    brand: "Canon",
    model: "Powershot SX700 HS",
    price: "279.00",
    resolution: "16MP",
    zoom_range: "30X",
    product_photo: "http://ecx.images-amazon.com/images/I/71kFG%2BL4a2L._SL1500_.jpg",
    description: "Excellent zoom lens, fun shooting options, low-light photos could be better."
  },
  { 
    brand: "Canon",
    model: "Powershot SX600 HS",
    price: "249.00",
    resolution: "16MP",
    zoom_range: "18X",
    product_photo: "http://ecx.images-amazon.com/images/I/711HOSc%2BtiL._SL1500_.jpg",
    description: "Very good photo and video quality, good zoom range with optical image stabilization, very portable, lens is slow, low-light photo and video are not great."
  },
  { 
    brand: "Canon",
    model: "Powershot N100",
    price: "349.00",
    resolution: "12MP",
    zoom_range: "5X",
    product_photo: "http://ecx.images-amazon.com/images/I/71KCX3cYnDL._SL1500_.jpg",
    description: "Fast lens, good low-light photos, tilt LCD touch panel, great shooting performance."
  },
  { 
    brand: "Samsung",
    model: "Galaxy Camera 2",
    price: "359.00",
    resolution: "16MP",
    zoom_range: "21X",
    product_photo: "http://ecx.images-amazon.com/images/I/612KhxwYLkL._SL1200_.jpg",
    description: "Well connected camera which uses Wifi and NFC very well, big & beautiful touchscreen, photo quality is ok, long zoom lens."
  },
  { 
    brand: "Nikon",
    model: "Coolpix S9700",
    price: "276.99",
    resolution: "16MP",
    zoom_range: "30X",
    product_photo: "http://ecx.images-amazon.com/images/I/81x9ceg0fUL._SL1500_.jpg",
    description: "Great zoom lens, good shooting performance, good photo and video quality, built-in GPS."
  },
  { 
    brand: "Samsung",
    model: "Smart Camera WB350F",
    price: "199.00",
    resolution: "16MP",
    zoom_range: "21X",
    product_photo: "http://ecx.images-amazon.com/images/I/411bYPHReSL.jpg",
    description: "Good zoom lens with optical image stabilization, wireless features make it easy to share photos, photo quality is ok."
  },
  { 
    brand: "Nikon",
    model: "D5500",
    price: "999.95",
    resolution: "24.2MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/91dUom9AFTL._SL1500_.jpg",
    description: "Fully articulated touchscreen, compact size, broad feature set, built in wifi and smartphone compatabilty."
  },
  { 
    brand: "Nikon",
    model: "D5300",
    price: "899.95",
    resolution: "24.2MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/8181BxrBzeL._SL1500_.jpg",
    description: "Excellent photo quality, great feature set, speedy performance"
  },
  { 
    brand: "Canon",
    model: "EOS Rebel T5i",
    price: "799.00",
    resolution: "18MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81vDPWCAZ1L._SL1500_.jpg",
    description: "Great articulated touchscreen that's optimized for video, excellent photo quality,and solid video, limited feature set."
  },
  { 
    brand: "Nikon",
    model: "D3300",
    price: "496.00",
    resolution: "24MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81aLEVAFXnL._SL1500_.jpg",
    description: "Very good photo quality, but a bit slow, feature set limited."
  },
  { 
    brand: "Canon",
    model: "EOS Rebel SL1",
    price: "499.00",
    resolution: "18MP",
    zoom_range: "18-55mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81cjAYUdknL._SL1500_.jpg",
    description: "Good photo and video quality, slim on features, small and light, good LCD with touchscreen, useful night modes."
  },
  { 
    brand: "Canon",
    model: "7D Mark II",
    price: "2049.00",
    resolution: "20MP",
    zoom_range: "18-135mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81Lg4CxvdtL._SL1500_.jpg",
    description: "Accurate, fast autofocus and solid handling makes this a great camera for general use. Also excels at 1080p video recording and allows you to use Canon's wide variety of lenses."
  },
  { 
    brand: "Nikon",
    model: "D7100",
    price: "1196.95",
    resolution: "24MP",
    zoom_range: "18-140mm",
    product_photo: "http://static.bhphoto.com/images/images500x500/1005009.jpg",
    description: "One of the class-defining mid-range dSLRs on the market today. Offers excellent image quality, great dynamic range, and is very durable. Nikon's system of lenses also makes this a great long-term proposition."
  },
  { 
    brand: "Nikon",
    model: "D610",
    price: "1996.95",
    resolution: "24MP",
    zoom_range: "24-85mm",
    product_photo: "http://ecx.images-amazon.com/images/I/91H7k72zkNL._SL1500_.jpg",
    description: "This is the entry point into the world of full-frame sensors in dSLR, and a solid option for aspiring landscape photographers. Heavy duty durability and the large sensor make this ideal for capturing rich details."
  },
  { 
    brand: "Canon",
    model: "70D",
    price: "1249.00",
    resolution: "20MP",
    zoom_range: "18-135mm",
    product_photo: "http://ecx.images-amazon.com/images/I/81a3i770zFL._SL1500_.jpg",
    description: "In close competition with Nikon's D7100, Canon's 70D is an excellent option for more video-oriented shooters with its Dual Pixel autofocus system."
  },
  { 
    brand: "Sony",
    model: "a77 II",
    price: "1498.00",
    resolution: "24MP",
    zoom_range: "16-50mm",
    product_photo: "http://ecx.images-amazon.com/images/I/914J1Pyr2gL._SL1500_.jpg",
    description: "The Sony a77 II excels at high-speed autofocus and shooting, ideal for sports, action, and families. Includes built-in flash and gives you access to Sony's top-tier Zeiss lenses should you grow to require them."
  }
])