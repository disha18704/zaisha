import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:get/get.dart';
import 'package:t_store1/shop/screens/home/home.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator( index) {
    carousalCurrentIndex.value = index;
  }
}
