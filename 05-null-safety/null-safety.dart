void main() {
  // 1. Non-Nullable vs Nullable Type (?)
  // Secara default di Dart 3, variabel TIDAK BOLEH bernilai null
  String namaMahasiswa = 'Aleef';
  // namaMahasiswa = null; // ERROR: Non-nullable variable

  // Tambahkan tanda tanya (?) agar variabel diizinkan menampung nilai null
  String? namaPanggilan;
  print('Nama Lengkap: $namaMahasiswa | Panggilan: $namaPanggilan');

  // 2. Null-Aware Access Operator (?.)
  // Mengakses properti/method hanya jika variabel tidak null (jika null, hasilnya null tanpa crash)
  print('Panjang nama panggilan: ${namaPanggilan?.length}');

  // 3. Null-Coalescing Operator (??)
  // Memberikan nilai cadangan (default) jika variabel sebelah kiri bernilai null
  String namaTampil = namaPanggilan ?? 'Mahasiswa Baru';
  print('Nama Tampil: $namaTampil');

  // 4. Null-Aware Assignment (??=)
  // Mengisi nilai ke variabel HANYA jika variabel tersebut saat ini masih null
  namaPanggilan ??= 'Leef';
  print('Setelah ??= : $namaPanggilan'); // Berubah jadi 'Leef'

  namaPanggilan ??= 'Budi';
  print('Setelah ??= kedua: $namaPanggilan'); // Tetap 'Leef' karena sudah tidak null

  // 5. Null Assertion Operator / Bang Operator (!)
  // Memaksa Dart menganggap variabel nullable pasti tidak null
  // PERINGATAN: Jika ternyata null saat dijalankan, aplikasi langsung crash (Null check operator used on a null value)
  String? kodePromo = 'DART2026';
  String kodeValid = kodePromo!;
  print('Kode Promo Valid: $kodeValid');

  // 6. Late Variable (late)
  // Janji kepada compiler bahwa variabel non-nullable akan diisi sebelum pertama kali dibaca
  late String statusKrs;
  statusKrs = 'Disetujui Dosen Wali';
  print('Status KRS: $statusKrs');
}