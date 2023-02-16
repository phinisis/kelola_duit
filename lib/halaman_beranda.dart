import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kelola_duit/about.dart';
import 'package:kelola_duit/halaman_login.dart';
import 'package:kelola_duit/kelola_duit.dart';
import 'package:kelola_duit/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        leading: IconButton(
            onPressed: (() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            }),
            icon: Icon(Icons.home)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => LoginPage())));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ListTile(
            title: Text("Kelola Duitku"),
            leading: Icon(Icons.attach_money_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MyHomePage())));
            },
          ),
          ListTile(
            title: Text('Tentang'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => About())));
            },
          )
        ],
      ),
    );
  }
}
