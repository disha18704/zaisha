import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import "package:t_store1/utils/helpers/helper_function.dart";

class ResetPassword extends StatelessWidget {
  const ResetPassword(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed})
      : super(key: key);

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // image with 60% of screen width
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Title and subtitle
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed, 
                  child: const Text("Done"),
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.resendEmail),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
