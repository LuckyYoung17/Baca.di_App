import 'package:bacadi/app/modules/book/controllers/book_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDropdown extends StatelessWidget {
  MyDropdown({super.key});
  final BookController dropdownController = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton<String>(
        hint: Text('Select Language'),
        onChanged: (value) {
          dropdownController.onSelected(value!);
        },
        value: dropdownController.selectedValue.value,
        items: <String>['English', 'Spanish', 'French']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value, // Nilai unik untuk setiap item
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
