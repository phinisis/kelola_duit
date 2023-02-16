import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelola_duit/halaman_login.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});
  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  String _email = "";
  String _password = "";
  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Halaman Forget"),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      label: Text("Tanggal Lahir"),
                      hintText: 'DD-MM-YYYY'),
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
                      hintText: 'Enter New Password'),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (_email == "123" && _password == "123") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        } else {
                          _errorMessage = "Tanggal Lahir";
                        }
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
