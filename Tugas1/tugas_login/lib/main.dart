import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan banner "DEBUG"
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk mengambil data dari TextField
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Fungsi untuk handle logic saat tombol login ditekan
  void _login() {
    // Kredensial yang benar
    const String correctEmail = 'stefano.garrentk@gmail.com';
    const String correctPassword = 'stefano1';

    // Mengambil input dari pengguna
    String enteredEmail = _emailController.text;
    String enteredPassword = _passwordController.text;

    // Pengecekan kredensial
    if (enteredEmail == correctEmail && enteredPassword == correctPassword) {
      // Jika berhasil, tampilkan SnackBar sukses
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Successful!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      // Jika gagal, tampilkan SnackBar error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          // Padding untuk memberikan jarak dari tepi layar
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Flutter Logo
              const FlutterLogo(size: 80),
              const SizedBox(height: 48.0),

              // TextField untuk Email
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

              // TextField untuk Password
              TextField(
                controller: _passwordController,
                obscureText: true, // Menyembunyikan teks password
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // Tombol Log In
              SizedBox(
                width: double.infinity, // Membuat tombol selebar layar
                child: ElevatedButton(
                  onPressed: _login, // Memanggil fungsi _login saat ditekan
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('Log In'),
                ),
              ),
              const SizedBox(height: 12.0),

              // Teks "Forgot password?"
              TextButton(
                onPressed: () {
                  // Aksi untuk "Forgot Password" bisa ditambahkan di sini
                },
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Membersihkan controller saat widget tidak lagi digunakan
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}