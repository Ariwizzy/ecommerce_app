import 'package:ecommerce_app/Models/models.dart';
import 'package:flutter/material.dart';


class DummyData{
  List<CategoriesModel>categoriesModel =[
    CategoriesModel("Clothes", "https://t-rific.com/wp-content/uploads/2020/03/Summer-Kids-Little-Girls-Clothes-Cute-Flower-Print-Short-Sleeve-Ruffler-T-shirt-Tops-fashion-Belt.jpg"),
    CategoriesModel("Cameras", "https://i5.walmartimages.com/asr/feaf29b0-1f85-456e-b3ae-d372c7f36803_1.68c6e03e1e61758dac5f09f711ad4477.jpeg"),
    CategoriesModel("Bags", "https://cf.shopee.ph/file/fa89da4bc09f2301595bd475c5c6b675"),
    CategoriesModel("Laptops", "https://cnet2.cbsistatic.com/img/yHWaGAUeBOUczaalBEtAn4Bdyt8=/940x0/2019/09/04/ae16131c-5396-420c-acd4-1a4ed6a8afd9/proart-studiobook-one-1.png"),
    CategoriesModel("Speakers", "https://images.yaoota.com/iVNAAQ8BqCuaZ-uaZ_vkUvzfJs0=/trim/yaootaweb-production-ng/media/crawledproductimages/f526c3374573808b62801fe3f3afbafb52638d5d.jpg"),
    CategoriesModel("Phones", "https://s.clipartkey.com/mpngs/s/234-2346583_smartphones-png-combo-new-mobile-phone-png.png"),
    CategoriesModel("Food", "https://png.pngtree.com/element_pic/16/11/21/bafc0fa3fbcedf314f4a210ab8c65c12.jpg"),
  ];
  List<CategoriesModel> get categories {
    return [...categoriesModel];
  }
}