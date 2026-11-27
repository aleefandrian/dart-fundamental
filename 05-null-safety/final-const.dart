void main() {
  // 1. final -> Nilai hanya bisa diisi SEKALI saat runtime (program berjalan)
  // Cocok untuk data yang baru diketahui saat aplikasi dijalankan (waktu saat ini, hasil API, dll.)
  final DateTime waktuLogin = DateTime.now();
  final String namaKampus = 'Politeknik Takumi';

  // waktuLogin = DateTime.now(); // ERROR: Variabel final tidak bisa diubah nilainya

  print('Kampus: $namaKampus');
  print('Waktu Login (Runtime): $waktuLogin');

  // 2. const -> Nilai wajib sudah diketahui saat compile-time (sebelum program dijalankan)
  // Sangat hemat memori karena objek identik akan memakai alamat memori yang sama (canonicalized)
  const double nilaiPhi = 3.14;
  const int maksimalSks = 24;
  const double luasLingkaran = nilaiPhi * 10 * 10; // Valid karena nilaiPhi juga const

  // const DateTime waktuSekarang = DateTime.now(); // ERROR: DateTime.now() hanya diketahui saat runtime

  print('Maksimal SKS: $maksimalSks | Luas Lingkaran: $luasLingkaran');

  // 3. Perbedaan Perilaku final vs const pada Koleksi (List/Map)
  final List<String> daftarMatkul = ['Algoritma', 'Basis Data'];
  daftarMatkul.add('Pemrograman Mobile'); // VALID: Referensi List-nya tetap, isinya boleh ditambah

  const List<String> hariKuliah = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
  // hariKuliah.add('Sabtu'); // ERROR saat runtime (UnsupportedError): isi List const benar-benar terkunci

  print('Daftar Matkul (final): $daftarMatkul');
  print('Hari Kuliah (const): $hariKuliah');
}