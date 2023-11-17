// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:forsain/configs/base_config.dart';
import 'package:forsain/ui/shared/layout.dart';
import 'package:forsain/ui/shared/theme.dart';
import 'package:forsain/ui/widgets/box.dart';

import '../shared/gaps.dart';

class HomePage extends StatelessWidget {
  final String name;
  final String pos;
  const HomePage({
    Key? key,
    required this.name,
    required this.pos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                "Hi, ${name}",
                style: semiBoldTextStyle.copyWith(
                    fontSize: 22, color: colorPrimary),
              ),
              Text(
                pos,
                style: regularTextStyle.copyWith(
                    fontSize: 36, color: colorPrimary),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 160,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/hero.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                      bottom: 18,
                      left: 18,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/ic_flash.png'),
                            width: 30,
                          ),
                          Text('Hi!, Ready to Deploy?',
                              style: semiBoldTextStyle.copyWith(
                                  fontSize: 14, color: Colors.white))
                        ],
                      )),
                ],
              ),
              gapH(20),
              Wrap(
                runAlignment: WrapAlignment.spaceBetween,
                alignment: WrapAlignment.spaceAround,
                children: dashboardData.map((e) {
                  return BoxDashboard(
                      value: e['value'],
                      text: e['text'],
                      img: AssetImage(e['img']));
                }).toList(),
              ),
              gapH12,
              Text(
                "Your current deployment",
                style: semiBoldTextStyle.copyWith(
                    fontSize: 14, color: colorPrimary),
              ),
              Column(
                children: cardListData.map((e) {
                  return CardList(
                    data: e,
                  );
                }).toList(),
              )
            ],
          ),
        ),
        color: blueLightColor);
  }
}
