import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/device/device_utility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';
import 'package:t_store1/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode1(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed:() => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}