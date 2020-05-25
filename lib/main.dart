import 'package:flutter/material.dart';
import 'package:mobxapp/screens/login_screen.dart';
import 'package:mobxapp/store/login_store.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore  >(
      create: (_)=> LoginStore(),
        child:MaterialApp(
          title: 'MobX Tutorial',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.deepPurpleAccent,
            cursorColor: Colors.deepPurpleAccent,
            scaffoldBackgroundColor: Colors.deepPurpleAccent,
          ),
          home: LoginScreen(),
        )
    );
  }
}
