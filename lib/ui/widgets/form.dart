// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:forsain/ui/shared/theme.dart';

class FormBuilder extends StatelessWidget {
  final List<Map<String, dynamic>> formData;
  final Function onSubmit;
  final String submitText;
  const FormBuilder({
    Key? key,
    required this.formData,
    required this.onSubmit,
    required this.submitText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: parentW(context),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          ...formData.map((e) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                style: regularTextStyle.copyWith(fontSize: 14),
                controller: e['controller'],
                decoration: textFieldDecoration(e['hint'], '', '',
                    isActive: e['isActive']),
                keyboardType: e['keyboardType'] ?? TextInputType.text,
              ),
            );
          }).toList(),
          Container(
            width: parentW(context),
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 17),
              ),
              onPressed: () {
                onSubmit();
              },
              child: Text(
                submitText,
                style: semiBoldTextStyle.copyWith(
                    fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
