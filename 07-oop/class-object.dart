// Class adalah cetak biru (blueprint) untuk membuat objek
class Mahasiswa {
  // Properties (Atribut / Data)
  String nama = '';
  String nim = '';
  double ipk = 0.0;

  // Private Property (diawali garis bawah '_', hanya bisa diakses di file yang sama)
  int _saldoKantin = 50000;

  // Getter untuk membaca private property secara aman
  int get saldoKantin => _saldoKantin;

  // Setter untuk memvalidasi perubahan private property
  set saldoKantin(int nominalBaru) {
    if (nominalBaru >= 0) {
      _saldoKantin = nominalBaru;
    } else {
      print('Error: Saldo tidak boleh negatif!');
    }
  }

  // Method (Perilaku / Fungsi di dalam Class)
  void perkenalan() {
    print('Halo, saya $nama (NIM: $nim) dengan IPK $ipk.');
  }

  bool cekCumlaude() => ipk >= 3.50;
}

void main() {
  // Instansiasi: Membuat Object nyata dari Class Mahasiswa
  // Di Dart 3, keyword 'new' bersifat opsional dan tidak perlu ditulis
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.nama = 'Aleef';
  mhs1.nim = '20260101';
  mhs1.ipk = 3.88;

  mhs1.perkenalan();
  print('Status Cumlaude: ${mhs1.cekCumlaude()}');

  // Menguji Getter & Setter
  print('Saldo awal: Rp${mhs1.saldoKantin}');
  mhs1.saldoKantin = 75000;
  print('Saldo terbaru: Rp${mhs1.saldoKantin}');

  // Cascade Notation (..) untuk mengisi banyak properti/method pada objek yang sama secara ringkas
  Mahasiswa mhs2 = Mahasiswa()
    ..nama = 'Faza'
    ..nim = '20260102'
    ..ipk = 3.45
    ..perkenalan();
}