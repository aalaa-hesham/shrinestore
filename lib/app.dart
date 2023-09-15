import 'package:flutter/material.dart';
//import 'colors.dart';
//import 'backdrop.dart';
//import 'category_menu_page.dart';
import 'home.dart';
import 'login.dart';

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
        '/': (BuildContext context) => const HomePage(),
      },
      // TODO: Customize the theme (103)
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
//class _ShrineAppState extends State<ShrineApp> {
  //Category _currentCategory = Category.all;

 // void _onCategoryTap(Category category) {
 //   setState(() {
  //    _currentCategory = category;
   // });
 // }