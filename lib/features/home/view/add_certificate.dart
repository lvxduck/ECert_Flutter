import 'package:dotted_line/dotted_line.dart';
import 'package:ecert/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCertificate extends StatefulWidget {
  const AddCertificate({Key? key}) : super(key: key);

  @override
  _AddCertificateState createState() => _AddCertificateState();
}

class _AddCertificateState extends State<AddCertificate> {
  String dropdownValue = 'Bằng tốt nghiệp đại học';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 16),
            Text(
              "Thêm văn bằng",
              style: Get.textTheme.headline4,
            ),
            IconButton(
              onPressed: Get.back,
              icon: Icon(
                Icons.clear,
                color: CustomTheme.lightColorScheme.primary,
              ),
            )
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              SizedBox(
                width: 260,
                height: 32,
                child: DropdownButtonFormField<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                  items: <String>[
                    'Bằng tốt nghiệp đại học',
                    'Chứng chỉ tin học',
                    'Chứng chỉ ngoại ngữ',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, overflow: TextOverflow.ellipsis),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 12),
              const CustomTextField(
                label: "Tên trường:",
                hintText: "Nhập tên trường",
              ),
              const CustomTextField(
                label: "Loại bằng:",
                hintText: "Nhập loại bằng",
              ),
              const CustomTextField(
                label: "Ngành học:",
                hintText: "Nhập ngành học",
              ),
              const CustomTextField(
                label: "Họ tên:",
                hintText: "Nhập họ tên",
              ),
              const CustomTextField(
                label: "Ngày sinh:",
                hintText: "Nhập ngày sinh",
              ),
              const CustomTextField(
                label: "Năm tốt nghiệp:",
                hintText: "Nhập năm tốt nghiệp",
              ),
              const CustomTextField(
                label: "Xếp loại tốt nghiệp:",
                hintText: "Nhập xếp loại tốt nghiệp",
              ),
              const CustomTextField(
                label: "Hình thức đào tạo:",
                hintText: "Nhập hình thức đào tạo",
              ),
              const CustomTextField(
                label: "Thời gian:",
                hintText: "Nhập thời gian",
              ),
              const CustomTextField(
                label: "Số hiệu:",
                hintText: "Nhập số hiệu",
              ),
              const CustomTextField(
                label: "Số vào sổ cấp bằng:",
                hintText: "Nhập số vào sổ cấp bằng",
              ),
            ],
          ),
        ),
        const Spacer(),
        const Divider(),
        const SizedBox(width: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Thêm mới")),
            const SizedBox(width: 16),
            ElevatedButton(onPressed: () {}, child: const Text("Hủy")),
            const SizedBox(width: 16),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.label, required this.hintText}) : super(key: key);

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
        ),
        Expanded(
          child: Stack(
            children: [
              SizedBox(
                height: 34,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 16,
                child: SizedBox(
                  width: 800,
                  child: DottedLine(
                    dashLength: 3,
                    lineThickness: 0.5,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
