import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kelola_duit/halaman_login.dart';

class About extends StatelessWidget {
  const About({super.key});
  static const showCard = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        child: showCard ? _buildCard() : _buildStack(),
      ),
    );
  }
}

Widget _buildCard() {
  return SizedBox(
    child: Card(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(top: 50),
              height: 230,
              width: 130,
              child: Image.asset('lib/gambar/1.jpg')),
          SizedBox(height: 20),
          ListTile(
            title: const Text(
              'Muhammad Andre Fauzi',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.male, color: Color.fromARGB(255, 0, 4, 245)),
          ),
          ListTile(
            title: Text(
              '20103098',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.numbers, color: Colors.black),
          ),
          Container(
              padding: EdgeInsets.only(top: 50),
              height: 200,
              width: 150,
              child: Image.asset('lib/gambar/2.jpg')),
          SizedBox(height: 20),
          ListTile(
            title: const Text(
              'Oktavia Aulia',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.female, color: Colors.pink),
          ),
          ListTile(
            title: Text(
              '20103167',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.numbers, color: Colors.black),
          ),
          Container(
              padding: EdgeInsets.only(top: 50),
              height: 230,
              width: 130,
              child: Image.asset('lib/gambar/3.jpg')),
          SizedBox(height: 20),
          ListTile(
            title: const Text(
              'Muhammad Akmal Fachri',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.male, color: Color.fromARGB(255, 0, 4, 245)),
          ),
          ListTile(
            title: Text(
              '20103095',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            leading: Icon(Icons.numbers, color: Colors.black),
          ),
        ]),
      ),
    ),
  );
}

Widget _buildStack() {
  return Stack();
}
