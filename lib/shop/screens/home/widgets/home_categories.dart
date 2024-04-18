import 'package:flutter/material.dart';
import 'package:t_store1/common/widgets/widgets.image_text_widget/vertical_image_text.dart';
import 'package:t_store1/utils/constants/image_strings.dart';

class Categories {
  final String name;
  final String imagePath;

  Categories({
    required this.name,
    required this.imagePath,
  });
}

class THomeCategories extends StatelessWidget {
   THomeCategories({Key? key}) : super(key: key);

  final List<Categories> categories = [
    Categories(name: "Category 1", imagePath: TImages.necklaceIcon),
    Categories(name: "Category 2", imagePath: TImages.braceletIcon),
    Categories(name: "Category 3", imagePath: TImages.earringsIcon),
    Categories(name: "Category 4", imagePath: TImages.pendantIcon),
    Categories(name: "Category 5", imagePath: TImages.handwithbraceletIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return TVeriticalImageText(
            image: categories[index].imagePath,
            title: categories[index].name,
            onTap: () {},
          );
        },
      ),
    );
  }
}
