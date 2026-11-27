void main() {
Map<String, dynamic> mahasiswa = {
'nama': 'Baban',
'nim': '2026001',
'ipk': 3.82,
};
// Mengakses, mengubah, dan menambah key-value pada Map
print('Nama: ${mahasiswa['nama']}');
mahasiswa['ipk'] = 3.90; // Mengubah value pada key yang ada
mahasiswa['aktif'] = true; // Menambah pasangan key-value baru
print('Data lengkap: $mahasiswa');
}