void main() {
  String nama = "Shasia Sasa Salsabyla"; 
  String nim = "2241720029"; 

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima ditemukan: $i");
      print("Nama Lengkap: $nama");
      print("NIM: $nim");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}