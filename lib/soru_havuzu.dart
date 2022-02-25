import 'package:quiz_app/soru_class.dart';

class SoruHavuzu {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruText:
            "	21.The Godfather ilk olarak hangi yıl serbest bırakıldı?\n	-	1972	",
        soruCevap: true),
    Soru(
        soruText:
            "	22.Hangi aktör Philadelphia (1993) ve Forrest Gump (1994) filmlerinde en iyi aktör Oscar'ı kazandı?\n	-	Tom Hanks	",
        soruCevap: true),
    Soru(
        soruText:
            "	23.1927-1976 - 33, 35 veya 37 filmlerinde Alfred Hitchcock kaç tane kendini referans alan kamera yaptı?\n	-	 37	",
        soruCevap: true),
    Soru(
        soruText:
            "	24.Hangi 1982 filmi, genç, babasız bir banliyö çocuğu ile başka bir gezegenden kayıp, yardımsever ve evsiz bir ziyaretçi arasındaki sevgiyi tasvir ettiği için film hayranları tarafından büyük ölçüde kabul edildi?	-	 ET Karasal Olmayan	",
        soruCevap: true),
    Soru(
        soruText:
            "	25.1964 yapımı Mary Poppins filminde hangi oyuncu Mary Poppins'i canlandırdı?\n	-	 Julie Andrews	",
        soruCevap: true),
    Soru(
        soruText:
            "	26.Charles Bronson hangi 1963 klasik filminde yer aldı?\n	-	 The Great Escape	",
        soruCevap: true),
    Soru(
        soruText:
            "	27.Sandra Bullock, 1995'te hangi filmde Angela Bennett - Güreş Ernest Hemingway, Net veya 28 Gün karakterini oynadı?	-	 Net	",
        soruCevap: true),
    Soru(
        soruText:
            "	28.Bu filmleri hangi Yeni Zelanda kadın yönetmen yönetti - In the Cut (2003), The Water Diary (2006) ve Bright Star (2009)?	-	 Jane Campion	",
        soruCevap: true),
    Soru(
        soruText:
            "	29.2003 yılında Finding Nemo filminde hangi aktör Nemo karakterine ses verdi?	-	 Alexander Gould	",
        soruCevap: true),
    Soru(
        soruText:
            "	30.2009'daki bir filmin konusu 'İngiltere'deki en şiddetli mahkum' olarak adlandırıldı?	-	 Charles Bronson (filmin adı Bronson)	",
        soruCevap: true),
    Soru(
        soruText:
            "	31.Chritian Bale'in oynadığı 2008 filminde şu alıntı var: “Sanırım seni öldürmeyen şey, seni… yabancı yapar.”?	-	The Dark Knight	",
        soruCevap: true),
    Soru(
        soruText:
            "	32.KillBill Cilt I & II'de Tokyo yeraltı patronu O-Ren Ishii rolünü oynayan Amerikalı aktris	-	 Lucy Liu	",
        soruCevap: true),
    Soru(
        soruText:
            "	33.Hugh Jackman hangi filmde Christian Bale'in oynadığı karakterin rakip bir sihirbazı olarak rol aldı?	-	Prestige	",
        soruCevap: true),
    Soru(
        soruText:
            "	34.Harika Bir Hayat ile ünlü yönetmen Frank Capra, hangi Akdeniz ülkesinde doğdu?	-	 İtalya	",
        soruCevap: true),
    Soru(
        soruText:
            "	35.Cehennem Melekleri filminde hangi İngiliz aksiyon oyuncusu Lee Noel'in rolünü Sylvester Stallone ile birlikte oynadı?	-	 Jason Statham	",
        soruCevap: true),
    Soru(
        soruText:
            "	36.9½ Haftalık filmde Kim Bassinger'in yanında hangi Amerikalı aktör rol aldı?	-	 Mickey Rourke	",
        soruCevap: true),
    Soru(
        soruText:
            "	37.Hangi eski Doctor Who oyuncusu 'Avengers: Infinity War'da Nebula rolünü oynadı?	-	 Karen Gillan	",
        soruCevap: true),
    Soru(
        soruText:
            "	38.2007 filmi Juno'da Michael Cera'nın karşısında Juno MacGuff rolünü kim oynadı?\n	-	 Ellen Sayfası / Elliot Sayfası	",
        soruCevap: true),
    Soru(
        soruText:
            "	39.2015 filminin 1820'lerde kürk ticareti seferi konusunda bir sınır filmi ve bir ayı tarafından çekildikten sonra hayatta kalma mücadelesi hakkında adı nedir?\n	-	 Revenant	",
        soruCevap: true),
    Soru(
        soruText:
            "	40.Chris Hemsworth ve Daniel Brühl'un oynadığı hangi film, James Hunt ve Niki Lauda'nın formül 1'in rekabeti?	-\n	 Acele	",
        soruCevap: true),
  ];

  String soruTextGetir() {
    return _soruBankasi[_soruIndex].soruText;
  }

  bool soruCevapGetir() {
    return _soruBankasi[_soruIndex].soruCevap;
  }

  void sonrakiSoruGetir() {
    if (_soruIndex < _soruBankasi.length - 1) {
      _soruIndex++;
    }
  }

  bool sorularBittiMi() {
    if (_soruIndex >= _soruBankasi.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _soruIndex = 0;
  }
}
