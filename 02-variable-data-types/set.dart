void main() {
  // Set menyimpan data unik (nilai duplikat otomatis diabaikan)
  Set<String> hobi = {'Coding', 'Biliar', 'Coding', 'Membaca'};
  print('Daftar Hobi (Unik): $hobi'); // 'Coding' hanya muncul satu kali

  // Menambah dan menghapus elemen pada Set
  hobi.add('Gaming');
  hobi.remove('Membaca');
  print('Hobi terbaru: $hobi (Total:${hobi.length})');

  // Operasi Himpunan (Union & Intersection)
  Set<String> pesertaWorkshop = {'Budi', 'Baban', 'Siti'};
  Set<String> panitiaAcara = {'Baban', 'Raya', 'Siti'};

  // Union: menggabungkan semua nama tanpa duplikat
  Set<String> semuaTerlibat = pesertaWorkshop.union(panitiaAcara);
  // Intersection: mencari nama yang ada di kedua Set
  Set<String> gandaPeran = pesertaWorkshop.intersection(panitiaAcara);

  print('Semua Terlibat (Union): $semuaTerlibat');
  print('Peserta sekaligus Panitia (Intersection): $gandaPeran');
}