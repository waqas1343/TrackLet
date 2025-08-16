import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracklet/core/theme/app_text_theme/app_text_theme.dart';
import 'package:tracklet/logic/multi_providers/multi_providers.dart';
import 'package:tracklet/presentation/main_app/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const TrackLet());
}

class TrackLet extends StatelessWidget {
  const TrackLet({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiAppProvider,
      child: MaterialApp(
        theme: AppTextTheme.lightTheme,
        darkTheme: AppTextTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        // initialRoute: AppRoutes.splash,
        // onGenerateRoute: AppRouter.generateRoute,
        home: BottomNavBar(),
      
      ),
    );
  }
}
