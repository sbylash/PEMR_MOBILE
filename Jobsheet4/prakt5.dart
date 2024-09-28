void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (String, int) mahasiswa = ('Shasia', 2241720029);
  print(mahasiswa);

  var numberRecord = (5, 10);
  var swappedRecord = tukar(numberRecord);
  print('Swapped numberRecord: $swappedRecord');

  var mahasiswa2 = ('Shasia', a: 2241720029, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
