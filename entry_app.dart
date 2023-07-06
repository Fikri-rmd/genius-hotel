import 'package:flutter/material.dart';
import 'package:firebase_auth101/home_page.dart';
import 'package:firebase_auth101/menu_page.dart';
import 'package:firebase_auth101/zoom_home_page.dart';
import 'package:provider/provider.dart';

class EntryApp extends StatefulWidget {
  const EntryApp({super.key});

  @override
  State<EntryApp> createState() => _EntryAppState();
}

class _EntryAppState extends State<EntryApp> with TickerProviderStateMixin {
  late MenuProvider menuController;

  @override
  void initState() {
    super.initState();

    menuController = MenuProvider(
      vsync: this,
    )..addListener(
        () => setState(
          () {},
        ),
      );
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => menuController,
      child: ZoomHomePage(
        menuScreen: const MenuPage(),
        contentScreen: Layout(
          contentBuilder: (cc) => const HomePage(),
        ),
      ),
    );
  }
}
