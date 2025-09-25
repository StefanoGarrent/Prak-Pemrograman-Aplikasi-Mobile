import 'package:flutter/material.dart';
import 'home_page.dart';

class halamanLogin extends StatefulWidget {
  const halamanLogin({Key? key}) : super(key: key);

  @override
  State<halamanLogin> createState() => _halamanLoginState();
}

class _halamanLoginState extends State<halamanLogin> {
  String username = "";
  String password = "";
  bool loginBerhasil = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Login Page")),
        body: Column(
          children: [_usernameField(), _passwordField(), _loginButton(context)],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          labelText: "Username",
          hintText: "Masukkan Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: (loginBerhasil) ? Colors.blue : Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          labelText: "Password",
          hintText: "Masukkan Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: (loginBerhasil) ? Colors.blue : Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (loginBerhasil) ? Colors.blue : Colors.red,
          foregroundColor: Colors.white,
        ),

        onPressed: () {
          String text = "";
          if (username == "Gerii" && password == "akusayangkamu") {
            setState(() {
              text = "Login Berhasil";
              loginBerhasil = true;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(username: username),
              ),
            );
          } else {
            setState(() {
              text = "Login Gagal";
              loginBerhasil = false;
            });
          }

          print("loginBerhasil : $loginBerhasil");
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);



        },
        child:  Text("Login"),
      ),
    );
  }
}