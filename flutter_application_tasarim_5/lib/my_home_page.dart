import 'package:flutter/material.dart';
import 'package:flutter_application_tasarim_5/card_box.dart';
// import 'package:flutter_application_tasarim_4/card_box.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initial Selected Value
  String dropdownvalue = 'All Products';

  // List of items in our dropdown menu
  var items = [
    'All Products',
    'Item 2',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF297690),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Divider(
              height: 0,
              color: Colors.grey,
              thickness: 1,
            ),
            GNav(
              backgroundColor: Colors.white,
              color: Colors.grey,
              activeColor: Colors.black,
              tabs: [
                GButton(icon: Icons.home), // resim ve yazı eklenecek
                GButton(icon: Icons.menu_book),
                GButton(icon: Icons.add_box),
                GButton(icon: Icons.shopping_basket),
                GButton(icon: Icons.face),
              ],
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 2,
          shadowColor: Colors.black45,
          title: Column(
            children: const [
              Text(
                "GoloMarket",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                "Online Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          centerTitle: true,
          leading: appBarButton(iconData: Icons.menu),
          actions: [
            appBarButton(iconData: Icons.card_giftcard),
          ],
          backgroundColor: const Color(0xFF297690),
        ),
        body: Column(
          children: [
            //üst çizgi search ve filtre
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search all products",
                          focusColor: Colors.red,
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  )
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  color: const Color.fromARGB(255, 228, 228, 228),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: ButtonList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.apps_rounded,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.count(
                          childAspectRatio: 9 / 13,
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 3,
                          children: const [
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding appBarButton({required IconData iconData}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white24,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
