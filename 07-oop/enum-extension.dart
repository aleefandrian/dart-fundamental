// 1. Enhanced Enum (Fitur Modern Dart 3)
// Enum tidak lagi sekadar daftar konstanta, tapi bisa punya properti, constructor, & method
enum StatusPesanan {
  menungguBayar('Menunggu Pembayaran', false),
  diproses('Sedang Dikemas', false),
  dikirim('Dalam Pengiriman', false),
  selesai('Pesanan Selesai', true);

  final String label;
  final bool isFinal;

  // Constructor enum wajib const
  const StatusPesanan(this.label, this.isFinal);

  String deskripsi() => 'Status: $label (Selesai: $isFinal)';
}

// 2. Extension Method
// Menambahkan fungsi baru ke tipe data bawaan Dart tanpa mengubah kode asli SDK
extension FormatRupiah on int {
  String toRupiah() {
    // Mengubah angka 150000 menjadi 'Rp150.000'
    String angka = toString();
    String hasil = '';
    int hitung = 0;

    for (int i = angka.length - 1; i >= 0; i--) {
      hasil = angka[i] + hasil;
      hitung++;
      if (hitung % 3 == 0 && i != 0) {
        hasil = '.$hasil';
      }
    }
    return 'Rp$hasil';
  }
}

extension StringHelper on String {
  String toCapitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}

void main() {
  // Menggunakan Enhanced Enum
  StatusPesanan statusSaatIni = StatusPesanan.dikirim;
  print(statusSaatIni.deskripsi());

  if (!statusSaatIni.isFinal) {
    print('Pesanan masih aktif dan dapat dilacak.');
  }

  // Menggunakan Extension Method pada int dan String
  int hargaLaptop = 4500000;
  int ongkir = 25000;
  String namaKota = 'cIkArAnG';

  print('Tujuan: ${namaKota.toCapitalize()}');
  print('Harga: ${hargaLaptop.toRupiah()} | Ongkir: ${ongkir.toRupiah()}');
}