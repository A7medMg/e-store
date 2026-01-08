
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_store/core/app/check_interNet_connection.dart';
import 'package:e_store/core/common/screens/no_internet.dart';
import 'package:e_store/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: CheckInternetConnection.instance.isInternetConnected, builder: (_,value,_){
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          builder: (context,widget){
            return Scaffold(
              body: Builder(builder: (context){
                CheckInternetConnection.instance.init();
                return widget!;
              }),
            );
          },
        debugShowCheckedModeBanner: false,
        home: value? const HomeView(): const NoInternetConaction(),
            ),
      );
    }) ;
    
    
   
  }
}