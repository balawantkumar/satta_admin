import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:satta_admin/app/auth/controller/login_controller.dart';
import 'package:satta_admin/app/auth/view/login_view.dart';
import 'package:satta_admin/app/global/colors.dart';
import 'package:satta_admin/language/applanguage.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  Future.delayed(Duration(seconds: 3)).then((value) {
    FlutterNativeSplash.remove();
    runApp(Satta_admin());
  });
}

class Satta_admin extends StatelessWidget {
  const Satta_admin({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
      locale: Locale('us', 'US'),
      translations: AppLanguage(),
      fallbackLocale: Locale('us', 'US'),
      theme: ThemeData(
        textTheme: GoogleFonts.podkovaTextTheme(textTheme).copyWith(
          bodySmall: Theme.of(context).textTheme.bodySmall!.apply(
                color: appcolor().ambercolor,
              ),
          titleSmall: Theme.of(context).textTheme.titleSmall!.apply(
                color: appcolor().ambercolor,
              ),
          titleMedium: Theme.of(context).textTheme.titleMedium!.apply(
                color: appcolor().ambercolor,
              ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: login_view(),
    );
  }
}
