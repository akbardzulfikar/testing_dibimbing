// test/password_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_dibimbing/utils/validator.dart'; // Import file logic (yg belum ada isinya)

void main() {
  test('Password harus gagal jika kurang dari 6 karakter', () {
    // 1. Arrange & Act
    bool result = validatePassword("12345"); // Panggil fungsi yg belum dibuat

    // 2. Assert
    expect(result, false); // Harapannya False
  });
}