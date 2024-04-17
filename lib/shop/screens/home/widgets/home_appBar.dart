import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store1/common/widgets/appbar/appbar.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import 'package:t_store1/common/products.cart/cart_menu_icon.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});



  @override
  Widget build(BuildContext context) {
    // Use the passed theme here
    return TAppBar(
      title: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.black),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),
          )
        ],
        
      ),
      actions: [TCartCounterIcon(onPressed: () {}, iconColor: TColors.white,)],
    );
  }

}




