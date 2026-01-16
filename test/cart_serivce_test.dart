// Lokasi: test/cart_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_dibimbing/services/cart_service.dart'; // Sesuaikan import

void main() {
  group('Uji Logic CartService', () {

    // TASK 1: Hitung Total Harga Normal
    test('Harus menghitung total harga dengan benar (No Diskon)', () {
      // 1. SETUP
      final cart = CartService();

      // 2. ACT (Skenario: Beli Apel 10rb sebanyak 2 biji)
      cart.addToCart('Apel', 10000, 2);

      // 3. EXPECT (Harusnya 20.000)
      expect(cart.getTotalPrice(), 20000);
    });

    // TASK 2: Cek Diskon > 100.000
    test('Harus dapat diskon 10% jika total belanja > 100.000', () {
      // 1. SETUP
      final cart = CartService();

      // 2. ACT (Skenario: Beli Laptop 200rb)
      cart.addToCart('Laptop', 200000, 1);

      // 3. EXPECT (200rb - 10% = 180rb)
      expect(cart.getTotalPrice(), 180000);
    });

  });
}