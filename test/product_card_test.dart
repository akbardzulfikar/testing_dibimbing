// test/product_card_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_dibimbing/widgets/product_card.dart'; // Sesuaikan import

void main() {
  testWidgets('ProductCard harus disable tombol Beli jika stok 0', (WidgetTester tester) async {
    // 1. SETUP & RENDER (PUMP)
    // Widget butuh MaterialApp sebagai induknya biar gak error error directionality
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductCard(
            name: 'Laptop Gaming',
            price: 15000000,
            stock: 0, // SKENARIO KITA: STOK 0
          ),
        ),
      ),
    );
    // 2. VERIFIKASI NAMA PRODUK
    // Pastikan text 'Laptop Gaming' muncul di layar
    expect(find.text('Laptop Gaming'), findsOneWidget);

    // 3. VERIFIKASI TOMBOL MATI (DISABLED)
    // Cari tombolnya dulu
    final tombolBeli = find.widgetWithText(ElevatedButton, 'Beli');

    // Pastikan tombolnya ketemu 1
    expect(tombolBeli, findsOneWidget);

    // Cek properti tombol: Apakah benar-benar disabled?
    // Cara ambil widget aslinya: tester.widget(...)
    final buttonWidget = tester.widget<ElevatedButton>(tombolBeli);

    // Kalau onPressed null, berarti disabled
    expect(buttonWidget.onPressed, isNull);
  });

  testWidgets('ProductCard harus disable tombol Beli jika stok 0', (WidgetTester tester) async {
    // 1. SETUP & RENDER (PUMP)
    // Widget butuh MaterialApp sebagai induknya biar gak error error directionality
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductCard(
            name: 'Laptop Gaming',
            price: 15000000,
            stock: 1, // SKENARIO KITA: STOK 1
          ),
        ),
      ),
    );
    // 2. VERIFIKASI NAMA PRODUK
    // Pastikan text 'Laptop Gaming' muncul di layar
    expect(find.text('Laptop Gaming Tuf'), findsOneWidget);

    // 3. VERIFIKASI TOMBOL MATI (DISABLED)
    // Cari tombolnya dulu
    final tombolBeli = find.widgetWithText(ElevatedButton, 'Beli');

    // Pastikan tombolnya ketemu 1
    expect(tombolBeli, findsOneWidget);

    // Cek properti tombol: Apakah benar-benar enable?
    // Cara ambil widget aslinya: tester.widget(...)
    final buttonWidget = tester.widget<ElevatedButton>(tombolBeli);

    // Kalau onPressed tidak null, berarti enable
    expect(buttonWidget.onPressed, isNotNull);
  });
}