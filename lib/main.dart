import 'package:flutter/material.dart';
import 'screens/films.dart';
import 'screens/theater.dart';
import 'screens/voucher.dart';
import 'screens/discount.dart';
import 'screens/more.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;

  final List<Widget> pages = [
    Films(),
    Theater(),
    Voucher(),
    Discount(),
    More(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize the PageController here
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue.shade300,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: ("Lịch chiếu\n theo phim"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp),
            label: ("Lịch chiếu\n theo rạp"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: ("Voucher"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: ("Khuyến mãi"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all),
            label: ("Khác"),
          )
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  void onTapHandler(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInCubic,
    );
  }
}
