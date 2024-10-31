import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/barang_page.dart';
import 'pages/paket_page.dart';
import 'pages/sewa_page.dart';
import 'pages/invoice_page.dart';
import 'pages/pemasukan_page.dart';

void main() {
  runApp(const RentalApp());
}

class RentalApp extends StatelessWidget {
  const RentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/barang': (context) => BarangPage(),
        '/paket': (context) => PaketPage(),
        '/sewa': (context) => SewaPage(),
        '/invoice': (context) => InvoicePage(
              data: '1',
            ),
        '/pemasukan': (context) => PemasukanPage(),
      },
    );
  }
}
