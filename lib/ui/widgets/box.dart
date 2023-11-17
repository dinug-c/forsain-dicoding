// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:forsain/ui/pages/detail_page.dart';

import '../shared/gaps.dart';
import '../shared/theme.dart';

class BoxDashboard extends StatelessWidget {
  final String value;
  final String text;
  final AssetImage img;

  const BoxDashboard({
    Key? key,
    required this.value,
    required this.text,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 155,
          height: 155,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        Positioned(
          left: 15,
          bottom: 15,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: colorPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Center(
                  child: Image(
                image: img,
                width: 30,
              )),
            ),
            gapH4,
            Text(
              value,
              style: boldTextStyle.copyWith(fontSize: 24, color: colorPrimary),
            ),
            Text(
              text,
              style:
                  regularTextStyle.copyWith(fontSize: 14, color: colorPrimary),
            )
          ]),
        ),
      ],
    );
  }
}

class CardList extends StatelessWidget {
  final Map<String, dynamic> data;
  const CardList({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailPage(
                      data: data,
                    )));
      },
      child: Container(
        width: double.infinity,
        height: 75,
        margin: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Image.asset(
                  "assets/ic_storage.png",
                  width: 30,
                )),
              ),
              gapW(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['title'],
                    style: regularTextStyle.copyWith(
                        fontSize: 16, color: colorPrimary),
                  ),
                  Text(
                    data['desc'],
                    style: regularTextStyle.copyWith(
                        fontSize: 12, color: colorPrimary),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
