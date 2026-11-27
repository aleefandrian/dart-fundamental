void main() {
  // do-while Loop menjalankan blok kode MINIMAL SATU KALI terlebih dahulu,
  // baru mengecek kondisi perulangan di AKHIR.
  // Cocok untuk simulasi menu interaktif, percobaan koneksi ulang (retry), atau validasi input.

  int percobaanKoneksi = 1;
  int maksimalPercobaan = 3;
  bool terhubungServer = false;

  print('--- Menghubungkan ke Server Kampus ---');
  do {
    print('Percobaan ke-$percobaanKoneksi: Menghubungi server...');

    // Simulasi berhasil terhubung pada percobaan ke-3
    if (percobaanKoneksi == 3) {
      terhubungServer = true;
      print('-> Berhasil terhubung ke server!');
    } else {
      print('-> Gagal, mencoba ulang...');
    }

    percobaanKoneksi++;
  } while (!terhubungServer && percobaanKoneksi <= maksimalPercobaan);

  // Bukti bahwa blok 'do' tetap jalan 1x walau kondisi while sejak awal false
  print('\n--- Uji Kondisi Awal False ---');
  int angka = 100;
  do {
    print('Tetap dijalankan 1 kali meskipun angka ($angka) > 10');
  } while (angka < 10);
}