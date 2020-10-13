import 'package:flutter/material.dart';

class FavoritesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favorites",
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Hades"),
                ],
              ),
              Column(
                children: [
                  Text("Hades"),
                ],
              ),
              Column(
                children: [
                  Text("Hades"),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
