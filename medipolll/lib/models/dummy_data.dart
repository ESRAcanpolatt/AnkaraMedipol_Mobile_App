import 'package:flutter/material.dart';
import 'category.dart';
import 'meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Kan Bağışı',
    color: Colors.red,
    text: 'Kan bağışı için merkez kampüse gidin',
    imageUrl: "",
  ),
  Category(
    id: 'c10',
    title: 'Erkek Yurdu',
    color: Colors.yellow,
    text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c11',
    title: 'Kız Yurdu',
    color: Colors.green,
    text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c12',
    title: 'Kampüs',
    color: Colors.brown,
    text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c14',
    title: 'Derslikler',
    color: Colors.orangeAccent,
    text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c3',
    title: 'Kırtasiye',
    color: Colors.deepPurple,
      text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c4',
    title: 'Kütüphane',
    color: Colors.amber,
    text: '',
    imageUrl:"",
  ),
  Category(
    id: 'c8',
    title: 'Yemekhane',
    color: Colors.lightBlue,
      text: '',
    imageUrl:"",
  ),
  Category(
      id: 'c9',
      title: 'Okul Cafe',
      color: Colors.pink,
      text: 'Polin Cafe Kampüs arka bahçede bulunmaktadır',
    imageUrl:"",

  ),
  Category(
    id: 'c13',
    title: 'Öğrenci Kulüpleri',
    color: Colors.purple,
    text: '',
    imageUrl:"",

  ),
  Category(
    id: 'c15',
    title: 'Ring',
    color: Colors.cyan,
    text: '',
    imageUrl: "",
  ),
  Category(
    id: 'c16',
    title: 'Mescid',
    color: Colors.greenAccent,
    text: '',
    imageUrl: "",
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Kan Bağışı',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBzH6E4w5rNwyGfkWZRtGcXUumVI2NXwWGEsImbtGac3tadTZ3wtZgAC9J1beDod26XPo&usqp=CAU',
   //"https://www.turkis.org.tr/storage/2021/10/byokxnmb5dry-jpg.jpg",
    duration: 10,
  ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
    ],
    text: 'Kan bağışları Merkez Kampüsünde yapılmaktadır.\n'
    'Kan Bağışı Hayat Kurtarır.'
  ),

  Meal(
    id: 'm2',
    categories: [
      'c10',
    ],
    title: 'Erkek Yurdu',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJWYZE5Ug2mCwxPDaHIVlY_qoQSbU1NuskMg&usqp=CAU',
     //'https://fastly.4sqi.net/img/general/558x200/38549059_u7IiFuhKU3zWae_ChTSf5_Du813-XexZKmq7_-vSqj8.jpg',
    //'https://cf.bstatic.com/xdata/images/hotel/max1024x768/375929268.jpg?k=f268ce6dbcece09587830fd40d93ea35741f8e71a018e530f4b8aa40016b88e5&o=&hp=1',
    duration: 10,
    ingredients: [
      '4 Tomatoes',
    ],
    text:'Kapasitesi 100 kişidir. Oda tipleri: 3,2 ve 1 yataklı odalarımız bulunmaktadır.\n'
        'Konukevinde su ısıtıcısı, mutfak,mikrodalga fırın,iki gözlü elektrikli ocak,wc\n'
        'duş,mini buzdolabı, ayakkabı dolabı, giysi dolabı,çalışma masası ve yatak\n'
        'mevcuttur.\n'
    '\n'
    'Oda Tipleri;\n'
        '-Tek kişilik oda  \n'
        '-İki kişilik oda \n'
        '-Üç kişilik odalar bulunmaktadır.',
  ),
  Meal(
    id: 'm4',
    categories: [
      'c11',
    ],
    title: 'Kız Yurdu',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
 'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/236722855.jpg?k=98a58a82efcb22a6addca51caf75e7641615b837a30011518294682362bd4550&o=',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
    ],
    text:'Kapasitesi 350 kişidir. Oda tipleri: 2 ve 1 yataklı odalarımız bulunmaktadır.\n'
        'Konukevinde su ısıtıcısı, mutfak,mikrodalga fırın,iki gözlü elektrikli ocak,wc\n'
        'duş,mini buzdolabı, ayakkabı dolabı, giysi dolabı,çalışma masası ve yatak\n'
        'Wi-fi hizmeti verilmektedir.\n'
    '\n'
        'Kampüste yemekhane, daire içerisinde mini bir hobi mutfağı ve konukevi\n'
        'içerisinde kantin bulunmaktadır.\n'
    '\n'
        'Oda Tipleri;\n'
        '-Tek kişilik oda  \n'
        '-İki kişilik oda bulunmaktadır.',
  ),
  Meal(
    id: 'm3',
    categories: [
      'c12',
    ],
    title: 'Kampüs',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'data:image/png;base64,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',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
    ],
    text:'Merkez Kampüs\n'
    '\n'
    'Yerleşke: Ankara Medipol Üniversitesi (Ana Kampüs Rektörlük)\n'
        'Telefon: 444 20 10\n'
        'Faks: 0312 920 10 06\n'
        'Adres: Hacı Bayram Mah.Talatpaşa Bulvarı No: 4/1,\n'
        'Altındağ/Ankara\n'
         '\n'
         '\n'
    'Anafartalar Kampüs\n\n'
        'Yerleşke: Anafartalar Ağız ve Diş Sağlığı Uygulama Araştırma Merkezi\n'
        'Telefon: 444 20 10\n'
        'Faks: 0312 920 10 06\n'
        'Adres: Eti,Celal BayarBlv.No:88, 06570\n'
        'Çankaya/Ankara',
  ),
  Meal(
    id: 'm2',
    categories: [
      'c14',
    ],
    title: 'Derslikler',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.nurus.com/content/images/thumbs/height692_nurus-medipol-universitesi-g7.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
    ],
    text: 'Merkez Kampüs Derslikleri;\n'
    '\n'
'A Blok(Zemin Kat): MAZ28, MAZ29, MAZ30\n'
'A Blok(1.Kat): MA111, MA114, MA117, MA118, M1B16, M1B18, MA113\n'
'A Blok(2.Kat): MA218, MA211, MA216, MA210\n'
'A Blok (3.Kat): MA314, MA315, MA316\n'
        '\n'
'B Blok (Zemin Kat):MBZ10, MBZ11\n'
'B Blok (1.Kat): MB110, MB109\n'
'B Blok (2.Kat): MB209, MB210, MB202\n'
'B Blok (3.Kat): MB310, MB309, MB302\n'
'B Blok (4.Kat): MB410, MB409\n'
'B Blok (5.Kat): MB510, MB509\n'
    '\n'
    '\n'
        'Anafartalar Kampüs Derslikleri:\n'
    '\n'
      '1.Bodrum Kat: AB101, AB102, AB103, AB104, AB105, AB106, AB107, \n'
        'AB10, AB109, AB110,AB111, AB112, AB113, AB114, AB115,\n'
        'AB116, AB117, AB118,AB119, AB120, AB121\n'
    '\n'
      '2.Bodrum Kat: AB201, AB202, AB203, AB204, AB205, \n'
      'AB206, AB207, AB208, AB209,'

  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Boxoffice',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
   'https://lh3.googleusercontent.com/p/AF1QipNDh44DDSF28OGlpivXrLB1Dq58R6wSUfv1fY5w=s1360-w1360-h1020',
   // 'https://firebasestorage.googleapis.com/v0/b/fluttershare2-2fe99.appspot.com/o/lost%20and%20found%20logo.JPG?alt=media&token=97ca0621-c754-420b-9ff9-4fbf0c1911d5',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
    ],
    text: 'Merkez Kampüs: B Blok 1. Kat\n'
    'Telefon: 0534 202 4708\n\n'
        'Anafartalar Kampüs: -2. Kat\n'
      'Telefon: 0533 272 1592\n',
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Anafartalar Kampüs Kütüphanesi',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://images.pexels.com/photos/159711/books-bookstore-book-reading-159711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYNJSvx42oDzZS1_lKzb3Mj1sc2RCcpPDJdw&usqp=CAU',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
    ],
    text:'Kütüphane hizmetleri Anafartalar Kampüsünde sunulmaktadır.\n'
         'Kütüphane 08.30-22.30 saatleri arasında hizmet vermektedir.\n'
        'Telefon: 4442010',
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Polin Cafe',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://fastly.4sqi.net/img/general/width960/142719950_bq225KsONqAKeJ1ZSNrpc3LTRZTb-PRLo_jL-K2e7H0.jpg',
    //'https://fastly.4sqi.net/img/general/558x200/38549059_u7IiFuhKU3zWae_ChTSf5_Du813-XexZKmq7_-vSqj8.jpg',
    duration: 10,
    ingredients: [
      '4 Tomatoes',
    ],
    text: 'Anafartalar  Kampüsünde B-blok içerisinde kantin bulunmaktadır.\n'
      'Merkez Kampüs arka bahçesinde Polin kafe hizmet vermektedir.',
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Yemekhane',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://pbs.twimg.com/media/ELFrCdoW4AAop0t.jpg',
   //olan 'https://media-cdn.tripadvisor.com/media/photo-s/17/62/13/14/breakfast-brunch-sweets.jpg',
    duration: 10,
    ingredients: [
      '4 Tomatoes',
    ],
    text: 'Anafartalar Kampüsü B Blok içerisinde yemekhane bulunmaktadır.\n'
        'Yemek hizmetleri,özel bir yemek firması tarafından sağlanmaktadır.\n'
        'Yemek hizmeti öğlen olmak üzere 1 öğünden oluşmaktadır.\n'
        'Yemek hizmeti,self servis usulle uygulanmaktadır.'
  ),
  Meal(
    id: 'm2',
    categories: [
      'c13',
    ],
    title: 'Öğrenci Kulüpleri',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        //'https://scontent.fadb2-2.fna.fbcdn.net/v/t1.6435-9/75550389_447611749210213_7840653168978427904_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=hb9wohRFv4QAX8jPwAQ&_nc_ht=scontent.fadb2-2.fna&oh=00_AfD3H5r4R3boHgRASQi8r1sp7OD8asWbP3mfOHAMaZogJQ&oe=6432667F',
       'https://ankaramedipol.edu.tr/wp-content/uploads/2022/04/SKS-5-800x800.jpg',

     duration: 10,
    ingredients: [
      '1 Slice White Bread',
    ],
    text:'Ankara Medipol Üniversitesi, öğrencilerine akademik eğitim ile birlikte\n'
        'toplumsal, kültürel, bilimsel ve kişisel gelişimlerine katkı sağlamaktadır.\n'
    'Katkı sağlamak amacıyla girişimlerine gerekli destekleri vererek tamamı\n'
        'aktif 50 öğrenci kulübüne sahiptir. Öğrencilerimiz kulüp çalışmaları ile\n'
        'ekip çalışması,iletişim becerileri, proje yönetimi ve iş ağlarını geliştirme\n'
    'fırsatına sahip olurlar.Sende ankara medipol öğrenci kulüp ailemize katıl.\n'
    '\n'
    'Yerleşke: Merkez Kampüs E BLOK Sağlık, Kültür ve Spor Daire Başkanlığı\n '
        'Zemin Kat, No: 4/4\n '
        'Sağlık Kültür ve Spor Daire Sorumlusu: Ömer Faruk AKBAL.\n',
  ),
  Meal(
      id: 'm12',
      categories: [
        'c15',
      ],
      title: 'Ring',
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
      'https://pbs.twimg.com/media/ELFrCdoW4AAop0t.jpg',
      //olan 'https://media-cdn.tripadvisor.com/media/photo-s/17/62/13/14/breakfast-brunch-sweets.jpg',
      duration: 5,
      ingredients: [
        '4 Tomatoes',
      ],
      text: 'Anafartalar ve Merkez Kampüs arasında yarım saatte bir ring(servis) aracı bulunmaktadır.'
  ),
  Meal(
      id: 'm13',
      categories: [
        'c16',
      ],
      title: 'Mescid',
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
      'https://pbs.twimg.com/media/ELFrCdoW4AAop0t.jpg',
      //olan 'https://media-cdn.tripadvisor.com/media/photo-s/17/62/13/14/breakfast-brunch-sweets.jpg',
      duration: 5,
      ingredients: [
        '4 Tomatoes',
      ],
      text: 'Merkez Kampüs A blok zemin kat.'
  ),
];

