// 1. Optional Positional Parameter dalam []
void cetakCatatan(String judul, [String? isiTambahan]) {
print('Judul: $judul | Catatan: ${isiTambahan ?? 'Tidak ada'}');
}
// 2. Named Parameters dalam {} dengan required dan nilai default
void daftarKursus({
required String namaPeserta,
required String materi,
String level = 'Pemula',
}) {
print('Peserta: $namaPeserta | Materi: $materi ($level)');
}
void main() {
cetakCatatan('Pertemuan 1');
cetakCatatan('Pertemuan 2', 'Bawa laptop');
// Urutan argumen bebas karena menggunakan nama parameter
daftarKursus(materi: 'Dart Fundamental', namaPeserta: 'Shandi');
}