import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Tambahkan package google_fonts
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Mobil',
      theme: ThemeData(
        // Palet warna baru yang lebih soft
        primaryColor: const Color(0xFF005B96),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF005B96),
          background: const Color(0xFFF5F5F5), // Latar belakang lebih lembut
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),

        // Menggunakan Google Fonts untuk tampilan yang lebih modern
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),

        // Desain AppBar yang konsisten
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F5F5), // Warna sama dengan background
          foregroundColor: Colors.black87,
          elevation: 0, // Menghilangkan bayangan untuk tampilan flat
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),

        // Desain Card yang konsisten
        cardTheme: CardThemeData(
          elevation: 1.5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
