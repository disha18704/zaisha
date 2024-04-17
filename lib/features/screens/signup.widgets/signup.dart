import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';
import 'package:t_store1/widgets.login_signup/social_buttons.dart';
import 'package:t_store1/common/widgets/login_signup/form_divider.dart';
import 'package:t_store1/features/screens/signup.widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode1(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              //form
              TSignupform(context, dark),
              // Divider

              TformDivider(dividerText: TTexts.orSignUpWith.toUpperCase()),

              // social Buttons
              const TSocialButtons(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
