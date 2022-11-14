import 'produk.dart';
import 'kategori.dart';

List<Category> dummyCategories = [
  // ignore: prefer_const_constructors
  Category(
      id: "id_stylish",
      title: "Stylish Chair",
      images: "kursi.png",
      price: "\$ 170"),
  Category(
      id: "id_modern",
      title: "Modern Table",
      images: "kursi_pink.png",
      price: "\$ 75"),
  Category(
      id: "id_wooden",
      title: "Wooden Console",
      images: "kursi_coklat.png",
      price: "\$ 240"),
  Category(
      id: "id_brown",
      title: "Brown Armchair",
      images: "kursi_ijo.png",
      price: "\$ 210"),
];
//perintah untuk load image dari network, ketika tdk keluar flutter run -d chrome --web-renderer html

List<Produk> dummy_produk = [
  Produk(
    id: DateTime.now().toString(),
    title: "Stylish Chair",
    category: "id_stylish",
    price: "\$ 170",
    imgAssets: "kursi.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Modern Table",
    category: "id_modern",
    price: "\$ 75",
    imgAssets: "kursi_pink.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Wooden Console",
    category: "id_wooden",
    price: "\$ 240",
    imgAssets: "kursi_coklat.png",
  ),
  Produk(
    id: DateTime.now().toString(),
    title: "Brown Armchair",
    category: "id_brown",
    price: "\$ 210",
    imgAssets: "kursi_ijo.png",
  ),

  /*Food(
    id: DateTime.now().toString(),
    title: "Bebek Goreng",
    category: "id_bebek",
    ingredients: [
      "Gula",
      "Salam",
      "Serai",
      "Bawang Putih",
    ],
    duration: 15,
    imageUrl: "https://resepkoki.co/wp-content/uploads/2015/04/bebekbakar.jpg",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Burger",
    category: "id_fastfood",
    ingredients: [
      "Roti",
      "Daging",
      "Salada",
      "Mayones",
    ],
    duration: 10,
    imageUrl:
        "https://storage.googleapis.com/cdn-1.pintaria.com/wp/roti-burger-Pintaria-200806023904.jpg",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Pizza",
    category: "id_fastfood",
    ingredients: [
      "Roti",
      "Sosis",
      "Bawang Putih",
      "Saus",
    ],
    duration: 5,
    imageUrl:
        "https://www.simplyrecipes.com/thmb/qu-AslBeskzh_HG9H0dQAmcrdLQ=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__09__easy-pepperoni-pizza-lead-4-82c60893fcad4ade906a8a9f59b8da9d.jpg",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Cumi Saus Tiram",
    category: "id_seafood",
    ingredients: [
      "Cumi",
      "Cabai Merah",
      "Bawang Putih",
    ],
    duration: 10,
    imageUrl:
        "https://img.okezone.com/content/2021/01/29/298/2353163/resep-cumi-saus-tiram-sajian-seafood-yang-dijamin-bikin-ketagihan-KtneudN5H3.jpg",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Udang Saus Tiram",
    category: "id_seafood",
    ingredients: [
      "Udang",
      "Cabai Merah",
      "Bawang Putih",
    ],
    duration: 15,
    imageUrl:
        "https://cdns.klimg.com/merdeka.com/i/w/news/2021/06/19/1320300/content_images/670x335/20210619131518-1-ilustrasi-udang-004-destriyana.jpg",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Mie Goreng",
    category: "id_noodle",
    ingredients: [
      "Mie",
      "Bawang Goreng",
      "Tomat",
      "Garam",
    ],
    duration: 15,
    imageUrl:
        "https://www.fimela.com/food/read/4255116/resep-mie-goreng-spesial-bakso-sosis-telur",
  ),
  Food(
    id: DateTime.now().toString(),
    title: "Mie Rebus",
    category: "id_noodle",
    ingredients: [
      "Mie",
      "Jeruk Nipis",
      "Tomat",
      "Telur",
    ],
    duration: 15,
    imageUrl:
        "https://www.omahresep.com/wp-content/uploads/2021/02/mie-rebus-warkop.jpg",
  ),
  */
];
