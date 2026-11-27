void main() {
List<String> kelas = ['TI-1A', 'TI-1B', 'SI-1A'];
List<dynamic> campuran = ['Budi', 21, true];
// Mengakses dan mengubah data List
print('Kelas pertama: ${kelas[0]}');
kelas[1] = 'TI-2B'; // Mengubah indeks ke-1
kelas.add('BD-1A'); // Menambah elemen baru di akhir
print('Daftar kelas terbaru: $kelas (Total: ${kelas.length})');
print('Daftar campuran: $campuran (Total: ${campuran.length})');
}