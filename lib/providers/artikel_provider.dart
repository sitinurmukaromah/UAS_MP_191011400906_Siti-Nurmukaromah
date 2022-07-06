import 'package:artikel/models/artikel_model.dart';
import 'package:artikel/models/detail_artikel_model.dart';

import 'package:artikel/services/artikel_services.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier{
  ArtikelProvider(){
    showListArtikel();
  }

  final ArtikelService _artikelService =ArtikelService();
  artikel Artikel =artikel();
  detail_artikel Detail_artikel= detail_artikel();


  showListArtikel() async {
    Artikel = await _artikelService .tampilkanartikel();
    notifyListeners();

  }

ShowDetailArtikel({String? inputKey})async{
  Detail_artikel = await _artikelService.tampilkanDetail_artikel(id: inputKey);
    notifyListeners();
}

}