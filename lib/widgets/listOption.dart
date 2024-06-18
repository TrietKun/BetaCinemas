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

              return Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 15),
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
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          // color: Colors.blue,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Center(
                            child: TextButton.icon(
                              onPressed: () {},
                              label: const Text(''),
                              //tắt label đi

                              icon: Icon(
                                iconData,
                                color: option['color'] ?? Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
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
              );
            },
            childCount: listOption.length,
          ),
        ),
      ],
    );
  }
}
