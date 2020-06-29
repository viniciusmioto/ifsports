import 'package:flutter/material.dart';
import 'package:ifsports/pages/user-form.dart';
import 'package:ifsports/pages/wrapper.dart';
import 'package:ifsports/provider/users-provider.dart';
import 'package:ifsports/routes/app-routes.dart';
import 'package:ifsports/provider/settings-provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<UsersProvider>(
            create: (ctx) => UsersProvider(),
          ),
          ChangeNotifierProvider<ThemeChanger>(
            create: (_) => ThemeChanger(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkThemeEnable = Provider.of<ThemeChanger>(context).isDark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sport IF',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        backgroundColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.blueGrey,
        backgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: darkThemeEnable ? ThemeMode.dark : ThemeMode.light,
      home: Wrapper(),
      routes: {
        AppRoutes.USER_FORM: (_) => UserForm(),
      },
    );
  }
}
