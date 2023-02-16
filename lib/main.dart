import 'package:flutter/material.dart';
import 'package:kelola_duit/db/database_instance.dart';
import 'package:kelola_duit/halaman_beranda.dart';
import 'package:kelola_duit/halaman_login.dart';
import 'package:kelola_duit/kelola_duit.dart';
import 'package:kelola_duit/models/transaksi_model.dart';
import 'package:kelola_duit/screens/create_screen.dart';
import 'package:kelola_duit/screens/update_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kelola Duitku",
      home: LoginPage(),
    );
  }
}
