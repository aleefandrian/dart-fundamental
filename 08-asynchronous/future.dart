// Future mewakili nilai/data yang belum tersedia sekarang,
// tetapi akan selesai di masa depan (seperti ambil data API atau baca file).

Future<String> ambilDataServer() {
  // Future.delayed mensimulasikan proses jaringan yang butuh waktu 2 detik
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data Mahasiswa Berhasil Diunduh (JSON)';
  });
}

Future<int> hitungTotalSks() {
  // Future.value langsung membungkus nilai yang sudah siap menjadi Future
  return Future.value(22);
}

void main() {
  print('1. Aplikasi mulai memuat halaman...');

  // Menggunakan callback .then() dan .whenComplete()
  // Perhatikan urutan print di konsol: baris '3.' akan muncul SEBELUM baris '2.'!
  ambilDataServer()
      .then((hasil) {
        print('2. [Selesai] $hasil');
      })
      .whenComplete(() {
        print('   -> Proses request server ditutup.');
      });

  hitungTotalSks().then((sks) {
    print('   -> Total SKS terdeteksi: $sks SKS');
  });

  print('3. UI tetap responsif (tidak macet/freeze) sambil menunggu data.');
}