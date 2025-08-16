import 'package:flutter/material.dart';
import 'package:tracklet/core/routes/app_routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.selectLanguage);
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xff002455),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/splashScreen.png")),
            const SizedBox(height: 40),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
