import 'package:flutter/material.dart';
import 'package:forsain/configs/base_config.dart';
import 'package:forsain/ui/pages/home_page.dart';
import 'package:forsain/ui/shared/layout.dart';
import 'package:forsain/ui/shared/theme.dart';
import 'package:forsain/ui/widgets/form.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Forsain",
                  style:
                      boldTextStyle.copyWith(fontSize: 20, color: colorPrimary),
                ),
                Text(
                  "Deploy your Imaginary Mind",
                  style: regularTextStyle.copyWith(
                      fontSize: 32, color: colorPrimary),
                ),
              ],
            ),
          ),
          FormBuilder(
              formData: formConfig,
              onSubmit: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => HomePage(
                              name: nameController.text,
                              pos: posController.text,
                            )));
              },
              submitText: "Let's Go!")
        ]),
        color: blueLightColor);
  }
}
