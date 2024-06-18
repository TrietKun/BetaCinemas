import 'package:flutter/material.dart';
import '../../dataHash/comingsoonfilms.dart';
import '../../widgets/slide.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 140.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Slide(),
            ),
            pinned:
                false, // Change to true if you want to keep the Slide partially visible while scrolling
            floating: false,
            snap: false,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var film = ListFilmComingSoon.listFilmComingSoon[index];
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
                        child: Image.asset(
                          film['image'] ?? '',
                          fit: BoxFit.cover,
                          scale: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          film['name'] ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: ListFilmComingSoon.listFilmComingSoon.length,
            ),
          ),
        ],
      ),
    );
  }
}
