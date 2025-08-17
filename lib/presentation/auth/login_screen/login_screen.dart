import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/constants/colors/app_colors.dart';
import 'package:tracklet/core/routes/app_routes/app_routes.dart';
import 'package:tracklet/core/widgets/custom_button/custom_button.dart';
import 'package:tracklet/core/widgets/custom_text/custom_text.dart';
import 'package:tracklet/core/widgets/textfield/app_textfield.dart';
import 'package:tracklet/logic/validation/validation.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final validation = Provider.of<LoginValidationProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 150),

                        Center(
                          child: CustomText(
                            text: 'Login to Your Account',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        const SizedBox(height: 8),

                        Center(
                          child: CustomText(
                            text:
                                'Enter the email and password provided by\nyour admin.',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 30),

                        CustomText(
                          text: 'Email Address',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 10),

                        AppTextFields.customTextField(
                          hintText: 'Enter your email',
                          controller: emailController,
                          errorText: validation.emailError,
                          validator: (_) => validation.emailError, onChanged: (value) {  },
                        ),
                        const SizedBox(height: 10),

                        CustomText(
                          text: 'Password',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 10),

                        AppTextFields.customTextField(
                          hintText: 'Enter your password',
                          controller: passwordController,
                          obscureText: true,
                          errorText: validation.passwordError,
                          validator: (_) => validation.passwordError, onChanged: (value) {  },
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Checkbox(
                              activeColor: AppColors.darkBlue,
                              checkColor: Colors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: const VisualDensity(
                                horizontal: -2,
                                vertical: -2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              value: validation.isChecked,
                              onChanged: (value) {
                                validation.toggleCheckbox(value!);
                              },
                            ),
                             CustomText(text: 'Remember me', style: Theme.of(context).textTheme.labelMedium,),
                          ],
                        ),

                        const Spacer(),

                        AppButtons.customElevatedButton(
                          context: context,
                          label: 'Login',
                          onPressed: () {
                            if (validation.validateForm(
                              emailController.text.trim(),
                              passwordController.text.trim(),
                            )) {
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.bottomNavBar,
                              );
                            }
                          },
                          backgroundColor: AppColors.darkBlue,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
