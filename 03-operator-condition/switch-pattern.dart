void main() {
  // 1. Switch Statement Tradisional (untuk cabang aksi/print)
  // Di Dart 3, keyword 'break' tidak wajib jika blok case tidak kosong
  String grade = 'A';

  switch (grade) {
    case 'A':
      print('Predikat: Sangat Memuaskan');
    case 'B':
      print('Predikat: Baik');
    case 'C':
      print('Predikat: Cukup');
    default:
      print('Predikat: Perlu Perbaikan');
  }

  // 2. Switch Expression & Pattern Matching (Fitur Modern Dart 3)
  // Langsung mengembalikan nilai ke variabel dan mendukung operator relasional (<, >=)
  int nilaiAkhir = 84;

  String keterangan = switch (nilaiAkhir) {
    >= 85 && <= 100 => 'Lulus dengan Pujian (A)',
    >= 75 => 'Lulus (B)',
    >= 60 => 'Lulus Bersyarat (C)',
    _ => 'Tidak Lulus (D/E)', // '_' adalah wildcard (pengganti default)
  };
  print('Nilai $nilaiAkhir -> $keterangan');

  // 3. Pattern Matching pada Tuple / Record
  (String role, bool aktif) akun = ('admin', true);

  String akses = switch (akun) {
    ('admin', true) => 'Akses Penuh Sistem',
    ('admin', false) => 'Akun Admin Nonaktif',
    ('mahasiswa', true) => 'Akses Portal Akademik',
    _ => 'Akses Ditolak',
  };
  print('Status Akses: $akses');
}