import 'package:flutter/material.dart';
import 'package:t_store1/common/styles/spacing_styles.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';
import 'package:t_store1/features/screens/login/widgets/login_form.dart';
import 'package:t_store1/features/screens/login/widgets/login_header.dart';
import 'package:t_store1/widgets.login_signup/login_form_divider.dart';
import 'package:t_store1/widgets.login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key}); // This constructor is now constant

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode1(context); // Call static method

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,

          child: Column(

            children: [
              TLoginHeader(),
              Tloginform(),
              // Divider
              Tloginformdivider(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
