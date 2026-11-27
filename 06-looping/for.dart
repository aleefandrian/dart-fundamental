void main() {
  // 1. For Loop Standar: for (inisialisasi; kondisi; increment/decrement)
  // Cocok digunakan ketika jumlah perulangan sudah diketahui secara pasti
  print('--- Absensi Nomor Urut ---');
  for (int i = 1; i <= 5; i++) {
    print('Mahasiswa ke-$i hadir');
  }

  // 2. Hitung Mundur (Decrement)
  print('\n--- Hitung Mundur Ujian Dimulai ---');
  for (int detik = 3; detik >= 1; detik--) {
    print('Mulai dalam $detik...');
  }
  print('Waktu pengerjaan dimulai!');

  // 3. Mengakses Index List menggunakan For Loop
  List<String> ruangLab = ['Lab Jaringan', 'Lab Pemrograman', 'Lab Multimedia'];
  print('\n--- Daftar Ruangan & Nomor Index ---');
  for (int i = 0; i < ruangLab.length; i++) {
    print('Index [$i]: ${ruangLab[i]}');
  }
}