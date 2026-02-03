import 'package:flutter/material.dart';
import 'package:map_parcalama_class_yapma/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Map Parçalama",
      home: Scaffold(body: Govde()),
    );
  }
}

class Govde extends StatelessWidget {
  const Govde({super.key});

  @override
  Widget build(BuildContext context) {
    Personel.listeCoz(personeller);
    Personel.mapCoz(yeniMap);

    return Center(child: Text(maptenGelenListe[0].toString()));
  }
}
