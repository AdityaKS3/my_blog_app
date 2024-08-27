import 'package:flutter/material.dart';
import 'package:my_blog_app/core/theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const AuthGradientButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent, // Set to transparent to avoid white edges
          shadowColor: Colors.transparent, // Removes button shadow if any
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7), // Match the container's border radius
          ),
          padding: EdgeInsets.zero, // Removes padding to avoid the white border
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: AppPallete.whiteColor, // Ensures the text color is consistent
          ),
        ),
      ),
    );
  }
}
