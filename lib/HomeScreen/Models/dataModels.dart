class Product {
  final String id;
  final String name;
  final double price;
  final int discount;
  final double actualPrice;
  final String imageUrl;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.discount,
    required this.actualPrice,
    required this.imageUrl,
    required this.description,
  });
}

class Category {
  final String name;
  final String imageUrl;
  final List<Product> products;

  Category(
      {required this.name, required this.imageUrl, required this.products});
}

List<Category> categories = [
  Category(
    name: 'Fruits',
    imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    products: [
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://i.pinimg.com/236x/3a/e9/3d/3ae93dcb0ec80c3dee6b00809b7ef7b8--dale-pinnock-body-clock.jpg',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://i.pinimg.com/236x/3a/e9/3d/3ae93dcb0ec80c3dee6b00809b7ef7b8--dale-pinnock-body-clock.jpg',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://i.pinimg.com/236x/3a/e9/3d/3ae93dcb0ec80c3dee6b00809b7ef7b8--dale-pinnock-body-clock.jpg',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://i.pinimg.com/236x/3a/e9/3d/3ae93dcb0ec80c3dee6b00809b7ef7b8--dale-pinnock-body-clock.jpg',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      // Add more fruits...
    ],
  ),
  Category(
    name: 'Oil',
    imageUrl:
        'https://3.imimg.com/data3/FG/VY/MY-4043407/vegetable-oils-500x500.png',
    products: [
      Product(
        id: '3',
        name: 'Olive Oil',
        price: 4.99,
        discount: 0,
        actualPrice: 4.99,
        imageUrl: 'https://4.imimg.com/data4/BI/YW/MY-13307250/olive-oil.jpg',
        description:
            'Discover the exquisite flavor and health benefits of our premium olive oil. Extracted from handpicked olives using time-honored methods, our olive oil is a testament to quality and tradition. With its distinctive aroma and rich taste, it elevates every culinary creation and adds a touch of Mediterranean charm to your dishes. Olive oil is renowned for its heart-healthy properties and antioxidant content...',
      ),
      Product(
        id: '4',
        name: 'Canola Oil',
        price: 3.49,
        discount: 15,
        actualPrice: 4.09,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/9/KM/FN/KI/151436396/canola-crude-oil-500x500.jpg',
        description:
            'Experience the versatility and nutritional value of our premium canola oil. Carefully extracted from the finest canola seeds, this oil is a staple in kitchens around the world. Its mild flavor and high smoke point make it ideal for various cooking methods, from sautéing to baking. Canola oil is a heart-healthy choice due to its low saturated fat content and abundance of omega-3 fatty acids...',
      ),
      Product(
        id: '3',
        name: 'Olive Oil',
        price: 4.99,
        discount: 0,
        actualPrice: 4.99,
        imageUrl: 'https://4.imimg.com/data4/BI/YW/MY-13307250/olive-oil.jpg',
        description:
            'Discover the exquisite flavor and health benefits of our premium olive oil. Extracted from handpicked olives using time-honored methods, our olive oil is a testament to quality and tradition. With its distinctive aroma and rich taste, it elevates every culinary creation and adds a touch of Mediterranean charm to your dishes. Olive oil is renowned for its heart-healthy properties and antioxidant content...',
      ),
      Product(
        id: '4',
        name: 'Canola Oil',
        price: 3.49,
        discount: 15,
        actualPrice: 4.09,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/9/KM/FN/KI/151436396/canola-crude-oil-500x500.jpg',
        description:
            'Experience the versatility and nutritional value of our premium canola oil. Carefully extracted from the finest canola seeds, this oil is a staple in kitchens around the world. Its mild flavor and high smoke point make it ideal for various cooking methods, from sautéing to baking. Canola oil is a heart-healthy choice due to its low saturated fat content and abundance of omega-3 fatty acids...',
      ),
      // Add more oils...
    ],
  ),
  Category(
    name: 'Vegetables',
    imageUrl:
        'https://2.imimg.com/data2/SJ/JA/MY-2905706/fresh-vegetables-500x500.jpg',
    products: [
      Product(
        id: '5',
        name: 'Carrot',
        price: 0.49,
        discount: 0,
        actualPrice: 0.49,
        imageUrl:
            'https://4.imimg.com/data4/AT/UX/MY-29565573/fresh-carrot.jpg',
        description:
            'Add a burst of vibrant color and essential nutrients to your meals with our premium carrots. These root vegetables are a treasure trove of vitamins, particularly vitamin A, which supports healthy vision and immune function. Our carrots are cultivated with care and harvested at the peak of freshness to ensure optimal flavor and texture. Whether eaten raw as a crunchy snack or cooked into your favorite dishes...',
      ),
      Product(
        id: '6',
        name: 'Broccoli',
        price: 1.99,
        discount: 0,
        actualPrice: 1.99,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/11/IG/BW/PI/163440635/fresh-broccoli.jpg',
        description:
            'Elevate your diet with the exceptional nutritional profile of our premium broccoli. These verdant florets are rich in vitamins, minerals, and antioxidants that support overall health. Whether steamed, sautéed, or roasted, broccoli adds a delightful crunch and a hint of earthy flavor to your meals. It\'s an excellent source of dietary fiber and vitamin C, contributing to digestion and immune function...',
      ),
      Product(
        id: '5',
        name: 'Carrot',
        price: 0.49,
        discount: 0,
        actualPrice: 0.49,
        imageUrl:
            'https://4.imimg.com/data4/AT/UX/MY-29565573/fresh-carrot.jpg',
        description:
            'Add a burst of vibrant color and essential nutrients to your meals with our premium carrots. These root vegetables are a treasure trove of vitamins, particularly vitamin A, which supports healthy vision and immune function. Our carrots are cultivated with care and harvested at the peak of freshness to ensure optimal flavor and texture. Whether eaten raw as a crunchy snack or cooked into your favorite dishes...',
      ),
      Product(
        id: '6',
        name: 'Broccoli',
        price: 1.99,
        discount: 0,
        actualPrice: 1.99,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/11/IG/BW/PI/163440635/fresh-broccoli.jpg',
        description:
            'Elevate your diet with the exceptional nutritional profile of our premium broccoli. These verdant florets are rich in vitamins, minerals, and antioxidants that support overall health. Whether steamed, sautéed, or roasted, broccoli adds a delightful crunch and a hint of earthy flavor to your meals. It\'s an excellent source of dietary fiber and vitamin C, contributing to digestion and immune function...',
      ),
      // Add more vegetables...
    ],
  ),
  Category(
    name: 'Fruits',
    imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    products: [
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?w=2000',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      Product(
        id: '1',
        name: 'Apple',
        price: 1.99,
        discount: 10,
        actualPrice: 2.49,
        imageUrl: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
        description:
            'Indulge in the crisp and juicy goodness of our premium apples. Hand-picked from the finest orchards, these apples are a symphony of natural flavors and wholesome nutrition. With a delicate balance of sweetness and tanginess, they are a delectable treat that appeals to both kids and adults.Loaded with essential vitamins, antioxidants, and dietary fiber, apples contribute to overall well-being and make a delicious addition to your daily routine...',
      ),
      Product(
        id: '2',
        name: 'Banana',
        price: 0.99,
        discount: 5,
        actualPrice: 1.05,
        imageUrl:
            'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?w=2000',
        description:
            'Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',
      ),
      // Add more fruits...
    ],
  ),
  Category(
    name: 'Oil',
    imageUrl:
        'https://3.imimg.com/data3/FG/VY/MY-4043407/vegetable-oils-500x500.png',
    products: [
      Product(
        id: '3',
        name: 'Olive Oil',
        price: 4.99,
        discount: 0,
        actualPrice: 4.99,
        imageUrl: 'https://4.imimg.com/data4/BI/YW/MY-13307250/olive-oil.jpg',
        description:
            'Discover the exquisite flavor and health benefits of our premium olive oil. Extracted from handpicked olives using time-honored methods, our olive oil is a testament to quality and tradition. With its distinctive aroma and rich taste, it elevates every culinary creation and adds a touch of Mediterranean charm to your dishes. Olive oil is renowned for its heart-healthy properties and antioxidant content...',
      ),
      Product(
        id: '4',
        name: 'Canola Oil',
        price: 3.49,
        discount: 15,
        actualPrice: 4.09,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/9/KM/FN/KI/151436396/canola-crude-oil-500x500.jpg',
        description:
            'Experience the versatility and nutritional value of our premium canola oil. Carefully extracted from the finest canola seeds, this oil is a staple in kitchens around the world. Its mild flavor and high smoke point make it ideal for various cooking methods, from sautéing to baking. Canola oil is a heart-healthy choice due to its low saturated fat content and abundance of omega-3 fatty acids...',
      ),
      Product(
        id: '3',
        name: 'Olive Oil',
        price: 4.99,
        discount: 0,
        actualPrice: 4.99,
        imageUrl: 'https://4.imimg.com/data4/BI/YW/MY-13307250/olive-oil.jpg',
        description:
            'Discover the exquisite flavor and health benefits of our premium olive oil. Extracted from handpicked olives using time-honored methods, our olive oil is a testament to quality and tradition. With its distinctive aroma and rich taste, it elevates every culinary creation and adds a touch of Mediterranean charm to your dishes. Olive oil is renowned for its heart-healthy properties and antioxidant content...',
      ),
      Product(
        id: '4',
        name: 'Canola Oil',
        price: 3.49,
        discount: 15,
        actualPrice: 4.09,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/9/KM/FN/KI/151436396/canola-crude-oil-500x500.jpg',
        description:
            'Experience the versatility and nutritional value of our premium canola oil. Carefully extracted from the finest canola seeds, this oil is a staple in kitchens around the world. Its mild flavor and high smoke point make it ideal for various cooking methods, from sautéing to baking. Canola oil is a heart-healthy choice due to its low saturated fat content and abundance of omega-3 fatty acids...',
      ),
      // Add more oils...
    ],
  ),
  Category(
    name: 'Vegetables',
    imageUrl:
        'https://2.imimg.com/data2/SJ/JA/MY-2905706/fresh-vegetables-500x500.jpg',
    products: [
      Product(
        id: '5',
        name: 'Carrot',
        price: 0.49,
        discount: 0,
        actualPrice: 0.49,
        imageUrl:
            'https://4.imimg.com/data4/AT/UX/MY-29565573/fresh-carrot.jpg',
        description:
            'Add a burst of vibrant color and essential nutrients to your meals with our premium carrots. These root vegetables are a treasure trove of vitamins, particularly vitamin A, which supports healthy vision and immune function. Our carrots are cultivated with care and harvested at the peak of freshness to ensure optimal flavor and texture. Whether eaten raw as a crunchy snack or cooked into your favorite dishes...',
      ),
      Product(
        id: '6',
        name: 'Broccoli',
        price: 1.99,
        discount: 0,
        actualPrice: 1.99,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/11/IG/BW/PI/163440635/fresh-broccoli.jpg',
        description:
            'Elevate your diet with the exceptional nutritional profile of our premium broccoli. These verdant florets are rich in vitamins, minerals, and antioxidants that support overall health. Whether steamed, sautéed, or roasted, broccoli adds a delightful crunch and a hint of earthy flavor to your meals. It\'s an excellent source of dietary fiber and vitamin C, contributing to digestion and immune function...',
      ),
      Product(
        id: '5',
        name: 'Carrot',
        price: 0.49,
        discount: 0,
        actualPrice: 0.49,
        imageUrl:
            'https://4.imimg.com/data4/AT/UX/MY-29565573/fresh-carrot.jpg',
        description:
            'Add a burst of vibrant color and essential nutrients to your meals with our premium carrots. These root vegetables are a treasure trove of vitamins, particularly vitamin A, which supports healthy vision and immune function. Our carrots are cultivated with care and harvested at the peak of freshness to ensure optimal flavor and texture. Whether eaten raw as a crunchy snack or cooked into your favorite dishes...',
      ),
      Product(
        id: '6',
        name: 'Broccoli',
        price: 1.99,
        discount: 0,
        actualPrice: 1.99,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2022/11/IG/BW/PI/163440635/fresh-broccoli.jpg',
        description:
            'Elevate your diet with the exceptional nutritional profile of our premium broccoli. These verdant florets are rich in vitamins, minerals, and antioxidants that support overall health. Whether steamed, sautéed, or roasted, broccoli adds a delightful crunch and a hint of earthy flavor to your meals. It\'s an excellent source of dietary fiber and vitamin C, contributing to digestion and immune function...',
      ),
      // Add more vegetables...
    ],
  ),
  Category(
    name: 'Features',
    imageUrl: 'https://www.example.com/features.png',
    products: [
      Product(
        id: '21',
        name: 'Mango',
        price: 9.99,
        discount: 20,
        actualPrice: 12.49,
        imageUrl:
            'https://5.imimg.com/data5/FH/FZ/UI/SELLER-86819125/25-500x500.jpg',
        description:
            'Discover extraordinary value with our Special Offer 1. This exclusive deal brings you a handpicked selection of premium products at an unbeatable price. Indulge in a range of delicious treats and kitchen essentials that cater to your culinary needs. Whether you\'re a seasoned chef or an aspiring cook, Special Offer 1 is designed to elevate your cooking experience and inspire creativity in the kitchen...',
      ),
      Product(
        id: '22',
        name: 'Dragon Fruit',
        price: 7.49,
        discount: 10,
        actualPrice: 8.49,
        imageUrl:
            'https://5.imimg.com/data5/ANDROID/Default/2022/7/QI/KY/UN/156548763/prod-20220716-1216058204887806273763648-jpg-500x500.jpg',
        description:
            'Embrace the spirit of savings and flavor with our Special Offer 2. This exceptional collection of handpicked products combines premium quality with irresistible value. Whether you\'re planning a special meal or stocking up on essentials, Special Offer 2 has you covered. From delectable snacks to versatile ingredients, each item has been carefully chosen to enhance your culinary repertoire and bring a smile to your face...',
      ),
      Product(
        id: '21',
        name: 'Mango',
        price: 9.99,
        discount: 20,
        actualPrice: 12.49,
        imageUrl:
            'https://5.imimg.com/data5/FH/FZ/UI/SELLER-86819125/25-500x500.jpg',
        description:
            'Discover extraordinary value with our Special Offer 1. This exclusive deal brings you a handpicked selection of premium products at an unbeatable price. Indulge in a range of delicious treats and kitchen essentials that cater to your culinary needs. Whether you\'re a seasoned chef or an aspiring cook, Special Offer 1 is designed to elevate your cooking experience and inspire creativity in the kitchen...',
      ),
      Product(
        id: '22',
        name: 'Dragon Fruit',
        price: 7.49,
        discount: 10,
        actualPrice: 8.49,
        imageUrl:
            'https://5.imimg.com/data5/ANDROID/Default/2022/7/QI/KY/UN/156548763/prod-20220716-1216058204887806273763648-jpg-500x500.jpg',
        description:
            'Embrace the spirit of savings and flavor with our Special Offer 2. This exceptional collection of handpicked products combines premium quality with irresistible value. Whether you\'re planning a special meal or stocking up on essentials, Special Offer 2 has you covered. From delectable snacks to versatile ingredients, each item has been carefully chosen to enhance your culinary repertoire and bring a smile to your face...',
      ),
      // Add more features...
    ],
  ),
  // Add more categories...
];
