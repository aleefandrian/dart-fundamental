void main() {
  // 1. Spread Operator (...) untuk menggabungkan List
  List<String> kelasPagi = ['TI-1A', 'TI-1B'];
  List<String> kelasMalam = ['TI-1C'];
  List<String>? kelasTambahan; // Nullable list

  // ...? (Null-aware spread) aman jika variabel bernilai null
  List<String> semuaKelas = [...kelasPagi, ...kelasMalam, ...?kelasTambahan];
  print('Semua Kelas: $semuaKelas');

  // 2. Collection if & Collection for (sangat sering dipakai di Flutter UI)
  bool isAdmin = true;
  List<String> menuAplikasi = [
    'Beranda',
    'Profil',
    if (isAdmin) 'Panel Admin', // Hanya masuk jika isAdmin == true
    for (var kelas in kelasPagi) 'Jadwal $kelas',
  ];
  print('Menu Aplikasi: $menuAplikasi');

  // 3. Transformasi Data (.map & .where)
  List<int> daftarHarga = [15000, 45000, 80000, 25000];

  // .where() menyaring elemen berdasarkan kondisi
  List<int> hargaMahal = daftarHarga.where((harga) => harga > 30000).toList();

  // .map() mengubah setiap elemen menjadi bentuk baru
  List<String> labelHarga = daftarHarga
      .map((harga) => 'Rp$harga')
      .toList();

  print('Harga di atas 30rb: $hargaMahal');
  print('Label Harga: $labelHarga');
}