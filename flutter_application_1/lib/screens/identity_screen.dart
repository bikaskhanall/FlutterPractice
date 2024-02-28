import 'package:flutter/material.dart';

import '../model/favourite_model.dart';
import '../widgets/favourite_item_widget.dart';

class IdentityCardScreen extends StatefulWidget {
  const IdentityCardScreen({super.key});

  @override
  State<IdentityCardScreen> createState() => _IdentityCardScreenState();
}

class _IdentityCardScreenState extends State<IdentityCardScreen> {
  List<FavModel> favList = [
    FavModel(
      image: "assets/image/panda.jpg",
      title: "Bikash",
      description: "issues",
    ),
    FavModel(
      image: "assets/image/smile.png",
      title: "Asmita",
      description: "issues",
    ),
    FavModel(
      image: "assets/image/bg.jpg",
      title: "Alish",
      description: "issues",
    ),
    FavModel(
      image: "assets/image/bg.jpg",
      title: "Smriti",
      description: "issues",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Articles",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Articles',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(0.5),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'UI',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
              ),
              child: Row(
                children: [
                  Text(
                    "Show: ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Favourite",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Show: ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Favourite",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: favList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FavourtieItemWidget(
                  favModel: favList[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
