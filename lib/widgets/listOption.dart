// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListOption extends StatelessWidget {
  final List<Map<String, dynamic>> listOption;

  const ListOption({Key? key, required this.listOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              var option = listOption[index];
              IconData iconData = option['icon'];
              Color buttonColor = option['color'];

              return Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: ButtonTheme(
                  minWidth: 100,
                  height: 100,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(5),
                          child: IconButton(
                            splashColor: Colors.blue,
                            padding: const EdgeInsets.all(0),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  buttonColor.withOpacity(0.2)),
                              fixedSize: WidgetStateProperty.all<Size>(
                                const Size(200, 350),
                              ),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            icon: Icon(
                              iconData,
                              size: 50,
                              color:
                                  buttonColor, // Đặt màu icon là màu trắng để nổi bật trên nền màu của nút
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          option['name'] ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: listOption.length,
          ),
        ),
      ],
    );
  }
}
