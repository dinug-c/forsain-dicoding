// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:forsain/ui/shared/layout.dart';
import 'package:forsain/ui/shared/theme.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> data;
  const DetailPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['title'],
                  style: semiBoldTextStyle.copyWith(
                      fontSize: 18, color: colorPrimary),
                ),
                Text(
                  data['desc'],
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: colorPrimary),
                ),
                Text(
                  "Is currently running...",
                  style: regularTextStyle.copyWith(
                      fontSize: 12, color: colorPrimary),
                )
              ],
            )));
  }
}
