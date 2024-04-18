import 'package:flutter/material.dart';
import 'package:t_store1/common/layouts/grid_layout.dart';
import 'package:t_store1/common/product_cards/product_card_vertical.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store1/common/widgets/texts/SectionHeading.dart';
import 'package:t_store1/shop/screens/home/widgets/home_appBar.dart';
import 'package:t_store1/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store1/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class Product {
  final String name;
  final String brand;
  final String price;
  final String imagePath;

  Product({
    required this.name,
    required this.brand,
    required this.price,
    required this.imagePath,
  });
}

  final List<Product> products = [
    Product(
      name: 'Diamond Bracelet',
      brand: 'Zaisha',
      price: '35.0',
      imagePath: TImages.product4,
    ),
    Product(
      name: 'Necklace',
      brand: 'Zaisha',
      price: '50.0',
      imagePath: TImages.product2,
    ),
    Product(
      name: 'Silver Earrings',
      brand: 'Zaisha',
      price: '25.0',
      imagePath: TImages.product1,
    ),
    Product(
      name: 'Platinum Ring',
      brand: 'Zaisha',
      price: '45.0',
      imagePath: TImages.product3,
    ),
  ];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSearchHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [TImages.banner3, TImages.banner2, TImages.banner1],
                  ),
                const  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical(
                      name: products[index].name,
                      brand: products[index].brand,
                      price: products[index].price,
                      image: products[index].imagePath,
                    ),
                  ),
                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



