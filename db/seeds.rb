# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# To seed the HABTM for Profiles and Cameras, seed the profiles one by one
# while assigning variable names to each profile. Then see each camera while
# assigning variable names to each camera. Finally, shovel the correct profile 
# into each camera and save. The whole process should look like this:
# landscape = Profile.create({style:'landscape'})
# a6000 = Camera.new({attributes})
# a6000 << landscape
# a6000.save

Profile.destroy_all
Review.destroy_all
Camera.destroy_all



landscape = Profile.create({style: 'Landscape'})
portrait = Profile.create({style: 'Portrait'})
nighttime = Profile.create({style: 'Nighttime'})
sports_and_family = Profile.create({style: 'Sports and Family'})
street = Profile.create({style: 'Street'})
travel = Profile.create({style: 'Travel'})


a6000 = Camera.new({ 
    brand: "Sony",
    model: "a6000",
    price: "598.00",
    resolution: "24MP",
    zoom_range: "16-50mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/61m2uvNozqL._SL1200_.jpg",
    description: "Fast, cheap, compact mirrorless camera that works great for a variety of situations and is an excellent value. Great image quality and versatility."
  })
a6000.profiles << landscape
a6000.profiles << sports_and_family
a6000.profiles << street
a6000.profiles << travel
a6000.save

a7ii = Camera.new({ 
    brand: "Sony",
    model: "a7 II",
    price: "1799.00",
    resolution: "24MP",
    zoom_range: "28-70mm",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/71G2PIzqK2L._SL1200_.jpg",
    description: "Large sensor, high quality camera with advanced image stabilization and excellent image quality."
  })
a7ii.profiles << landscape
a7ii.profiles << portrait
a7ii.profiles << nighttime
a7ii.profiles << street
a7ii.profiles << travel
a7ii.save

nx1 = Camera.new({ 
    brand: "Samsung",
    model: "NX1",
    price: "1499.99",
    resolution: "28MP",
    zoom_range: "16-50mm",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/81GyVQkh-oL._SL1500_.jpg",
    description: "Exceptionally versatile camera that earns high marks for speed, image quality, low-light performance, and 4k video recording. One of the hottest cameras in its segment."
  })
nx1.profiles << landscape
nx1.profiles << portrait
nx1.profiles << nighttime
nx1.profiles << sports_and_family
nx1.profiles << street
nx1.profiles << travel
nx1.save

nx300 = Camera.new({ 
    brand: "Samsung",
    model: "NX300",
    price: "569.00",
    resolution: "20MP",
    zoom_range: "18-55mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/61hk8YYJnPL._SL1000_.jpg",
    description: "Modern .profilesfeatures like a swiveling touch screen and wireless capabiility define this entry level camera."
  })
nx300.profiles << portrait
nx300.profiles << sports_and_family
nx300.save

em5 = Camera.new({ 
    brand: "Olympus",
    model: "OM-D EM-5 II",
    price: "1248.00",
    resolution: "16MP",
    zoom_range: "14-42mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/41KGJ%2BSFKLL.jpg",
    description: "An excellent introduction into the world of mirrorless. Great handling, image stabilization, quality, and selection of lenses. Known as a fun-to-shoot portable camera that makes the perfect travel mate. Does not have flash built-in."
  })
em5.profiles << portrait
em5.profiles << nighttime
em5.profiles << sports_and_family
em5.profiles << street
em5.profiles << travel
em5.save

em10 = Camera.new({ 
    brand: "Olympus",
    model: "OM-D EM-10",
    price: "499.00",
    resolution: "16MP",
    zoom_range: "14-42mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/91Q1YHBxOtL._SL1500_.jpg",
    description: "Fantastic entry level mirrorless camera. Great handling, image stabilization, quality, and selection of lenses. Compact and perfect for travel, not the best option for video or night shooting."
  })
em10.profiles << portrait
em10.profiles << street
em10.save

xe2 = Camera.new({ 
    brand: "Fuji",
    model: "X-E2",
    price: "999.00",
    resolution: "16MP",
    zoom_range: "18-55mm",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/81fnd8%2B3yML._SL1500_.jpg",
    description: "Fuji offers high quality mirrorless cameras with high quality lenses, and this one comes in at a relative bargain for the package. It is one of the best still photograpy cameras at the price point, but has below average video capabilities."
  })
xe2.profiles << landscape
xe2.profiles << portrait
xe2.profiles << nighttime
xe2.profiles << street
xe2.save

xt1 = Camera.new({ 
    brand: "Fuji",
    model: "X-T1",
    price: "1499.95",
    resolution: "16MP",
    zoom_range: "18-55mm",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/81UmRd5xoBL._SL1500_.jpg",
    description: "There's no better way to learn photography than with a camera that offers full manual control at your fingertips. Fuji's X-T1 is one of the highest rated mirrorless cameras of the year and boasts excellent image quality."
  })
xt1.profiles << landscape
xt1.profiles << portrait
xt1.profiles << nighttime
xt1.profiles << sports_and_family
xt1.profiles << street
xt1.profiles << travel
xt1.save

gx7 = Camera.new({ 
    brand: "Panasonic",
    model: "Lumix GX7",
    price: "797.99",
    resolution: "16MP",
    zoom_range: "14-42mm",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/81fV%2BpbQ8TL._SL1500_.jpg",
    description: "A compact camera that delivers on both image and video quality. It is missing a few features compared to newer mirrorless models, but it still serves as an almost ideal companion for a street photographer."
  })
gx7.profiles << portrait
gx7.profiles << sports_and_family
gx7.profiles << street
gx7.save

j5 = Camera.new({ 
    brand: "Nikon",
    model: "1 J5",
    price: "496.95",
    resolution: "20MP",
    zoom_range: "10-30mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/91faFTktxgL._SL1500_.jpg",
    description: "The Nikon J5 makes up for its smaller sensor with incrediblly fast autofocus and shooting. Its portability and speed makes it ideal for home shooter or as an easy travel camera."
  })
j5.profiles << sports_and_family
j5.save

lx100 = Camera.new({ 
    brand: "Panasonic",
    model: "Lumix DMC-LX100",
    price: "779.99",
    resolution: "12.8MP",
    zoom_range: "3.1X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/81mJaWTxvtL._SL1500_.jpg",
    description: "Really good photo and video quality, and a great set of features, manual controls, fast lens, great for shallow depth of field, good low-light shooting, not as portable."
  })
lx100.profiles << landscape
lx100.profiles << portrait
lx100.profiles << nighttime
lx100.profiles << sports_and_family
lx100.profiles << street
lx100.profiles << travel
lx100.save

rx100 = Camera.new({ 
    brand: "Sony",
    model: "Cybershot RX-100 Mark III",
    price: "799.00",
    resolution: "20.9MP",
    zoom_range: "24-70mm",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/61DLUsi1h8L._SL1200_.jpg",
    description: "Great pop-up electronic viewfinder, excellent performance, great photo and video quality, fast lens, good low-light shooting, lots of tools for shooting video."
  })
rx100.profiles << landscape
rx100.profiles << portrait
rx100.profiles << nighttime
rx100.profiles << sports_and_family
rx100.profiles << street
rx100.profiles << travel
rx100.save

g7x = Camera.new({ 
    brand: "Canon",
    model: "Powershot G7X",
    price: "649.00",
    resolution: "20.2MP",
    zoom_range: "4.2X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/810GiAMVEWL._SL1500_.jpg",
    description: "Excellent photo quality, shoots a bit slow, long lens that is great for portraiture, multi-angle LCD that is selfie-friendly. Built in wifi and NFC."
  })
g7x.profiles << landscape
g7x.profiles << portrait
g7x.profiles << street
g7x.profiles << travel
g7x.save

stylus = Camera.new({ 
    brand: "Olympus",
    model: "Stylus 1",
    price: "599.00",
    resolution: "12MP",
    zoom_range: "10.7X",
    portability: 2,
    product_photo: "http://ecx.images-amazon.com/images/I/91OVAUq1XDL._SL1500_.jpg",
    description: "Excellent zoom lens, fine photo quality, excellent shooting performance. It has a touch screen and lots of control."
  })
stylus.profiles << sports_and_family
stylus.profiles << street
stylus.profiles << travel
stylus.save

sx700 = Camera.new({ 
    brand: "Canon",
    model: "Powershot SX700 HS",
    price: "279.00",
    resolution: "16MP",
    zoom_range: "30X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/71kFG%2BL4a2L._SL1500_.jpg",
    description: "Excellent zoom lens, fun shooting options, low-light photos could be better."
  })
sx700.profiles << sports_and_family
sx700.profiles << street
sx700.save

sx600 = Camera.new({ 
    brand: "Canon",
    model: "Powershot SX600 HS",
    price: "249.00",
    resolution: "16MP",
    zoom_range: "18X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/711HOSc%2BtiL._SL1500_.jpg",
    description: "Very good photo and video quality, good zoom range with optical image stabilization, very portable, lens is slow, low-light photo and video are not great."
  })
sx600.profiles << sports_and_family
sx600.profiles << street
sx600.save

n100 = Camera.new({ 
    brand: "Canon",
    model: "Powershot N100",
    price: "349.00",
    resolution: "12MP",
    zoom_range: "5X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/71KCX3cYnDL._SL1500_.jpg",
    description: "Fast lens, good low-light photos, tilt LCD touch panel, great shooting performance."
  })
n100.profiles << nighttime
n100.profiles << sports_and_family
n100.profiles << street
n100.save

galaxy2 = Camera.new({ 
    brand: "Samsung",
    model: "Galaxy Camera 2",
    price: "359.00",
    resolution: "16MP",
    zoom_range: "21X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/612KhxwYLkL._SL1200_.jpg",
    description: "Well connected camera which uses Wifi and NFC very well, big & beautiful touchscreen, photo quality is ok, long zoom lens."
  })
galaxy2.profiles << portrait
galaxy2.save

s9700 = Camera.new({ 
    brand: "Nikon",
    model: "Coolpix S9700",
    price: "276.99",
    resolution: "16MP",
    zoom_range: "30X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/81x9ceg0fUL._SL1500_.jpg",
    description: "Great zoom lens, good shooting performance, good photo and video quality, built-in GPS."
  })
s9700.profiles << sports_and_family
s9700.save

wb350f = Camera.new({ 
    brand: "Samsung",
    model: "Smart Camera WB350F",
    price: "199.00",
    resolution: "16MP",
    zoom_range: "21X",
    portability: 3,
    product_photo: "http://ecx.images-amazon.com/images/I/411bYPHReSL.jpg",
    description: "Good zoom lens with optical image stabilization, wireless features make it easy to share photos, photo quality is ok."
  })
wb350f.profiles << sports_and_family
wb350f.save

d5500 = Camera.new({ 
    brand: "Nikon",
    model: "D5500",
    price: "999.95",
    resolution: "24.2MP",
    zoom_range: "18-55mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/91dUom9AFTL._SL1500_.jpg",
    description: "Fully articulated touchscreen, compact size, broad feature set, built in wifi and smartphone compatabilty."
  })
d5500.profiles << portrait
d5500.profiles << sports_and_family
d5500.profiles << travel
d5500.save

d5300 = Camera.new({ 
    brand: "Nikon",
    model: "D5300",
    price: "899.95",
    resolution: "24.2MP",
    zoom_range: "18-55mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/8181BxrBzeL._SL1500_.jpg",
    description: "Excellent photo quality, great feature set, speedy performance"
  })
d5300.profiles << portrait
d5300.profiles << sports_and_family
d5300.save

rebel_t5i = Camera.new({ 
    brand: "Canon",
    model: "EOS Rebel T5i",
    price: "799.00",
    resolution: "18MP",
    zoom_range: "18-55mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/81vDPWCAZ1L._SL1500_.jpg",
    description: "Great articulated touchscreen that's optimized for video, excellent photo quality,and solid video, limited feature set."
  })
rebel_t5i.profiles << portrait
rebel_t5i.profiles << sports_and_family
rebel_t5i.profiles << street
rebel_t5i.profiles << travel
rebel_t5i.save

d3300 = Camera.new({ 
    brand: "Nikon",
    model: "D3300",
    price: "496.00",
    resolution: "24MP",
    zoom_range: "18-55mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/81aLEVAFXnL._SL1500_.jpg",
    description: "Very good photo quality, but a bit slow, feature set limited."
  })
d3300.profiles << portrait
d3300.save

rebel_sl1 = Camera.new({ 
    brand: "Canon",
    model: "EOS Rebel SL1",
    price: "499.00",
    resolution: "18MP",
    zoom_range: "18-55mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/81cjAYUdknL._SL1500_.jpg",
    description: "Good photo and video quality, slim on features, small and light, good LCD with touchscreen, useful night modes."
  })
rebel_sl1.profiles << nighttime
rebel_sl1.profiles << street
rebel_sl1.profiles << travel
rebel_sl1.save

canon_7dii = Camera.new({ 
    brand: "Canon",
    model: "7D Mark II",
    price: "2049.00",
    resolution: "20MP",
    zoom_range: "18-135mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/81Lg4CxvdtL._SL1500_.jpg",
    description: "Accurate, fast autofocus and solid handling makes this a great camera for general use. Also excels at 1080p video recording and allows you to use Canon's wide variety of lenses."
  })
canon_7dii.profiles << portrait
canon_7dii.profiles << nighttime
canon_7dii.profiles << sports_and_family
canon_7dii.save

d7100 = Camera.new({ 
    brand: "Nikon",
    model: "D7100",
    price: "1196.95",
    resolution: "24MP",
    zoom_range: "18-140mm",
    portability: 1,
    product_photo: "http://static.bhphoto.com/images/images500x500/1005009.jpg",
    description: "One of the class-defining mid-range dSLRs on the market today. Offers excellent image quality, great dynamic range, and is very durable. Nikon's system of lenses also makes this a great long-term proposition."
  })
d7100.profiles << landscape
d7100.profiles << portrait
d7100.profiles << nighttime
d7100.profiles << sports_and_family
d7100.save

d610 = Camera.new({ 
    brand: "Nikon",
    model: "D610",
    price: "1996.95",
    resolution: "24MP",
    zoom_range: "24-85mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/91H7k72zkNL._SL1500_.jpg",
    description: "This is the entry point into the world of full-frame sensors in dSLR, and a solid option for aspiring landscape photographers. Heavy duty durability and the large sensor make this ideal for capturing rich details."
  })
d610.profiles << landscape
d610.profiles << portrait
d610.profiles << nighttime
d610.profiles << travel
d610.save

canon_70d = Camera.new({ 
    brand: "Canon",
    model: "70D",
    price: "1249.00",
    resolution: "20MP",
    zoom_range: "18-135mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/81a3i770zFL._SL1500_.jpg",
    description: "In close competition with Nikon's D7100, Canon's 70D is an excellent option for more video-oriented shooters with its Dual Pixel autofocus system."
  })
canon_70d.profiles << portrait
canon_70d.profiles << nighttime
canon_70d.profiles << sports_and_family
canon_70d.profiles << travel
canon_70d.save

a77ii = Camera.new({ 
    brand: "Sony",
    model: "a77 II",
    price: "1498.00",
    resolution: "24MP",
    zoom_range: "16-50mm",
    portability: 1,
    product_photo: "http://ecx.images-amazon.com/images/I/914J1Pyr2gL._SL1500_.jpg",
    description: "The Sony a77 II excels at high-speed autofocus and shooting, ideal for sports, action, and families. Includes built-in flash and gives you access to Sony's top-tier Zeiss lenses should you grow to require them."
  })
a77ii.profiles << portrait
a77ii.profiles << nighttime
a77ii.profiles << sports_and_family
a77ii.profiles << travel
a77ii.save


# review1 = Review.new({
#     rating: 10,
#     description: "I had an XSi and a T5i. This is a big step up in the quality of workmanship. The live view focus is amazingly fast and accurate. Ultimately more accurate than the viewfinder. Makes live view shooting and video shooting a real joy. Dual dials make adjustments quick and easy. Ability to customize HDR, multiple exposures, etc. give great control. 7 fps are great. The only thing I'd like to see is giving the white balance its own button. Very happy to recommend this fine camera."
#     })
# review1.camera_id = Camera.first.id
# review1.save

# review2 = Review.new({
#     rating: 10,
#     description: "I had an XSi and a T5i. This is a big step up in the quality of workmanship. The live view focus is amazingly fast and accurate. Ultimately more accurate than the viewfinder. Makes live view shooting and video shooting a real joy. Dual dials make adjustments quick and easy. Ability to customize HDR, multiple exposures, etc. give great control. 7 fps are great. The only thing I'd like to see is giving the white balance its own button. Very happy to recommend this fine camera."
#     })
# review2.camera_id = Camera.first.id
# review2.save

# review3 = Review.new({
#     rating: 10,
#     description: "I had an XSi and a T5i. This is a big step up in the quality of workmanship. The live view focus is amazingly fast and accurate. Ultimately more accurate than the viewfinder. Makes live view shooting and video shooting a real joy. Dual dials make adjustments quick and easy. Ability to customize HDR, multiple exposures, etc. give great control. 7 fps are great. The only thing I'd like to see is giving the white balance its own button. Very happy to recommend this fine camera."
#     })
# review3.camera_id = Camera.first.id
# review3.save

1.upto(30) do |i|
    review = Review.new({
        rating: 5,
        description: "I had an XSi and a T5i. This is a big step up in the quality of workmanship. The live view focus is amazingly fast and accurate. Ultimately more accurate than the viewfinder. Makes live view shooting and video shooting a real joy. Dual dials make adjustments quick and easy. Ability to customize HDR, multiple exposures, etc. give great control. 7 fps are great. The only thing I'd like to see is giving the white balance its own button. Very happy to recommend this fine camera."
        })
    camera = Camera.find_by id: "#{i}"
    review.camera_id = camera.id
    review.save
end

1.upto(30) do |i|
    review = Review.new({
        rating: 4,
        description: "I bought this camera to replace my 6-year-old Nikon D60. This camera body is AWESOME !!! I'm loving the touch screen and the ease with which you can change the settings. Its also pretty fast and quiet and very light. Has video option as well. I'm using this inexpensive camera to take pictures of my friends, kids, travels. Its not a professional grade, but perfect for someone like me, using it to capture family memories. Absolutely worth the money!"
        })
    camera = Camera.find_by id: "#{i}"
    review.camera_id = camera.id
    review.save
end

1.upto(30) do |i|
    review = Review.new({
        rating: 5,
        description: "This is as good as it gets in terms of size and quality. The photos are amazing and it's only slightly larger than most pocket point and shoots. It has the full range of manual controls and does HD video. I used to like the G and S lines, which are still good, but this beats them. It's in the middle of their sizes but has a larger sensor. The G1X has an even bigger sensor, but is too bulky to carry around all the time, especially when traveling. This is now my go to camera."
        })
    camera = Camera.find_by id: "#{i}"
    review.camera_id = camera.id
    review.save
end


