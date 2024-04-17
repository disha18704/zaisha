import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/features/screens/signup.widgets/verify_email.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import "package:get/get.dart";

Form TSignupform(BuildContext context, bool dark) {
  return Form(
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              //First name
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            //Last Name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),

        //email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //PhoneNo
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwSections),

        //Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),

        const SizedBox(height: TSizes.spaceBtwInputFields),

        //Terms and conditions checkbox

        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${TTexts.isAgreeTo}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: TTexts.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                        ),
                  ),
                  TextSpan(
                    text: '${"and"}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: TTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwSections),

        //Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ),
  );
}
