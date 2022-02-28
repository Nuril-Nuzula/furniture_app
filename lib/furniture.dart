class Furniture {
  Furniture({
    required this.id,
    required this.name,
    required this.type,
    required this.desc,
    required this.price,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final String type;
  final String desc;
  final String price;
  final String imageUrl;
}

final List<Furniture> furniturelist = <Furniture>[
  Furniture(
      id: 1,
      name: '  King Koil',
      type: 'Kasur',
      desc: 'Manjakan diri, seluruh definisi keanggunan dan kenyamanan. Dibuat khusus untuk Koleksi Putri, lapisan adalah hal penting dalam memberikan pengalaman tidur yang unggul.Dibuat sebagai lateks paling alami di kelasnya, kurang sensitif terhadap suhu tubuh, memberikan kemampuan untuk mencegah penyerapan energi, yang sebagai hasilnya, memungkinkan untuk berputar dengan mudah saat Anda berbaring di kasur. \n\nDengan struktur sel terbuka dan bahan anti-alergenik, menguapkan kelembaban dan menjaga kasur Anda higienis dan nyaman sepanjang malam, sambil mencegah pertumbuhan tungau debu dan mikroorganisme lainnya. akan menciptakan tempat yang lebih baik dan lebih nyaman bagi Anda untuk tidur.',
      price: '1.465.000',
      imageUrl:
          'image/king_koil_kasur.jpg'),
  Furniture(
      id: 2,
      name: '  Airland',
      type: 'Kasur',
      desc: 'Kami hanya menggunakan bahan terbaik untuk kerajinan kasur Airland. Kapas adalah salah satu bahan alami favorit di dunia. Pilihan tempat tidur alami kami ditutupi dengan kain katun thread count tinggi tidak hanya karena mereka memiliki nuansa yang lebih mewah dan lembut, tetapi karena kain ini memiliki penyerapan kelembaban yang tinggi, hypoallergenic dan sangat tahan lama.\n\nSelain kelembutannya yang mewah dan keindahannya yang berkilau, sutra adalah yang paling hypoallergenic dari semua kain karena struktur protein alaminya. Sutra juga merupakan kain semua iklim, hangat dan nyaman di iklim dingin dan nyaman dingin dalam suhu yang lebih hangat. Hal ini dapat menyerap hingga 30% dari beratnya dalam kelembaban tanpa merasa lembab, sehingga mengurangi tubuh Anda dari keringat dan memungkinkan kulit Anda bernapas saat Anda tidur.\n\nCetakan ke kontur tubuh Anda dengan sempurna, oleh karena itu memberikan dukungan dan kenyamanan maksimal.',
      price: '1.178.000',
      imageUrl: 'image/airland.jpg'),
  Furniture(
      id: 3,
      name: '  Selma Carvel',
      type: 'Sofa',
      desc: 'Lengkapi kenyamanan ruang tamu atau ruang keluarga Anda dengan Selma Carvel Sofa Sectional Kanan. Sofa bergaya modern ini terbuat dari material berkualitas yang tahan lama, dengan rangka yang kuat dan kokoh. Terdapat juga ottoman yang dapat digunakan untuk menopang kaki ketika duduk. Bantalan dudukan yang nyaman akan membuat waktu bersantai semakin rileks. Dapatkan segera koleksi pilihan ini dengan rangkaian penawaran spesial dari Ruparupa.\n\nDesain modern \nKualitas bantalan dudukan yang nyaman \nMaterial : fabric \nDimensi sofa : 203 x 78 x 83 cm \nDimensi ottoman : 59 x 59 x 44 cm',
      price: '955.000',
      imageUrl: 'image/selma_carvell.jpg'),
  Furniture(
      id: 4,
      name: '  Selma Eris ',
      type: 'Meja Kerja',
      desc: 'Buat aktivitas kerja semakin nyaman dengan meja dari Selma. Meja Kantor ini hadir dengan desain modern, disertai kompartemen penyimpanan untuk tempat berkas, alat tulis dan kebutuhan lainnya. Meja terbuat dari material particle board berkualitas yang didesain kokoh dan stabil.\n\nDilengkapi kompartemen penyimpanan\nDimensi produk : 120 x 60 x 75 cm\nMaterial : particle board\nFinishing : paper',
      price: '1.297.000',
      imageUrl:
          'image/selma_eris.jpg'),
  Furniture(
      id: 5,
      name: '  King Koil',
      type: 'Sofa',
      desc: 'King Koil has been perfecting the art of mattress making for more than a century. By combining true craftsmanship, high quality materials and innovation in technology, King Koil vision has been always will be the commitment to present you with the uncompromised sleeping experience.\n\nPresenting the Noble Class collection, an exclusive collection of latex mattress that will indulge your every sense. Designed with passion to provide astonishing support and extraordinary comfort, the King Koil Noble Class Collection will grant you the unforgettable sleep, night after night.',
      price: '1.199.000',
      imageUrl:
          'image/king_koil_sofa.jpg'),
  Furniture(
      id: 6,
      name: '  Philips',
      type: 'Lampu',
      desc: 'Salah satu aturan dasar yang harus diingat mengenai lampu kamar tidur adalah memilih lampu yang lembut dan hangat. Terlepas dari apakah Anda harus bangun di pagi hari saat masih gelap di luar, bangun karena ingin buang air kecil di tengah malam, atau masih ingin membaca menjelang tidur – cahaya yang menyilaukan membuat Anda merasa tidak nyaman. Kami merekomendasikan untuk memilih lampu plafon yang dapat diredupkan untuk kamar tidur sehingga Anda dapat menyesuaikan tingkat cahaya dengan kebutuhan Anda - baik untuk mencari pasangan kaus kaki yang hilang atau merapikan tempat tidur.',
      price: '280.000',
      imageUrl:
          'image/philips.jpg'),
  Furniture(
      id: 7,
      name: '  Opple Lighting',
      type: 'Lampu',
      desc: '• Mudah mencocokkan warna fixture\n• Penghematan energi hingga 85% dibandingkan dengan lilin pijar\n• Bisa mengganti pijar secara langsung\n• Tune intensitas cahaya yang sesuai dengan lingkungan Anda atau waktu hari',
      price: '299.000',
      imageUrl:
          'image/opple_lighting.jpg'),
  Furniture(
      id: 8,
      name: '  Ergotec',
      type: 'Kursi',
      desc: 'Kayu pinus padat adalah bahan alami yang semakin indah dan mendapatkan karakter uniknya seiring dengan waktu.\n\nUkuran produk\nLebar:41 cm\nKedalaman:47 cm\nTinggi:90 cm\nLebar dudukan:41 cm\nKedalaman dudukan:41 cm\nTinggi dudukan:44 cm',
      price: '365.000',
      imageUrl:
          'image/ergotec.jpg'),
  Furniture(
      id: 9,
      name: '  Mr. Coffee',
      type: 'Mesin Pembuat Kopi',
      desc: 'Kerajinan minuman berkualitas kedai jawa dalam kenyamanan rumah seperti barista sejati dengan Mr. Coffee One-Touch CoffeeHouse Espresso dan Cappuccino Machine. Mesin espresso memiliki pompa 19-bar Italia untuk mengekstrak rasa yang kaya dan kuat dan sistem pemanas termokopel memberikan air yang cepat dan dipanaskan secara merata. Busa susu otomatis mencambuk susu favorit Anda menjadi busa krim ringan dan lapang untuk melengkapi minuman kopi Anda dengan sempurna.',
      price: '427.000',
      imageUrl:
          'image/mr_coffee.jpg'),
  Furniture(
      id: 10,
      name: '  Zion Star',
      type: 'Meja Ruang Tamu',
      desc: 'Meja kecil yang kokoh dan stabil memiliki penyimpanan praktis di bawah bagian atas meja. Cocok jika Anda ingin menyimpan majalah, remote control dan tablet dekat jika Anda bersantai di sofa.',
      price: '835.000',
      imageUrl:
          'image/zion_star.jpg'),
];
