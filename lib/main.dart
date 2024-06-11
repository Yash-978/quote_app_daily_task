import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/routes.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/invoice',
      routes: AppRoutes.routes,
    );
  }
}
