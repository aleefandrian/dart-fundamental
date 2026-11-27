// 1. Abstract Class: Tidak bisa dibuat objeknya secara langsung (new Pembayaran() -> Error)
// Berfungsi sebagai kerangka kontrak bagi class turunannya
abstract class MetodePembayaran {
  String namaMetode;
  MetodePembayaran(this.namaMetode);

  // Abstract method (tanpa isi blok {}, wajib di-override oleh child class)
  void prosesBayar(int nominal);

  // Concrete method (punya isi, langsung diwariskan ke child class)
  void cetakStruk(int nominal) {
    print('[$namaMetode] Pembayaran sebesar Rp$nominal berhasil diverifikasi.');
  }
}

// 2. Mixin: Kumpulan perilaku/kemampuan yang bisa ditempelkan ke banyak class dengan 'with'
// Solusi di Dart karena sebuah class hanya boleh 'extends' 1 parent class
mixin NotifikasiPush {
  void kirimNotif(String pesan) {
    print('[NOTIFIKASI HP]: $pesan');
  }
}

mixin LogTransaksi {
  void catatLog(String aktivitas) {
    print('[SYSTEM LOG - ${DateTime.now().year}]: $aktivitas');
  }
}

// Class konkret yang mewarisi Abstract Class sekaligus memakai 2 Mixin
class PembayaranQris extends MetodePembayaran with NotifikasiPush, LogTransaksi {
  PembayaranQris() : super('QRIS Instan');

  @override
  void prosesBayar(int nominal) {
    catatLog('Memulai scan QRIS untuk nominal Rp$nominal');
    cetakStruk(nominal);
    kirimNotif('Pembayaran QRIS Rp$nominal sukses!');
  }
}

void main() {
  PembayaranQris qris = PembayaranQris();
  qris.prosesBayar(125000);
}