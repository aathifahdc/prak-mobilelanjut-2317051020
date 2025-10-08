// ignore_for_file: use_build_context_synchronously, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard_screen.dart';
import 'package:myapp/widgets/JustDuitLogo.dart';

class SplashScreen extends StatefulWidget {
  // Nama rute untuk navigasi
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk navigasi setelah beberapa detik
    _navigateToDashboard();
  }

  // Fungsi untuk pindah ke Dashboard setelah delay
  void _navigateToDashboard() {
    // Tunggu selama 5 detik untuk menampilkan splash screen
    Future.delayed(const Duration(seconds: 5), () {
      // Gunakan pushReplacementNamed agar pengguna tidak bisa kembali ke splash screen
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Beri warna latar belakang yang sama dengan tema aplikasi
      backgroundColor: const Color(0xfffff8f8fb),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Menggunakan kembali widget Logo yang sudah ada
            const JustDuitLogo(),
            const SizedBox(height: 24),

            // 2. Indikator loading yang berputar
            const CircularProgressIndicator(
              color: Color(0xFF1E88FF), // Warna biru sesuai tema
            ),
            const SizedBox(height: 16),

            // 3. Teks "Loading..."
            const Text(
              'Loading Der Sabar...',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
