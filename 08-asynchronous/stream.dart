// Jika Future hanya mengembalikan SATU nilai di masa depan,
// Stream mengembalikan BANYAK nilai secara bertahap seiring waktu (aliran data real-time).

// Fungsi Stream ditandai dengan 'async*' dan mengirim data bertahap dengan 'yield'
Stream<int> hitungMundurUjian(int mulaiDari) async* {
  for (int i = mulaiDari; i >= 1; i--) {
    await Future.delayed(Duration(milliseconds: 600));
    yield i; // Mengirim nilai ke pendengar (listener) tanpa menghentikan fungsi
  }
}

Future<void> main() async {
  print('--- Cara 1: Mendengarkan Stream dengan await for ---');
  await for (int sisaDetik in hitungMundurUjian(3)) {
    print('Sisa waktu: $sisaDetik detik...');
  }
  print('Waktu habis! Jawaban otomatis dikumpulkan.\n');

  // Cara 2: Menggunakan .listen() dan transformasi data (.where / .map)
  print('--- Cara 2: Stream Sensor Suhu Ruangan (.listen) ---');
  Stream<double> sensorSuhu = Stream.fromIterable([27.5, 29.0, 32.4, 34.1, 28.0]);

  sensorSuhu
      .where((suhu) => suhu > 30.0) // Hanya ambil suhu di atas 30 derajat
      .listen(
        (suhuPanas) => print('[PERINGATAN SUHU TINGGI]: $suhuPanas°C'),
        onDone: () => print('Monitoring sensor selesai.'),
      );
}