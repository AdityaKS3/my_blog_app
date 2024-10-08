import 'package:flutter/material.dart';
import 'package:my_blog_app/core/theme/theme.dart';
import 'package:my_blog_app/features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BloggurThings',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
