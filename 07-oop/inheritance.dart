// Parent Class (Superclass)
class Kendaraan {
  String merk;
  int tahun;

  Kendaraan(this.merk, this.tahun);

  void nyalakanMesin() {
    print('$merk ($tahun): Mesin dinyalakan...');
  }

  void bergerak() {
    print('$merk sedang melaju di jalan.');
  }
}

// Child Class 1 (Subclass) mewarisi Kendaraan dengan 'extends'
class Mobil extends Kendaraan {
  int jumlahPintu;

  // super(merk, tahun) meneruskan parameter ke constructor Parent Class
  Mobil(super.merk, super.tahun, this.jumlahPintu);

  // @override menimpa perilaku method milik Parent Class
  @override
  void bergerak() {
    super.bergerak(); // Tetap memanggil logika asli parent (opsional)
    print('-> Melaju nyaman dengan $jumlahPintu pintu tertutup rapat.');
  }
}

// Child Class 2
class Motor extends Kendaraan {
  bool adaBoxBagasi;

  Motor(super.merk, super.tahun, {this.adaBoxBagasi = false});

  @override
  void bergerak() {
    print('$merk ($tahun) melaju lincah di kemacetan!');
  }
}

void main() {
  Mobil mobil1 = Mobil('Toyota Avanza', 2023, 4);
  mobil1.nyalakanMesin(); // Method warisan dari Kendaraan
  mobil1.bergerak(); // Method hasil override

  print('---');

  Motor motor1 = Motor('Honda Vario', 2024, adaBoxBagasi: true);
  motor1.nyalakanMesin();
  motor1.bergerak();
}