# Product.create!([
#   {name: "blazer", price: "120.0", image_url: "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/fb7eda3c-5ac8-4d05-a18f-1c2c5e82e36e/blazer-mid-77-vintage-mens-shoes-nw30B2.png", description: "black shoes with white laces", inventory: 11},
#   {name: "Stan Smith", price: "80.0", image_url: "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/60a6b827f6b44c56bc35ac5a01572899_9366/Stan_Smith_Shoes_White_Q47226_02_standard_hover.jpg", description: "tennis sneakers", inventory: 8},
#   {name: "samsung_phone", price: "700.0", image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6529/6529328cv18d.jpg;maxHeight=640;maxWidth=550", description: "5g phone", inventory: 14},
#   {name: "Jordan1", price: "80.0", image_url: "data:image/jpeg;base64,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", description: "red and white sneakers", inventory: 10},
#   {name: "DJI-Mavic Pro Drone", price: "80.0", image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6542/6542769cv11d.jpg;maxHeight=640;maxWidth=550", description: "The DJI Mavic 3 Series features next-level imaging performance. Mavic 3 Pro's triple-camera system ushers in a new era of camera drones by housing three sensors and lenses with different focal lengths. ", inventory: 3},
#   {name: "Nike Gym Bag", price: "49.99", image_url: "https://dks.scene7.com/is/image/GolfGalaxy/22NIKUNKGYMCLBSP2TRV_Pl_Vnla_Pl_Vnla_Hypr_Ryl?qlt=70&wid=780&fmt=webp", description: "Double zip main compartment has space for shoes, clothes, and other necessities\nZippered front pocket keeps smaller items organized\nHandles & removable, adjustable shoulder strap make it easy-to-grab and comfortable to carry", inventory: 5}
#])
Image.create!([{url:"https://dks.scene7.com/is/image/GolfGalaxy/21ADIMSTNSMTHPGBLMNS_White_White_Green?qlt=70&wid=992&fmt=webp",product_id:1},
  {url:"https://dks.scene7.com/is/image/GolfGalaxy/FX5502_WhiteWhiteGreen_TOP?wid=2000&fmt=pjpeg", product_id:1},
  {url:"https://scene7.zumiez.com/is/image/zumiez/product_main_medium_2x/Nike-Blazer-Mid--77-White-%26-Black-Leather-Shoes-_352755-front-US.jpg",product_id:2},
  { url:"https://scene7.zumiez.com/is/image/zumiez/product_main_medium_2x/Nike-Blazer-Mid--77-White-%26-Black-Leather-Shoes-_352755-back-US.jpg",product:2},
  {url:"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR11gGozJ2JBiZ8NFeifLCmvegS2RLWKG36AN40VcDFwsdkxfU",product_id:3},
  {
    url:"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6542/6542769cv11d.jpg;maxHeight=640;maxWidth=550",product_id:3
  },
  {url:"https://cdn.staticsoe.com/uploads/50509/cart/resources/20230709/5F3373D0-7FE2-4632-C5A0-A69B11116485.jpg?x-oss-process=image/resize,m_lfit,w_1094",product_id:4 },
  {url:"https://cdn.staticsoe.com/uploads/50509/cart/resources/20230709/5CF2A788-E91A-5C21-8BFD-3DF7266FE3DF.jpg?x-oss-process=image/resize,m_lfit,w_1078",product_id:4},
  {
    url: "https://cdn.staticsoe.com/uploads/50509/cart/resources/20230709/6A0D8D44-26A4-D709-1A49-38751AD754FB.jpg?x-oss-process=image/resize,m_lfit,w_1078",product_id:4},
  {
    url: "https://image-us.samsung.com/us/smartphones/galaxy-s23-ultra/images/gallery/Red/1.jpg?$product-details-jpg$",product_id:5
  },
  {
    url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6529/6529723cv12d.jpg;maxHeight=2000;maxWidth=2000",product_id:5
  }
  ])
