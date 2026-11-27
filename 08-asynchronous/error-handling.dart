// Simulasi fungsi API yang bisa gagal (throw Exception)
Future<String> tarikDataNilai(bool serverNormal) async {
  await Future.delayed(Duration(seconds: 1));

  if (!serverNormal) {
    throw Exception('503 Service Unavailable: Server kampus sedang sibuk.');
  }

  return 'IPK Semester 3: 3.88';
}

Future<void> main() async {
  // 1. Menangani Error pada async-await menggunakan blok try - catch - finally
  print('--- Skenario 1: Server Bermasalah (try-catch-finally) ---');
  bool sedangLoading = true;

  try {
    print('Loading dimulai: $sedangLoading');
    String data = await tarikDataNilai(false); // Sengaja dibuat gagal
    print('Data: $data'); // Tidak akan dijalankan jika baris atas error
  } on Exception catch (e) {
    // Menangkap error spesifik bertipe Exception agar aplikasi tidak crash
    print('Terjadi Kesalahan Jaringan -> $e');
  } catch (e, stackTrace) {
    // Menangkap semua jenis error tak terduga lainnya beserta jejak barisnya
    print('Error Umum: $e\nJejak: $stackTrace');
  } finally {
    // Blok finally SELALU dijalankan baik proses sukses maupun gagal
    // Sangat berguna di Flutter untuk mematikan indikator loading (spinner)
    sedangLoading = false;
    print('Loading selesai (finally): $sedangLoading');
  }

  // 2. Menangani Error dengan gaya .catchError() pada Future
  print('\n--- Skenario 2: Server Normal ---');
  await tarikDataNilai(true)
      .then((hasil) => print('Sukses: $hasil'))
      .catchError((err) => print('Gagal: $err'));
}