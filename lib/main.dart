import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(_UygulamaAnaSayfa());
}

class _UygulamaAnaSayfa extends StatelessWidget {
  const _UygulamaAnaSayfa();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: _FalSayfasi(),
    );
  }
}

class _FalSayfasi extends StatefulWidget {
  const _FalSayfasi();

  @override
  State<_FalSayfasi> createState() => _FalSayfasiState();
}

class _FalSayfasiState extends State<_FalSayfasi> {
  int yanitIndex = 0;

  List<String> yanitHavuzu = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün partnerinizle aranızdaki küçük bir sessizlik sizi endişelendirmesin. Her anı kelimelerle doldurmak zorunda değilsiniz, bazen sadece yan yana durabilmek de derin bir bağ kurmanızı sağlar.',
    'AŞK: Kalbinizin sesini bastırıp sürekli geçmişteki hatalara odaklanmak ilişkinize zarar verebilir. Eski defterleri kapatıp bugünün getirdiği samimi anlara şans vermeyi denemelisiniz.',
    'AŞK: Duygusal konularda bugün aceleci kararlar almaktan kaçının. Karşı tarafın içinde bulunduğu ruh halini tam olarak kavramadan savunmaya geçmek aranızdaki iletişimi zorlaştırabilir.',
    'AŞK: Birlikte olduğunuz insanla geleceğe dair planlar yapmak için oldukça elverişli bir gün. Beklentilerinizi açıkça dile getirmekten çekinmeyin, paylaştıkça aranızdaki güven tazelenecektir.',
    'AŞK: Aşk hayatınızda her ayrıntıyı kontrol etme çabası sizi fazlasıyla yoruyor olabilir. Biraz akışına bırakın ve karşı tarafın da sizi şaşırtmasına izin verin.',
    'AŞK: İlişkinizde uzun süredir ertelediğiniz o içten konuşmayı yapmak için doğru zaman. Kırıcı olmadan, sadece hislerinizi dürüstçe ortaya koyduğunuzda karşılık bulacaksınız.',
    'PARA: Önümüzdeki günlerde karşınıza çıkabilecek ani fırsatlara karşı tedbirli yaklaşın. Hemen cazip görünen yatırımların arka planındaki detayları ve riskleri iyi araştırmalısınız.',
    'PARA: Bugün cüzdanınızı açmadan önce iki kez düşünün; anlık bir hevesle yapılacak alışverişler ay sonu bütçenizi gereksiz yere zorlayabilir.',
    'PARA: Finansal konularda bağımsız hareket etme isteğiniz yüksek olabilir, ancak güvendiğiniz bir uzmanın veya bir büyüğünüzün tavsiyesi sizi olası bir zarardan kurtarabilir.',
    'PARA: Küçük ve önemsiz gibi görünen düzenli giderler birikerek büyük yükler oluşturuyor olabilir. Bugün banka ekstrelerinizi inceleyip gereksiz abonelikleri sonlandırmayı düşünün.',
    'PARA: Kazancınızı artırmaya yönelik yeni bir fikir aklınızı kurcalayabilir. Hemen uygulamaya geçmek yerine önce iyi bir pazar araştırması me maliyet analizi yapmalısınız.',
    'PARA: Borç verme ya da ortaklı finansal adımlar atma konusunda bugün temkinli olmalısınız. Net sınırları çizilmemiş parasal ilişkiler ileride canınızı sıkabilir.',
    'TAVSİYE: Bugün ertelediğin o küçük ama can sıkan ev işlerini bitirmeyi dene; alanını temizlemek zihnindeki karmaşayı da büyük ölçüde toparlayacaktır.',
    'TAVSİYE: Karar verirken çevrendeki herkesin fikrini almak yerine, kendi iç sesini duymak için kendine gün içinde en az yirmi dakikalık sessiz bir zaman yarat.',
    'TAVSİYE: Bugün günlük rutininin dışına çık ve her zaman yürüdüğün sokak yerine farklı bir yolu tercih et, bakış açını tazelemek sana iyi gelecek.',
    'TAVSİYE: Kendini başkalarının başarılarıyla kıyaslamayı bırak, kendi gelişim hızını ve geçtiğin yolları takdir etmeye odaklan.',
    'TAVSİYE: Bugün uzun zamandır aramadığın ama aklına sıkça düşen eski bir dostunu ara; geçmişten gelen samimi bir ses gününü güzelleştirebilir.',
    'TAVSİYE: Hayır demekte zorlandığın bir konuda kendi sınırlarını net bir dille ifade etmeyi dene; sınır çizmek bencilce değil, sağlıklıdır.',
  ];

  void rastgeleDegisAsk() {
    setState(() {
      yanitIndex = Random().nextInt(6) + 1;
    });
  }

  void rastgeleDegisPara() {
    setState(() {
      yanitIndex = Random().nextInt(6) + 7;
    });
  }

  void rastgeleDegisTavsiye() {
    setState(() {
      yanitIndex = Random().nextInt(6) + 13;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          'Günün Falı',
          style: GoogleFonts.cinzel(
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Image.asset('assets/screenpicture/falci.png'),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Aşk Durumu',
                    style: GoogleFonts.cinzel(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onTap: rastgeleDegisAsk,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.greenAccent,
                  ),
                  title: Text(
                    'Para Durumu',
                    style: GoogleFonts.cinzel(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onTap: rastgeleDegisPara,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.explore,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Günlük Tavsiye',
                    style: GoogleFonts.cinzel(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onTap: rastgeleDegisTavsiye,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    yanitHavuzu[yanitIndex],
                    style: GoogleFonts.marcellus(
                      color: Colors.deepPurple[900],
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
