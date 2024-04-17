/*import 'package:flutter/material.dart';
import"package:flutter/cupertino.dart";
import 'package:get/get.dart';
import 'package:t_store1/shop/screens/home/home.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 3) {
      Get.to( HomeScreen()); // Assuming LoginScreen is imported
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}*/