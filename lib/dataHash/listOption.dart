import 'package:flutter/material.dart';

class ListOptions {
  // Array of 6 options including name and icon
  static List<Map<String, dynamic>> listOptions = [
    {
      "name": "Vouchers Miễn Phí",
      "icon": Icons.ac_unit,
      "color": Colors.blue.shade300
    },
    {
      "name": "Rạp phim BETA",
      "icon": Icons.movie,
      "color": Colors.tealAccent.shade400
    },
    {
      "name": "Thành viên BETA",
      "icon": Icons.person_4_sharp,
      "color": Colors.lightGreenAccent.shade400
    },
    {
      "name": "Thông báo",
      "icon": Icons.notifications,
      "color": Colors.orange.shade300
    },
    {"name": "Tuyển dụng", "icon": Icons.work, "color": Colors.pink.shade300},
    {"name": "Cài đặt", "icon": Icons.settings, "color": Colors.purple.shade300}
  ];
}
