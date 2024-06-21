import 'package:flutter/material.dart';
import '../screens/notifycations.dart';
import '../screens/vouchers.dart';
import '../screens/recruitment.dart';

class ListOptions {
  // Array of 6 options including name and icon
  static List<Map<String, dynamic>> listOptions = [
    {
      "name": "Vouchers Miễn Phí",
      "icon": Icons.discount,
      "color": Colors.blue.shade300,
      "route": Vouchers()
    },
    {
      "name": "Rạp phim BETA",
      "icon": Icons.movie,
      "color": Colors.tealAccent.shade400,
      "route": Notifycations()
    },
    {
      "name": "Thành viên BETA",
      "icon": Icons.person_4_sharp,
      "color": Colors.lightGreenAccent.shade400,
      "route": Notifycations()
    },
    {
      "name": "Thông báo",
      "icon": Icons.notifications,
      "color": Colors.orange.shade300,
      "route": Notifycations()
    },
    {
      "name": "Tuyển dụng",
      "icon": Icons.work,
      "color": Colors.pink.shade300,
      "route": Recruitment()
    },
    {
      "name": "Cài đặt",
      "icon": Icons.settings,
      "color": Colors.purple.shade300,
      "route": Notifycations()
    }
  ];
}
