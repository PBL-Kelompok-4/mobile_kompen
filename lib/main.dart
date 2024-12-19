import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/provider_setup.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';
import 'package:sistem_kompen_app/ui/routes/app_pages.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sistem Kompen Polinema',
        theme: ThemeData(
          useMaterial3: false,
        ),
        initialRoute: AppRoutes.splash,
        onGenerateRoute: route.AppPages.generateRoute,
      ),
    );
  }
}