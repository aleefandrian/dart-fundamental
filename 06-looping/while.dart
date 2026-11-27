void main() {
  // while Loop mengecek kondisi di AWAL sebelum menjalankan blok kode.
  // Cocok ketika jumlah perulangan belum pasti (bergantung pada perubahan kondisi).
  // Jika kondisi awal sudah false, blok kode di dalamnya TIDAK AKAN dijalankan sama sekali.

  int bateraiPersen = 20;
  int targetBaterai = 50;

  print('--- Simulasi Pengisian Daya Laptop ---');
  while (bateraiPersen < targetBaterai) {
    print('Mengisi daya... Baterai saat ini: $bateraiPersen%');
    bateraiPersen += 10; // Pastikan ada perubahan nilai agar tidak terjadi infinite loop!
  }

  print('Pengisian selesai! Baterai mencapai $bateraiPersen%.');

  // Contoh saat kondisi awal langsung false
  int antrean = 0;
  while (antrean > 0) {
    print('Baris ini tidak akan pernah tercetak.');
  }
}