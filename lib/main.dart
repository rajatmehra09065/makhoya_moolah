import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/view_model/auth_view_model.dart';
import 'package:makhoya_moolah/views/form_fill_up/form_fill_up.dart';
import 'package:makhoya_moolah/views/splash_Screen/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[ 
      ChangeNotifierProvider(create: (_)=>AuthViewModel())
    ],
    child:GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName ,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,),
              backgroundColor: Colors.transparent),
          fontFamily: regular
      ),

      home: SplashScreen(),

    ), );
  }
}



