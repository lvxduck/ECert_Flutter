import 'dart:io';

import 'package:ecert/core/helper/extension.dart';
import 'package:ecert/core/ipfs_client/ipfs_client.dart';
import 'package:ecert/core/ipfs_client/models/unix_fs_entry.dart';
import 'package:http_parser/http_parser.dart';

class IpfsUtils {
  static final _singleton = IpfsUtils._init();
  final IpfsClient _ipfsClient = IpfsClient('https://ipfs.infura.io:5001/api/v0');

  factory IpfsUtils() {
    return _singleton;
  }

  IpfsUtils._init();

  Future<UnixFSEntry?> uploadImage(File imageFile) async {
    var file = UnixFSEntry();
    file.content = await imageFile.readAsBytes();
    file.name = imageFile.name ?? "avata.png";
    file.contentType = MediaType.parse("image/png");
    final res = await _ipfsClient.add(file);
    return res;
  }

  Future<UnixFSEntry?> uploadJson(File imageFile) async {
    var file = UnixFSEntry();
    file.content = await imageFile.readAsBytes();
    file.name = imageFile.name ?? "avata.png";
    file.contentType = MediaType.parse("image/png");
    final res = await _ipfsClient.add(file);
    return res;
  }
}
