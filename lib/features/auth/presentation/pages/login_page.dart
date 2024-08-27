import 'package:flutter/material.dart';
import 'package:my_blog_app/core/theme/app_pallete.dart';
import 'package:my_blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:my_blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:my_blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';

class LoginPage extends StatefulWidget 
{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() 
  {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onSignInPressed() 
  {
    if (formKey.currentState?.validate() ?? false)
     {
      // Add your sign-in logic here
      // After successful sign-in, navigate to the home or other relevant page
      Navigator.pop(context); // Navigate back or to the next page
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Password',
                controller: passwordController,
                isObscureText: true, // Ensure the password is obscured
              ),
              const SizedBox(height: 20),
              AuthGradientButton(
                buttonText: 'Sign In',
                onPressed: _onSignInPressed,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SignUpPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
