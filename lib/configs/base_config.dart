import 'package:flutter/material.dart';

TextEditingController nameController = TextEditingController();
TextEditingController posController = TextEditingController();

List<Map<String, dynamic>> formConfig = [
  {
    'hint': 'Your Name',
    'isActive': true,
    'controller': nameController,
  },
  {
    'hint': 'Your Position',
    'isActive': true,
    'controller': posController,
  }
];

List<Map<String, dynamic>> dashboardData = [
  {'value': '12', 'text': 'Projects', 'img': 'assets/ic_user.png'},
  {'value': '21', 'text': 'Deploy', 'img': 'assets/ic_storage.png'}
];

List<Map<String, dynamic>> cardListData = [
  {'title': 'CBT Web Application', 'desc': 'https://cbtserve.com'},
  {'title': 'Project Management Savany', 'desc': 'https://savany.com'},
  {'title': 'Hariloom Landing', 'desc': 'https://hairloom.com'}
];
