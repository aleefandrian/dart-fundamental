void main() {
String nama = 'Budi';
int umur = 20;
// Menggabungkan dengan operator + wajib memakai .toString() untuk angka
String kalimat1 = 'Nama: ' + nama + ', Umur: ' + umur.toString();
// String Interpolation ($variabel) lebih bersih dan otomatis memanggil toString()
String kalimat2 = 'Nama: $nama, Tahun depan umur: ${umur + 1}';
print(kalimat1);
print(kalimat2);
}