double hitungDiskon(double harga, double persen) {
return harga * (persen / 100);
}
double hitungHargaAkhir(double harga, double persen) {
double potongan = hitungDiskon(harga, persen); // Memanggil fungsi lain
return harga - potongan;
}
void cetakStruk(String barang, double total) {
print('Item: $barang | Total Bayar: Rp${total.toStringAsFixed(0)}');
}
void main() {
double bayar = hitungHargaAkhir(200000, 15);
cetakStruk('Tas Ransel', bayar);
}