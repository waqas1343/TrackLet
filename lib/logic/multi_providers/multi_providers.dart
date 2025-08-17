import 'package:provider/provider.dart';
import 'package:tracklet/logic/controllers/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:tracklet/logic/controllers/demand_controller/demand_controller.dart';
import 'package:tracklet/logic/controllers/language_provider/language_provider.dart';
import 'package:tracklet/logic/controllers/remamber_me_checkbox/checkbox_provider.dart';
import 'package:tracklet/logic/validation/validation.dart';

final List<ChangeNotifierProvider> multiAppProvider = [

  ChangeNotifierProvider<CheckboxProvider>(
    create: (context) => CheckboxProvider(),
  ),

  ChangeNotifierProvider<LanguageProvider>(
    create: (context) => LanguageProvider(),
  ),

  ChangeNotifierProvider<LoginValidationProvider>(
    create: (context) => LoginValidationProvider(),
  ),

  ChangeNotifierProvider<DemandProvider>(create: (context) => DemandProvider()),


  ChangeNotifierProvider<BottomNavProvider>(
    create: (context) => BottomNavProvider(),
  ),

];
