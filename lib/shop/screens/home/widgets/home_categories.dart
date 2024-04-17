import 'package:flutter/material.dart';
import 'package:t_store1/common/widgets/widgets.image_text_widget/vertical_image_text.dart';
import 'package:t_store1/utils/constants/image_strings.dart';





class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return TVeriticalImageText(
            image: TImages.necklaceIcon,
            title: "Necklaces",
            onTap: () {},
          );
        },
      ),
    );
  }
}