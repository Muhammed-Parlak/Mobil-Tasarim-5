import 'package:flutter/material.dart';

/*********************************** */

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonList = [
      "img_milk.png",
      "img_bread.png",
    ];
    return Container(
      //Yan List
      height: 80,
      // margin: EdgeInsets.only(left: 2),
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(15),
            width: 140,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_milk.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                const Text(
                  "Dairy",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const VerticalDivider(endIndent: 4, indent: 4),
                const Text(
                  "85",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*************************** */
class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              //Üst resim ve yazı
              height: 170,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              margin: const EdgeInsets.only(bottom: 2),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    height: 80,
                    width: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/photo1.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                        "Capri-Sun's Black currant multi packs 'Kids go free' "),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5))),
                height: 20,
                width: 40,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: const Text(
                  "NEW",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        //alt fiyat yazısı ve floating button
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Text(
                      "\$2.49",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "/620ml",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                elevation: 10,
                backgroundColor: const Color.fromARGB(255, 205, 64, 3),
                onPressed: () {},
                mini: true,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
