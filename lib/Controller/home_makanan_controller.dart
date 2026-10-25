import 'package:get/get.dart';
import 'package:flutter_application/models/makanan_model.dart';

class HomeMakananController extends GetxController {

  RxList<MakananModel> makananList = [
    MakananModel(
      nama: "Nasi Goreng",
      harga: "Rp 15.000",
      deskripsi: "Nasi goreng dengan telur dan sayuran",
      gambar: "https://tse4.mm.bing.net/th/id/OIP.znFpL6C4h2Aqcs-WJZeRHAHaGP?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
      kategori: "Makanan Utama",
      rating: 4
    ),
    MakananModel(
      nama: "Mie Ayam",
      harga: "Rp 12.000",
      deskripsi: "Mie ayam dengan kuah dan topping",
      gambar: "https://tse4.mm.bing.net/th/id/OIP.O7QsZ5ax3crO8n2PbygMHgHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
      kategori: "Makanan Utama",
      rating: 5
    ),
    MakananModel(
      nama: "Sate Ayam",
      harga: "Rp 20.000",
      deskripsi: "Sate ayam dengan bumbu kacang",
      gambar: "https://tse4.mm.bing.net/th/id/OIP.WDTeCiTtxCJVO7mpAVpfOQHaE8?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
      kategori: "Makanan Utama",
      rating: 3
    ),
    MakananModel(
      nama: "Bakso",
      harga: "Rp 10.000",
      deskripsi: "Bakso sapi dengan kuah dan topping",
      gambar: "https://1.bp.blogspot.com/-kykuPfDoVmk/XoSLarW6VsI/AAAAAAAAGZk/Qxd_QaTWjPgb7vWjcbfLYxhpmveidWhEQCLcBGAsYHQ/s1600/resep-bakso-mercon-kuah-super-pedas-simple-sederhana.jpg",
      kategori: "Makanan Utama",
      rating: 4
    ),
    MakananModel(
      nama: "Ayam Bakar",
      harga: "Rp 25.000",
      deskripsi: "Ayam bakar dengan bumbu rempah",
      gambar: "https://th.bing.com/th/id/R.ce5df3d333c0a1dea287eb192fa7c21d?rik=6ZDwfMPiu1Sl2Q&riu=http%3a%2f%2f1.bp.blogspot.com%2f-rFgRwcB-qJw%2fUtNNEkWIzPI%2fAAAAAAAABdg%2fE09Hu9KOpmU%2fs1600%2fAyam%2bBakar.jpg&ehk=hTY1oD6OEadCHThcw0GQhnNw%2fBwrBP0imOBZomld7%2bg%3d&risl=&pid=ImgRaw&r=0",
      kategori: "Makanan Utama",
      rating: 5
    )
  ].obs;
}