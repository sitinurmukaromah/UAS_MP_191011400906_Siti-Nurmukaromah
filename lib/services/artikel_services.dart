import 'package:artikel/models/artikel_model.dart';
import 'package:artikel/models/detail_artikel_model.dart';


import 'package:dio/dio.dart';

class ArtikelService{
  Future<artikel>tampilkanartikel()async{

      var response = await Dio().get(
        'https://api.indosiana.com/api/articles');
        return artikel.fromJson(response.data);


  }

  Future<detail_artikel>tampilkanDetail_artikel({String?id})async{
    var response = await Dio().get(
      'https://api.indosiana.com/api/articles/id_artikel/$id');
    return detail_artikel.fromJson(response.data);
  }
}