import 'package:flutter/material.dart';

import '../model/favourite_model.dart';

class FavourtieItemWidget extends StatelessWidget {
  const FavourtieItemWidget({super.key, required this.favModel});

  final FavModel favModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              favModel.image ?? "assets/image/panda.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(favModel.title ?? "data"),
              Text(favModel.description ?? "data"),
              Row(
                children: [
                  Text(favModel.authorName ?? "data"),
                  const SizedBox(
                    width: 50,
                  ),
                  Chip(
                    label: Text("popular".toUpperCase()),
                    backgroundColor: Colors.yellow,
                    side: BorderSide.none,
                  ),
                  Icon(Icons.book),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
