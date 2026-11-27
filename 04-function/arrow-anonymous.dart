// 1. Arrow Function (=>)
// Digunakan untuk fungsi singkat yang hanya berisi 1 baris ekspresi
int hitungLuasPersegi(int sisi) => sisi * sisi;

String cekKelulusan(int nilai) => nilai >= 75 ? 'Lulus' : 'Remedial';

// 2. Higher-Order Function (Fungsi yang menerima fungsi lain sebagai parameter)
// Pola ini sangat sering dipakai di Flutter (misalnya: onPressed: () { ... })
void jalankanAksi(String namaTombol, void Function() onPressed) {
  print('Tombol [$namaTombol] ditekan...');
  onPressed(); // Menjalankan fungsi callback
}

// 3. Closure (Fungsi yang mengingat variabel di ruang lingkup luarnya)
Function buatPenghitung() {
  int hitungan = 0;
  return () {
    hitungan++;
    print('Tombol diklik sebanyak: $hitungan kali');
  };
}

void main() {
  // Memanggil Arrow Function
  print('Luas persegi (sisi 5): ${hitungLuasPersegi(5)}');
  print('Status nilai 80: ${cekKelulusan(80)}');

  // 4. Anonymous Function (Fungsi tanpa nama) langsung di dalam argumen
  jalankanAksi('Simpan Data', () {
    print('-> Data mahasiswa berhasil disimpan ke database!');
  });

  // Anonymous Function dengan Arrow Syntax (=>)
  jalankanAksi('Keluar', () => print('-> Sesi diakhiri.'));

  // Anonymous Function di dalam iterasi List (.forEach)
  List<String> matkul = ['Pemrograman Mobile', 'Basis Data', 'Keamanan Siber'];
  matkul.forEach((item) {
    print('Mata Kuliah: $item');
  });

  // Menguji Closure
  var klikCounter = buatPenghitung();
  klikCounter(); // Output: 1 kali
  klikCounter(); // Output: 2 kali
}