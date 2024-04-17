import 'package:flutter/material.dart';
import 'package:t_store1/common/styles/spacing_styles.dart';
import 'package:t_store1/features/screens/login/login.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [

              //image
              Image(image: AssetImage(image), width: THelperFunctions.screenWidth() * 0.6,),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title and subtitle

              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text("Continue")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
