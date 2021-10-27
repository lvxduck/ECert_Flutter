import 'package:ecert/core/widget/custom_dialog.dart';
import 'package:ecert/features/home/model/certificate.dart';
import 'package:ecert/features/home/view/add_certificate.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //#region
  final List<Certificate> source = [
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf6dfdf1bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Nguyễn Tấn Phát",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf6dfdf1bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Nguyễn Tấn Phát",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf6dfdf1bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Nguyễn Tấn Phát",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
    Certificate(
      cid: "f82caf65b481bce79a68fe76b88a0ee032205caf1bae23f1e51eb8395cadd86d",
      timeAdd: "12-10-2020 08:19:14",
      name: "Lê Vĩnh Nhân Đức",
      type: "Bằng tốt nghiệp đại học",
    ),
  ];

  //endregion

  void addCertificate() {
    CustomDialog.showModal(
      width: 500,
      height: 600,
      child: const AddCertificate(),
    );
  }
}
