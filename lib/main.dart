import 'package:flutter/material.dart';
import 'package:flutter_playground/app_inject.dart';
import 'package:flutter_playground/modules/home/presentation/home_page.dart';
import 'package:flutter_playground/modules/qrcode/presentation/qrcode_page.dart';
import 'package:nuvigator/next.dart';
import 'package:stark/stark.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stark.init([AppInject.dependencies]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: Nuvigator(
        router: AppRouter(),
      ),
    );
  }
}

class AppRouter extends NuRouter {
  @override
  String get initialRoute => 'home';

  @override
  List<NuRoute<NuRouter, Object, Object>> get registerRoutes => [
        NuRouteBuilder(
          path: 'home',
          builder: (_, __, ___) => HomePage(),
          screenType: MaterialScreenType(),
        ),
        NuRouteBuilder(path: 'qrcode', builder: (_, __, ___) => QrCodePage()),
      ];
}
