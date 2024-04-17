import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:get/get.dart';
import 'package:t_store1/features/screens/password_configuration/reset_password.dart';
import 'package:t_store1/utils/constants/image_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections * 2,
            ),

            // text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),

            // submit Button
            SizedBox( 
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => ResetPassword(image: TImages.deliveredEmailIllustrain, title: TTexts.changeYourPasswordTitle, subTitle: TTexts.changeYourPasswordSubTitle, onPressed: () {})), child: const Text("Submit")))
          ],
        ),
      ),
    );
  }
}
