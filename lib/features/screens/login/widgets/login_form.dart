import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/features/screens/password_configuration/forgot_password.dart';
import 'package:t_store1/features/screens/password_configuration/reset_password.dart';
import 'package:t_store1/features/screens/signup.widgets/signup.dart';
import 'package:t_store1/navigation_menu.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/constants/text_strings.dart';

class Tloginform extends StatelessWidget {
  const Tloginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
    
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
                    //password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            //forgot Password and remember me

            Row(
              //remember me 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                //forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                )
              ],
            ),
            
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            // sign in button
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => NavigationMenu()), child: Text(TTexts.signIn))),

            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            //create account button

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: Text(TTexts.createAccount),
                
              ),
            ),

    const SizedBox(height: TSizes.spaceBtwSections),
     // Add spacing between button and text
      Text(
        TTexts.orSignUpWith.toUpperCase(),
        style: const TextStyle(color: Colors.grey), // Optional: Style the text
      ),
          ],
        ),
      ),
    );
  }
}
