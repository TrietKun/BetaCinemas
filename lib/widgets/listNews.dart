import 'package:flutter/material.dart';

class ListNews extends StatelessWidget {
  final List<Map<String, String>> listNews;
  const ListNews({Key? key, required this.listNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(
        itemCount: listNews.length,
        itemBuilder: (context, index) {
          return Card(
            margin:
                const EdgeInsets.only(top: 40, left: 25, right: 10, bottom: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -10,
                    top: -20, // Điều chỉnh vị trí từ top để không bị cắt góc
                    bottom: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        listNews[index]["image"]!,
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.5,
                    top: 20,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        listNews[index]["name"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        // overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
