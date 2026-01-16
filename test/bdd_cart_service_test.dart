// Lokasi: test/cart_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_dibimbing/services/cart_service.dart'; // Sesuaikan import

void main() {
  group('Uji Logic CartService', () {
    test(
      'Given keranjang berisi Apel 10rb (2x), When hitung total, Then hasil harus 20rb',
      () {
        // 1. GIVEN (Kondisi Awal)
        final cart = CartService();

        // 2. WHEN (Aksi)
        cart.addToCart('Apel', 10000, 2);

        // 3. THEN (Ekspektasi)
        expect(cart.getTotalPrice(), 20000);
      },
    );

    test(
      'Given belanjaan Laptop 200rb, When hitung total, Then harga didiskon 10% jadi 180rb',
      () {
        // 1. GIVEN
        final cart = CartService();

        // 2. WHEN
        cart.addToCart('Laptop', 200000, 1);

        // 3. THEN
        expect(cart.getTotalPrice(), 180000);
      },
    );
  });
}
