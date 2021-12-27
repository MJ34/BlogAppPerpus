part of 'helper.dart';

String categoryName(int value) {
  switch (value) {
    case 56:
      return 'CSharp';
    case 61:
      return 'Dart';
    case 36:
      return 'Flutter';
    case 14:
      return 'Tips & Trik';
    case 5:
      return 'Tutorial';
    default:
      return 'Video Tutorial';
  }
}