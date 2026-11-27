
void main() {
  // Input dalam bentuk String
  String inputHarga = '45000';
  String inputDiskon = '0.1';

  // Konversi String menjadi angka
  int harga = int.parse(inputHarga);
  double diskon = double.parse(inputDiskon);

  // Menghitung total setelah diskon
  double total = harga - (harga * diskon);

  // Membuat Map sebagai struk
  Map<String, dynamic> struk = {
    'item': ['Buku Dart', 'Pulpen'],
    'totalBayar': total.toString(),
  };

  print('Struk Pembelian: $struk');
}
