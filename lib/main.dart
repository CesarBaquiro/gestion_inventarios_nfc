import 'package:flutter/material.dart';
import 'package:gestion_inventarios_nfc/data/boxes_provider.dart';
import 'package:gestion_inventarios_nfc/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'presentation/boxes_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BoxesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de inventarios',
      theme: AppTheme(selectedColor: 1).theme(),
      home: const BoxesScreen(),
    );
  }
}
