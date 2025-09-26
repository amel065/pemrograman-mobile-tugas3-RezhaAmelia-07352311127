import 'dart:io';
void main() {List<List<String>> data = [];
  bool tambahLagi = true;
  print('\n     ENTRY DATA MAHASISWA   \n${'-' * 30}');

  while (true) {
    print('1.Tambah Data \n2.Cari Data \n3.keluar');
    stdout.write('\nPilih: ');
    String pilih = stdin.readLineSync()!;

    if (pilih == '1') {
      do {
      stdout.write('Nama: '); String nama = stdin.readLineSync()!;
      stdout.write('NPM: '); String npm = stdin.readLineSync()!;
      stdout.write('Jurusan: '); String jurusan = stdin.readLineSync()!;
      data.add([npm, nama, jurusan]);
      
        stdout.write('\nTambah data lagi? (y/n): ');
        String? jawaban = stdin.readLineSync();

        if (jawaban?.toLowerCase() != 'y') {
          tambahLagi = false;
        }
      } while (tambahLagi && pilih == '1');

    } else if (pilih == '2') {
      if (data.isEmpty) { print('\nData masih kosong!'); continue; }
      stdout.write('\nMasukkan NPM: ');
      String cari = stdin.readLineSync()!;

      int i = 0;
      while (i < data.length) {
        if (data[i][0] == cari) {
          print('\nNama: ${data[i][1]} \nNPM: ${data[i][0]} \nJurusan: ${data[i][2]}');
          print('-' * 30);
          break;
        }
        i++;
      }
    } else if (pilih == '3') {
      break;
    }
  }
}