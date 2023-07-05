import 'package:ethio_tour/models/categorie/category_model.dart';

List<Place> places = const [
  Place(
    id: 1,
    name: "Axum",
    desc:
        "Ancient city, once the center of the Axumite Kingdom, known for its tall granite obelisks, ancient tombs, and the Church of Our Lady Mary of Zion.",
    region: "Tigray",
    latitude: 14.1313,
    longitude: 38.7724,
    pictures: [
      "https://media.istockphoto.com/id/186914973/photo/obelisk-in-the-aksum-kingdom-ethiopia.jpg?s=612x612&w=0&k=20&c=xcINJxnz71uvfROg0uby9QrRlyNeQesLkWr5JLnXmGE=",
      "https://media.istockphoto.com/id/1288717168/photo/famous-area-of-the-rock-stelaes-axum-ethiopia.jpg?s=612x612&w=0&k=20&c=3tmpX3PCyoxs6uJIojH9jQty50A4VKbe4SVjDXzK3dc=",
      "https://i.pinimg.com/564x/94/d1/6f/94d16f84ee095f427a478c8de52bbfe5.jpg",
      "https://i.pinimg.com/564x/89/33/fe/8933fee37384529cc841d722637759ac.jpg"
          ""
    ],
    category: "Historical",
    rating: 4.5,
  ),
  Place(
    id: 2,
    name: "Lalibela",
    desc:
        "Famous for its 11 monolithic rock-cut churches, which are considered some of the world's most incredible man-made creations, dating back to the 12th and 13th centuries.",
    region: "Amhara",
    latitude: 12.0316,
    longitude: 39.0475,
    pictures: [
      "https://i.pinimg.com/564x/fb/2e/93/fb2e93e9a2a02d3c791a8b5a4072a88f.jpg",
      "https://i.pinimg.com/564x/fe/ab/db/feabdbd7ed3fd59843169e3f50a04dc5.jpg",
      "https://i.pinimg.com/564x/4e/4f/39/4e4f39f921bff5e49abc0a4575554823.jpg",
      "https://i.pinimg.com/564x/f6/97/7e/f6977e91fc7dfae74372d24cf8560c50.jpg"
          "https://i.pinimg.com/564x/7a/0c/c6/7a0cc69a9482dd5a19d45c07464985e7.jpg",
    ],
    category: "Historical",
    rating: 4.7,
  ),
  Place(
    id: 3,
    name: "Gondar",
    desc:
        "Known as the 'Camelot of Africa', Gondar is home to numerous castles and palaces built by Emperor Fasilides in the 17th century, showcasing unique Ethiopian architecture.",
    region: "Amhara",
    latitude: 12.6030,
    longitude: 37.4521,
    pictures: [
      "https://i.pinimg.com/564x/06/7d/38/067d38f3605c3a422589a46368dd1e99.jpg",
      "https://i.pinimg.com/564x/c2/d8/d9/c2d8d980491b4ba77a76379b6b05825e.jpg",
      "https://i.pinimg.com/564x/b1/b1/41/b1b141e02a945d70af7cfb50deabbd02.jpg",
      "https://i.pinimg.com/564x/9c/08/5b/9c085bea60386500d9be6121a0cbea73.jpg",
      "https://i.pinimg.com/564x/df/8b/83/df8b8373ba854de92c48ca4bc7144448.jpg",
      "https://i.pinimg.com/564x/ed/ef/4a/edef4a6f94f05f254e794c29eabd17a6.jpg"
    ],
    category: "Historical",
    rating: 4.3,
  ),
  Place(
    id: 4,
    name: "Harar",
    desc:
        "An ancient walled city, Harar is a UNESCO World Heritage site, renowned for its Islamic architecture, narrow alleyways, and colorful markets.",
    region: "Harari",
    latitude: 9.3127,
    longitude: 42.1279,
    pictures: [
      "https://i.pinimg.com/736x/a7/09/c9/a709c9b359f95727c3484fddf0a9880c.jpg",
      "https://i.pinimg.com/564x/3a/34/de/3a34dec35e597134323318ccb725c8b0.jpg",
      "https://i.pinimg.com/564x/62/06/10/620610c2c94e89bc4eca5a6039b5ced7.jpg",
      "https://i.pinimg.com/564x/8a/ba/b2/8abab2bcf89a92cff33cc8ba1596b50b.jpg",
      "https://i.pinimg.com/564x/7c/c8/e9/7cc8e98f818b7ea894211d4577a9b45f.jpg"
    ],
    category: "Historical",
    rating: 4.2,
  ),
  Place(
    id: 5,
    name: "Yeha",
    desc:
        "An ancient site with ruins dating back to the pre-Axumite civilization, featuring the Great Temple of Yeha, which is thought to be over 2,500 years old.",
    region: "Tigray",
    latitude: 14.3431,
    longitude: 39.1002,
    pictures: [
      "https://i.pinimg.com/564x/d3/b2/c9/d3b2c9a2d1c8fe22b0215bcaff8fe27a.jpg",
      "https://i.pinimg.com/564x/52/e9/89/52e989aed3c281b9dac8bfa451228e6e.jpg",
      "https://i.pinimg.com/564x/e3/37/1f/e3371f3bcc998720ba6991ac263dd541.jpg"
    ],
    category: "Historical",
    rating: 4.0,
  ),
  Place(
    id: 6,
    name: "Simien Mountains National Park",
    desc:
        "A UNESCO World Heritage site, the park features dramatic landscapes, deep valleys, and jagged mountain peaks, and is home to several endemic species, including the Ethiopian wolf and Gelada baboons.",
    region: "Amhara",
    latitude: 13.2167,
    longitude: 38.0167,
    pictures: [
      "https://i.pinimg.com/564x/e2/ad/0b/e2ad0ba458da6a569a9c87736c8e65f6.jpg",
      "https://i.pinimg.com/564x/e8/da/a8/e8daa811411dc6cb934af926df97da7e.jpg",
      "https://i.pinimg.com/564x/1a/86/22/1a8622cc37a25d9629fb2dcd0c0b14ac.jpg",
      "https://i.pinimg.com/564x/cb/0c/33/cb0c3324ca042eaca616c418a6faf6e5.jpg",
      "https://i.pinimg.com/564x/63/dc/cf/63dccf641229a290597993a14a8bde32.jpg"
    ],
    category: "Natural",
    rating: 4.8,
  ),
  Place(
    id: 7,
    name: "Erta Ale",
    desc:
        "One of the world's few persistently active lava lakes, Erta Ale is a shield volcano in the Afar Region, offering a unique opportunity for visitors to witness molten lava up close.",
    region: "Afar",
    latitude: 13.6011,
    longitude: 40.4936,
    pictures: [
      "https://i.pinimg.com/564x/de/5b/7b/de5b7b08e40db6cfe859e6d42406ec5c.jpg",
      "https://i.pinimg.com/564x/4b/51/c3/4b51c3e76ca707d5c660bf658e27ec61.jpg",
      "https://i.pinimg.com/564x/80/55/18/805518afc14adf270631efe0edbfd585.jpg"
    ],
    category: "Natural",
    rating: 4.5,
  ),
  Place(
    id: 8,
    name: "Blue Nile Falls",
    desc:
        "Located on the Blue Nile river, the falls are known as 'Tis Abay' in Amharic, meaning 'great smoke'. The waterfall is approximately 45 meters high and is a popular natural attraction.",
    region: "Amhara",
    latitude: 11.4656,
    longitude: 37.4845,
    pictures: [
      "https://i.pinimg.com/564x/85/59/8b/85598bc37d8a969b76f0fb120e1bc6ff.jpg",
      "https://i.pinimg.com/564x/b5/fa/c7/b5fac78cd1aa987ef160e693220a0e17.jpg",
      "https://i.pinimg.com/564x/92/58/3b/92583b953f5b73693719427cfce36a95.jpg",
      "https://i.pinimg.com/564x/93/54/40/935440001b78f21adb4c4c2ceeca73a0.jpg"
    ],
    category: "Natural",
    rating: 4.3,
  ),
  Place(
    id: 9,
    name: "Sof Omar Caves",
    desc:
        "One of the world's most extensive cave systems, formed by the Web River. The caves are an important religious site for local Muslims and showcase stunning natural formations.",
    region: "Oromia",
    latitude: 6.9178,
    longitude: 40.7930,
    pictures: [
      "https://i.pinimg.com/564x/a4/67/f7/a467f7ebaec267da79816b4bd99e63b4.jpg",
      "https://i.pinimg.com/564x/27/ac/fc/27acfce32b08efa9d1114a2d3105cc0f.jpg",
      "https://i.pinimg.com/564x/c2/ac/73/c2ac73113f6085cbe28761671e013e40.jpg"
    ],
    category: "Natural",
    rating: 4.1,
  ),
  Place(
    id: 10,
    name: "Danakil Depression",
    desc:
        "Located in the Afar Triangle, the Danakil Depression is one of the lowest and hottest places on Earth. The area is known for its multicolored hydrothermal fields, salt flats, and active volcanoes.",
    region: "Afar",
    latitude: 14.2464,
    longitude: 40.2989,
    pictures: [
      "https://i.pinimg.com/564x/f5/b5/6f/f5b56ff5bba2bcec2471bbf2942be979.jpg",
      "https://i.pinimg.com/564x/fa/2b/1b/fa2b1b2a774d780e1cc2aba5e22108a8.jpg",
      "https://i.pinimg.com/564x/c8/45/10/c84510939d52b3105670d84ea81853a0.jpg",
      "https://i.pinimg.com/564x/17/62/0c/17620c9da888632574154437dda987b5.jpg",
      "https://i.pinimg.com/736x/9a/8c/c9/9a8cc9196abf5a91d07419e4a904930c.jpg"
    ],
    category: "Natural",
    rating: 4.6,
  ),
  Place(
    id: 11,
    name: "Konso Cultural Landscape",
    desc:
        "A UNESCO World Heritage site, this landscape is renowned for its traditional stone-walled terraces and fortified settlements, showcasing the cultural heritage of the Konso people.",
    region: "Southern Nations, Nationalities, and Peoples' Region",
    latitude: 5.2534,
    longitude: 37.4924,
    pictures: [
      "https://i.pinimg.com/564x/70/7c/81/707c81b7693cd36a202c72b96c8d56ac.jpg",
      "https://i.pinimg.com/564x/9f/8a/9b/9f8a9b9e24f9fd2af461e744b74cc4ab.jpg",
      "https://i.pinimg.com/564x/ac/17/10/ac1710d5cc271b8cc3eeac3b5b287e47.jpg",
      "https://i.pinimg.com/564x/6b/31/27/6b31272453605a20d52e7ba6358b13e3.jpg"
    ],
    category: "Cultural",
    rating: 4.2,
  ),
  Place(
    id: 12,
    name: "Mursi Village",
    desc:
        "Home to the Mursi people, known for their unique lip plates and body adornments, the village offers a glimpse into the traditional way of life, customs, and rituals of this indigenous tribe.",
    region: "Southern Nations, Nationalities, and Peoples' Region",
    latitude: 6.0366,
    longitude: 36.5378,
    pictures: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-afAmRgpGjGoRtHtA_lHcVqO6mljMCCDsyQ&usqp=CAU",
      "https://editorial01.shutterstock.com/wm-preview-1500/10443532k/b0370f5e/Shutterstock_10443532k.jpg",
      "https://media.meer.com/attachments/bd442152841a8537e0bc585c450d37100e3ff9f7/store/fill/860/645/9ee6676b682b5ca2d595915776feccf59b4d661a7c28821ebe6d6c21e288/Young-children-of-the-Mursi-tribe-Ethiopia.jpg"
    ],
    category: "Cultural",
    rating: 4.0,
  ),
  Place(
    id: 13,
    name: "Dorze Village",
    desc:
        "An authentic cultural experience in the highlands of southern Ethiopia, Dorze Village is famous for its bamboo houses and the traditional weaving skills of the Dorze people.",
    region: "Southern Nations, Nationalities, and Peoples' Region",
    latitude: 6.1847,
    longitude: 37.8022,
    pictures: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJB9YEwJdjrZspj_l8gKV7yVGl8xt5RRmErw&usqp=CAU",
      "https://thumbs.dreamstime.com/b/warrios-dance-dorze-tribe-ethiopia-people-live-large-communities-north-addis-abeba-69681711.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFSjBquJOEzvbYUL8WL3gzGknS_Mh2XRNU60-vfTam9LKkh5unkNgrPons-SdjtyUvrVg&usqp=CAU"
    ],
    category: "Cultural",
    rating: 4.1,
  ),
  Place(
    id: 14,
    name: "Omo Valley",
    desc:
        "Known for its rich cultural diversity, the Omo Valley is home to several indigenous tribes, each with their own unique customs and traditions, offering a fascinating insight into the lives of these communities.",
    region: "Southern Nations, Nationalities, and Peoples' Region",
    latitude: 5.8334,
    longitude: 36.1259,
    pictures: [
      "https://static01.nyt.com/images/2017/11/05/travel/05ETHIOPIA-slide-5WT2/05ETHIOPIA-slide-5WT2-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPRdGge_40JvQqb-g0xwQQ7tJ_FfxWvq9rDlen2eI-hQWZIS1WMj6lvjtgto0FT7cPXgQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz6xlyQgj0_b4GgSBNwFFlTNUF7u2bUC3a7CXuEGW1a5ZD2nuCrtVyqNgprXIF_GjNmr0&usqp=CAU",
      "https://static01.nyt.com/images/2017/11/05/travel/05ETHIOPIA-slide-XRB4/05ETHIOPIA-slide-XRB4-articleLarge.jpg?quality=75&auto=webp&disable=upscale"
    ],
    category: "Cultural",
    rating: 4.3,
  ),
  Place(
    id: 15,
    name: "Hammer Village",
    desc:
        "Home to the Hamer tribe, famous for their bull-jumping ceremony and elaborate adornments, the village offers visitors an opportunity to learn about the culture and traditions of this indigenous group.",
    region: "Southern Nations, Nationalities, and Peoples' Region",
    latitude: 5.3214,
    longitude: 36.4334,
    pictures: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeOr1ZeyZ5aSa-Jz47nByZzkkR4fkjz6wQ3A&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2SjYVlnzUHhIvnTa8o5U9PHSNqcE_uFflQ&usqp=CAU",
      "https://www.hamermedia.org/sites/www.hamermedia.org/files/styles/full_width/public/gallery-images/FB_IMG_1534826390001_0.jpg?itok=GY-s7WYJ"
    ],
    category: "Cultural",
    rating: 4.0,
  ),
  Place(
    id: 16,
    name: "Debre Damo Monastery",
    desc:
        "Perched atop a flat-topped mountain, this ancient monastery is accessible only by climbing a 15-meter vertical cliff using a rope. It is one of the oldest and most revered monastic sites in Ethiopia.",
    region: "Tigray",
    latitude: 14.3735,
    longitude: 39.1231,
    pictures: [
      "https://i.pinimg.com/564x/f9/f2/d4/f9f2d4dcd4088875cabd0a63b64ea882.jpg",
      "https://i.pinimg.com/564x/42/06/56/42065635d76bc1c207343a49296f491e.jpg",
      "https://i.pinimg.com/564x/e3/c7/49/e3c749880960147e95de7f23a52a0eae.jpg"
    ],
    category: "Religious",
    rating: 4.4,
  ),
  Place(
    id: 17,
    name: "Debre Libanos Monastery",
    desc:
        "An important monastic center for Ethiopian Orthodox Christianity, founded by Saint Tekle Haymanot in the 13th century. The complex also offers stunning views of the surrounding landscape.",
    region: "Oromia",
    latitude: 9.7051,
    longitude: 38.0152,
    pictures: [
      "https://i.pinimg.com/564x/0a/63/aa/0a63aa343b46fc144370d4048f8df026.jpg",
      "https://i.pinimg.com/564x/a0/ae/bf/a0aebfb5977751c5ecbc05e1119ad793.jpg"
    ],
    category: "Religious",
    rating: 4.3,
  ),
  Place(
    id: 18,
    name: "Al nejashi mosque",
    desc:
        "The Al Nejashi Mosque in Wukro, Ethiopia, is one of Africa's oldest mosques. It commemorates the historic \"Migration to Abyssinia\" and features a unique blend of Islamic and Ethiopian architectural styles. With intricate stone carvings and a serene prayer hall, the mosque holds spiritual significance as a symbol of religious harmony and cultural heritage.",
    region: "Amhara",
    latitude: 11.6000,
    longitude: 37.4167,
    pictures: [
      "https://i.pinimg.com/564x/d2/14/4a/d2144a4256859181795a9a47eef02ac3.jpg",
      "https://i.pinimg.com/564x/f9/93/d7/f993d758208f306fc1c13ba07fb46921.jpg"
    ],
    category: "Religious",
    rating: 4.2,
  ),
  Place(
    id: 23,
    name: "Unity Park",
    desc:
        "Located in the heart of Addis Ababa, Unity Park is a historic landmark that offers visitors a glimpse into Ethiopia's rich heritage. The park features beautifully landscaped gardens, historical buildings, and a zoo showcasing native wildlife.",
    region: "Addis Ababa",
    latitude: 9.0196,
    longitude: 38.7500,
    pictures: ["url1", "url2"],
    category: "Park",
    rating: 4.5,
  ),
  Place(
    id: 24,
    name: "Bale Mountains National Park",
    desc:
        "A UNESCO World Heritage site, the Bale Mountains National Park is a haven for nature enthusiasts. It is home to diverse ecosystems, including vast Afroalpine meadows, cloud forests, and deep valleys. Visitors can spot rare wildlife, including the Ethiopian wolf and the Mountain nyala.",
    region: "Oromia",
    latitude: 6.8759,
    longitude: 39.2872,
    pictures: ["url1", "url2"],
    category: "Park",
    rating: 4.7,
  ),
  Place(
    id: 25,
    name: "Awash National Park",
    desc:
        "Located in the Great Rift Valley, Awash National Park is known for its diverse landscapes and abundant wildlife. The park is home to numerous mammals, including oryx, kudu, and baboons, as well as a variety of bird species. Visitors can enjoy game drives, birdwatching, and hiking.",
    region: "Afar",
    latitude: 9.0244,
    longitude: 40.7974,
    pictures: ["url1", "url2"],
    category: "Park",
    rating: 4.3,
  ),
  Place(
    id: 26,
    name: "Entoto Park",
    desc:
        "Situated on the Entoto Mountain range overlooking Addis Ababa, Entoto Park offers stunning panoramic views of the city and surrounding landscapes. The park is known for its lush greenery, hiking trails, and cultural sites, including the historic Entoto Maryam Church.",
    region: "Addis Ababa",
    latitude: 9.0500,
    longitude: 38.7833,
    pictures: ["url1", "url2"],
    category: "Park",
    rating: 4.4,
  ),
];

List<Place> historicalAttractions =
    places.where((place) => place.category == "Historical").toList();
List<Place> naturalAttractions =
    places.where((place) => place.category == "Natural").toList();

List<Place> culturalAttractions =
    places.where((place) => place.category == "Cultural").toList();

List<Place> religiousAttractions =
    places.where((place) => place.category == "Religious").toList();

List<Place> parkAttractions =
    places.where((place) => place.category == "Parks").toList();
