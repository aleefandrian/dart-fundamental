void main() {
  List<String> matkul = ['Dart Fundamental', 'Basis Data', 'Jaringan Komputer', 'UI/UX Design'];

  // 1. for-in Loop
  // Lebih bersih dan ringkas jika kita hanya butuh nilainya tanpa peduli nomor index
  print('--- Daftar Mata Kuliah (for-in) ---');
  for (String item in matkul) {
    print('- $item');
  }

  // 2. Kontrol Alur Perulangan: continue & break
  // continue -> melewati iterasi saat ini dan lanjut ke iterasi berikutnya
  // break    -> menghentikan seluruh proses perulangan secara paksa
  print('\n--- Filter Matkul dengan continue & break ---');
  for (String item in matkul) {
    if (item == 'Basis Data') {
      continue; // Lewati 'Basis Data'
    }
    if (item == 'UI/UX Design') {
      break; // Berhenti total sebelum mencetak 'UI/UX Design'
    }
    print('Diproses: $item');
  }

  // 3. Method .forEach() pada List dan Map
  // Menerima anonymous function / callback untuk setiap elemen
  print('\n--- Cetak dengan .forEach() ---');
  matkul.forEach((namaMatkul) => print('Belajar: $namaMatkul'));

  Map<String, int> nilaiTugas = {
    'Tugas 1': 85,
    'Tugas 2': 92,
    'Tugas 3': 88,
  };

  print('\n--- Iterasi Map dengan .forEach() ---');
  nilaiTugas.forEach((judul, skor) {
    print('$judul mendapat nilai $skor');
  });
}