
void main() {
  // 1. Kategori Umur dengan if - else if - else
  int umur = 18;

  if (umur < 18) {
    print('Kategori: Anak-anak');
  } else if (umur < 30) {
    print('Kategori: Remaja');
  } else {
    print('Kategori: Dewasa');
  }

  // 2. Status Login & Role dengan Nested if
  bool isLogin = true;
  String role = 'admin';

  if (isLogin) {
    if (role == 'admin') {
      print('Dashboard Administrator dibuka.');
    } else if (isLogin == false) {
      print('Akses ditolak. Silakan login terlebih dahulu.');
    } else {
      print('Dashboard Mahasiswa dibuka.');
    }
  }
}
