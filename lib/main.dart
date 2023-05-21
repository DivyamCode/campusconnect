import 'package:campusconnect/app/common/routes/pages.dart';
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(413,896,),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) =>ThemeProvider(),),
              ChangeNotifierProvider(create: (context) => RefreshProvider(),),
              ChangeNotifierProvider(create: (context) => ScrollProvider(),),
              ChangeNotifierProvider(create: (context) => ScrollProvider2(),)
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner:false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: AppRoutes.initial,
              getPages: AppPages.routes,
          ),
       );
    },);
  
  }
}

