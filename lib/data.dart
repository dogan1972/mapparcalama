List<String> personeller = ["ogr1", "ogr2", "ogr3", "ogr4", "ogr5"];
Map<String, dynamic> yeniMap = {
  "p1": {"adi": "Asım1", "soyadi": "Kiwroş1"},
  "p2": {"adi": "Asım2", "soyadi": "Kiwroş2", "gorevi": "Baş Kiwroş2"},
  "p3": {"adi": "Asım3", "soyadi": "Kiwroş3", "gorevi": "Baş Kiwroş3"},
};
List<Personel> listem = [];
List<Personel> maptenGelenListe = [];

class Personel {
  late String adi;
  late String soyadi;
  Personel({required this.adi, required this.soyadi});

  Personel.listeCoz(List liste) {
    listem = personeller
        .map((index) => Personel(adi: index, soyadi: index))
        .toList();
  }

  Personel.mapCoz(Map mapo) {
    maptenGelenListe = mapo.entries
        .map(
          (deger) => Personel(
            adi: deger.value["adi"].toString(),
            soyadi: deger.value["soyadi"].toString(),
          ),
        )
        .toList();
  }

  @override
  String toString() {
    return "$adi - $soyadi";
  }
}
