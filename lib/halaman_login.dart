import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kelola_duit/forgot.dart';
import 'package:kelola_duit/halaman_beranda.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _password = "";
  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Halaman Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: 190,
                padding: EdgeInsets.only(top: 40),
                child: Image.asset("lib/gambar/duit.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: 'abc@gmail.com'),
                onChanged: (text) {
                  _email = text;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter password'),
                onChanged: (text) {
                  _password = text;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (_email == "123" && _password == "123") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        _errorMessage = "Email atau Password Salah";
                      }
                    });
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
            Container(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ForgetPage()));
                  });
                },
                child: Text('Lupa Password',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
