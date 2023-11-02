import 'package:test_task/core/utils/assets.dart';

class CategoriesModel{
  final String image;
  final String name;

  CategoriesModel({required this.image, required this.name});


  static List<CategoriesModel> categoriesList=[
    CategoriesModel(image: AssetsData.constructions, name: "Constructions"),
    CategoriesModel(image: AssetsData.insurances, name: "Insurances"),
    CategoriesModel(image: AssetsData.legal, name: "Legal"),
    CategoriesModel(image: AssetsData.buySell, name: "Buy & Sell"),
    CategoriesModel(image: AssetsData.accounting, name: "Accounting Services"),
  ];
}