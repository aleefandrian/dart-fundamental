class Produk {
  String nama;
  int harga;
  String kategori;

  // 1. Default Generative Constructor dengan Initializing Formals (this.)
  // Wajib mengisi properti non-nullable saat objek pertama kali dibuat
  Produk({
    required this.nama,
    required this.harga,
    this.kategori = 'Umum', // Nilai default jika tidak diisi
  });

  // 2. Named Constructor (Konstruktor Bernama)
  // Sangat sering dipakai di Dart/Flutter untuk membuat objek dari data JSON/Map
  Produk.fromMap(Map<String, dynamic> data)
    : nama = data['nama'] ?? 'Tanpa Nama',
      harga = data['harga'] ?? 0,
      kategori = data['kategori'] ?? 'Umum';

  // 3. Redirecting Constructor (Meneruskan tugas ke konstruktor utama)
  Produk.gratis(String namaProduk)
    : this(nama: namaProduk, harga: 0, kategori: 'Bonus');

  void infoProduk() {
    print('[$kategori] $nama - Rp$harga');
  }
}

void main() {
  // Menggunakan Constructor Utama
  Produk laptop = Produk(
    nama: 'ThinkPad T480',
    harga: 4500000,
    kategori: 'Elektronik',
  );
  laptop.infoProduk();

  // Menggunakan Named Constructor dari Map (simulasi parsing API)
  Map<String, dynamic> jsonApi = {
    'nama': 'Modul Dart 3',
    'harga': 85000,
    'kategori': 'Buku',
  };
  Produk buku = Produk.fromMap(jsonApi);
  buku.infoProduk();

  // Menggunakan Redirecting Constructor
  Produk stiker = Produk.gratis('Stiker Flutter');
  stiker.infoProduk();
}