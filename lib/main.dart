import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'global/constant/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(320, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Tradiono App',
          debugShowCheckedModeBanner: false,
          getPages: Routes.pages,
          initialRoute: Routes.kLogin,
          theme: ThemeData(
            scaffoldBackgroundColor: kCultured,
            primaryColor: kCharcoal,
            fontFamily: "OpenSans",
          ),
        );
      },
    );
  }
}
