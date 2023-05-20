import 'package:flutter/material.dart';
import 'package:medipolll/models/models/news.dart';


class NewsPage extends StatelessWidget {
  List<News> medipolNews = [ //Models klasöründe  news.dart sayfasındaki parametreleri alır..
    News(
        header:
            'Ankara Medipol Üniversitesi “Merkezi bütçe dışı gelir oranı en yüksek olan vakıf üniversiteleri(%)” sıralamasında 4. Sırada yer aldı.',
        header2: "BAŞARILARIMIZ",
        content:
            "Yükseköğretim Kurulunca yürütülen Üniversite İzleme ve Değerlendirme Çalışması kapsamında 199 üniversitenin gösterge verileri kamuoyunun erişimine açıldı."
            "Bu raporda yer alan verilere göre, Ankara Medipol Üniversitesi "
            "Merkezi bütçe dışı gelir oranı en yüksek olan vakıf üniversiteleri"
            " sıralamasında 4. Sırada yer aldı."
            "2021 mali yılına ait danışmanlık, proje ve araştırmalar dahil öz gelir, döner sermaye, fon vb. merkezi bütçe dışı toplam gelirin,"
            " üniversitenin gerçekleşen yıllık bütçesine oranını ifade eden bu göstergeye göre %46,21’lik oranla vakıf üniversiteleri arasında 4. Sırada yer alan üniversitemizi tebrik ediyoruz.",
        imageUrl:
            "https://ankaramedipol.edu.tr/ankara-medipol-universitesi-merkezi-butce-disi-gelir-orani-en-yuksek-olan-vakif-universiteleri-siralamasinda-4-sirada-yer-aldi/"),
    News(
        header:
            "Prof. Dr. Nevin Şanlıer, Stanford Üniversitesince yapılan araştırma sonucunda Dünyanın En Etkili Bilim İnsanları Listesi’nde yer aldı.",
        header2: "AKADEMİK",
        content:
            "Beslenme ve Diyetetik Bölümü öğretim üyesi Prof. Dr. Nevin Şanlıer",
        imageUrl:
            "https://ankaramedipol.edu.tr/prof-dr-nevin-sanlier-stanford-universitesince-yapilan-arastirma-sonucunda-dunyanin-en-etkili-bilim-insanlari-listesinde-yer-aldi/"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return News(
            header: medipolNews[index].header,
            header2: medipolNews[index].header2,
            content: medipolNews[index].content,
            imageUrl: medipolNews[index].imageUrl);
      },
      itemCount: medipolNews.length,
    ));
  }
}
