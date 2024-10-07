// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'infrastracture/routes/route_pages.dart';
import 'infrastracture/routes/route_path.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Managment',
      initialRoute: RoutePath.loading,
      getPages: RoutePages.pages,
    );
  }
}
