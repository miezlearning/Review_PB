import 'package:flutter/material.dart';
import 'package:pertemuan_7/controller/main_controller.dart';
import 'package:pertemuan_7/controller/theme_controller.dart';
import 'package:pertemuan_7/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => TaskData(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeModeData(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: Provider.of<ThemeModeData>(context, listen: false).themeMode,
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: TasksScreen(),
      ),
    );
  }
}
