void main() {
  // 1. Ternary Operator Dasar (kondisi ? nilaiJikaTrue : nilaiJikaFalse)
  int belanja = 250000;
  String infoPromo = (belanja >= 200000)
      ? 'Dapat Diskon 10%'
      : 'Belum Dapat Diskon';
  print('Promo Belanja: $infoPromo');

  // 2. Ternary untuk Menentukan Nilai Angka / Biaya
  bool isMember = true;
  int ongkir = isMember ? 0 : 15000;
  print('Biaya Ongkir: Rp$ongkir');

  // 3. Null-Coalescing Operator (??) sebagai pasangan akrab Ternary di Dart
  // Mengambil nilai default jika variabel sebelah kiri bernilai null
  String? namaPanggilan;
  String tampilanNama = namaPanggilan ?? 'Mahasiswa Tamu';
  print('Halo, $tampilanNama!');
}