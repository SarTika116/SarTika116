void main() {
  print("=== TOPIK MENYAPA ===");
  sapa1();
  print(sapa2());
  sapa3("Sartika");
  print(sapa4("Sartika"));

  print("\n=== LUAS PERSEGI ===");
  luas1();
  print(luas2());
  luas3(5);
  print(luas4(5));

  print("\n=== KALKULATOR DISKON ===");
  diskon1();
  print(diskon2());
  diskon3(100000, 10);
  print(diskon4(100000, 10));
}

//////////////////////////
// A. MENYAPA
//////////////////////////

// 1. tanpa parameter tanpa return
void sapa1() {
  print("Halo, selamat datang!");
}

// 2. tanpa parameter dengan return
String sapa2() {
  return "Halo dari function return!";
}

// 3. dengan parameter tanpa return
void sapa3(String nama) {
  print("Halo $nama, semangat belajar ya!");
}

// 4. dengan parameter dan return
String sapa4(String nama) {
  return "Selamat datang, $nama!";
}

//////////////////////////
// B. LUAS PERSEGI
//////////////////////////

// 1
void luas1() {
  int sisi = 4;
  int hasil = sisi * sisi;
  print("Luas persegi: $hasil");
}

// 2
int luas2() {
  int sisi = 4;
  return sisi * sisi;
}

// 3
void luas3(int sisi) {
  print("Luas persegi: ${sisi * sisi}");
}

// 4
int luas4(int sisi) {
  return sisi * sisi;
}

//////////////////////////
// C. DISKON
//////////////////////////

// 1
void diskon1() {
  int harga = 100000;
  int diskon = 10;
  double hasil = harga - (harga * diskon / 100);
  print("Harga setelah diskon: $hasil");
}

// 2
double diskon2() {
  int harga = 100000;
  int diskon = 10;
  return harga - (harga * diskon / 100);
}

// 3
void diskon3(int harga, int diskon) {
  double hasil = harga - (harga * diskon / 100);
  print("Harga setelah diskon: $hasil");
}

// 4
double diskon4(int harga, int diskon) {
  return harga - (harga * diskon / 100);
}