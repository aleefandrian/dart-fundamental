// async & await membuat kode asynchronous terlihat rapi dan berurutan
// seperti kode synchronous biasa (menghindari callback bertumpuk / callback hell).

Future<String> loginUser(String username) async {
  await Future.delayed(Duration(seconds: 1));
  return 'TOKEN_RAHASIA_${username.toUpperCase()}';
}

Future<Map<String, dynamic>> ambilProfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return {
    'nama': 'Aleef Andrian',
    'prodi': 'Teknologi Informasi',
    'tokenAktif': token,
  };
}

// Fungsi yang memakai 'await' wajib ditandai dengan keyword 'async'
Future<void> main() async {
  print('--- Proses Login Berurutan (Sequential) ---');
  print('1. Mengirim kredensial login...');

  // Eksekusi baris di bawah akan menunggu hingga loginUser() selesai
  String token = await loginUser('aleef');
  print('2. Login berhasil! Token didapat: $token');

  print('3. Mengambil profil menggunakan token...');
  Map<String, dynamic> profil = await ambilProfil(token);
  print('4. Selamat datang, ${profil['nama']} (${profil['prodi']})!');

  // Bonus: Menjalankan 2 proses async secara BERSAMAAN (Parallel) dengan Future.wait
  print('\n--- Proses Paralel dengan Future.wait ---');
  Stopwatch timer = Stopwatch()..start();

  List<String> hasilParalel = await Future.wait([
    Future.delayed(Duration(seconds: 1), () => 'Jadwal Kuliah'),
    Future.delayed(Duration(seconds: 1), () => 'Nilai KHS'),
  ]);

  timer.stop();
  print('Data didapat bersamaan: $hasilParalel dalam ${timer.elapsed.inSeconds} detik.');
}