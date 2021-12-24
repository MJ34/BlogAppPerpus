part of 'helper.dart';

String getBulan(int value) {
  switch (value) {
    case 1:
      return 'Januari';
    case 2:
      return 'Febuari';
    case 3:
      return 'Maret';
    case 4:
      return 'April';
    case 5:
      return 'Mei';
    case 6:
      return 'Juni';
    case 7:
      return 'Juli';
    case 8:
      return 'Agustus';
    case 9:
      return 'September';
    case 10:
      return 'Oktober';
    case 11:
      return 'November';
    default:
      return 'Desember';
  }
}

String tglIndo(String value) {
  String bulan = getBulan(int.parse(value.substring(8,10)));
  String tgl = value.substring(5,7);
  String tahun = value.substring(0,4);

  return tgl + ' ' + bulan + ' ' + tahun;
}