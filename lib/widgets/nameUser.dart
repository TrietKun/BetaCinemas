import 'package:flutter/material.dart';

class Nameuser extends StatelessWidget {
  const Nameuser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        alignment: Alignment.centerLeft,
        child: const Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              // căn trái
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chào Triết",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.person_2,
                        color: Colors.blue,
                      ),
                      Text(
                        "  2",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "  4.5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.card_membership,
                          color: Colors.orange,
                        ),
                        Text(
                          "  5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}
