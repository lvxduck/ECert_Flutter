import 'dart:io';

extension FileExtension on FileSystemEntity {
  String? get name {
    return path.split("/").last;
  }
}

extension StringExtension on String {
  String get ipfs {
    return "https://ipfs.io/ipfs/$this";
  }
}
