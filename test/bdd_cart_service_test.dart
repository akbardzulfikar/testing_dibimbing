// Lokasi: test/cart_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_dibimbing/services/cart_service.dart'; // Sesuaikan import

void main() {
  group('Uji Logic CartService', () {
    print("🛒 [BDD CART TEST] Starting CartService BDD tests...");

    test(
      'Given keranjang berisi Apel 10rb (2x), When hitung total, Then hasil harus 20rb',
      () {
        print("📝 [BDD TEST 1] Starting: Apel 10rb x2 = 20rb");
        // 1. GIVEN (Kondisi Awal)
        print("  ├─ GIVEN: Creating new CartService");
        final cart = CartService();

        // 2. WHEN (Aksi)
        print("  ├─ WHEN: Adding Apel 10000 qty 2");
        cart.addToCart('Apel', 10000, 2);

        // 3. THEN (Ekspektasi)
        print("  ├─ THEN: Expecting total price = 20000");
        expect(cart.getTotalPrice(), 20000);
        print("  └─ ✅ TEST 1 PASSED!");
      },
    );

    test(
      'Given belanjaan Laptop 200rb, When hitung total, Then harga didiskon 10% jadi 180rb',
      () {
        print("📝 [BDD TEST 2] Starting: Laptop 200rb with 10% discount = 180rb");
        // 1. GIVEN
        print("  ├─ GIVEN: Creating new CartService");
        final cart = CartService();

        // 2. WHEN
        print("  ├─ WHEN: Adding Laptop 200000 qty 1");
        cart.addToCart('Laptop', 200000, 1);

        // 3. THEN
        print("  ├─ THEN: Expecting total price = 180000 (after 10% discount)");
        expect(cart.getTotalPrice(), 180000);
        print("  └─ ✅ TEST 2 PASSED!");
      },
    );

    print("✅ [BDD CART TEST] All CartService BDD tests completed!");
  });
}
