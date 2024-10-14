import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_praktikum1/main.dart'; // Pastikan path ini sesuai dengan kode utama
import 'package:tugas_praktikum1/main_card.dart'; // Import sesuai kebutuhan

void main() {
  testWidgets('Testing ListView and ListTiles', (WidgetTester tester) async {
    // Memuat widget ListDemo
    await tester.pumpWidget(const ListDemo(type: ListDemoType.oneLine));

    // Verifikasi bahwa judul AppBar ada
    expect(find.text('List demo'), findsOneWidget);

    // Verifikasi bahwa ada 20 ListTile yang ditampilkan dalam ListView
    expect(find.byType(ListTile), findsNWidgets(20));

    // Verifikasi bahwa ListTile pertama memiliki leading CircleAvatar dengan teks '1'
    expect(find.widgetWithText(CircleAvatar, '1'), findsOneWidget);

    // Verifikasi bahwa teks 'Item 1' muncul pada ListTile pertama
    expect(find.text('Item 1'), findsOneWidget);

    // Verifikasi bahwa subtitle tidak ditampilkan ketika ListDemoType.oneLine digunakan
    expect(find.text('Secondary text'), findsNothing);

    // Jalankan tes untuk ListDemoType.twoLine
    await tester.pumpWidget(const ListDemo(type: ListDemoType.twoLine));

    // Verifikasi bahwa subtitle 'Secondary text' ada untuk setiap ListTile
    expect(find.text('Secondary text'), findsNWidgets(20));
  });
}
