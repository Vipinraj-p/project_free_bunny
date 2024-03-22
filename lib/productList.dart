import 'package:flutter/material.dart';
import 'package:project_free_bunny/all_brands.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: TitledBottomNavigationBar(
            currentIndex: 1,
            enableShadow: true,
            indicatorColor: Color.fromARGB(255, 71, 84, 240),
            onTap: (index) {
              print("Selected Index: $index");
            },
            items: [
              TitledNavigationBarItem(
                  title: Image.asset(
                    "Asset/Icons/Home.png",
                    width: 28,
                  ),
                  icon: Image.asset(
                    "Asset/Icons/Home_dark.png",
                    width: 28,
                  )),
              TitledNavigationBarItem(
                  title: Image.asset(
                    "Asset/Icons/Buy.png",
                    width: 28,
                  ),
                  icon: Image.asset(
                    "Asset/Icons/Buy_dark.png",
                    width: 28,
                  )),
              TitledNavigationBarItem(
                  title: Image.asset(
                    "Asset/Icons/Chart.png",
                    width: 28,
                  ),
                  icon: Image.asset(
                    "Asset/Icons/Chart_dark.png",
                    width: 28,
                  )),
              TitledNavigationBarItem(
                  title: Image.asset(
                    "Asset/Icons/Profile.png",
                    width: 28,
                  ),
                  icon: Image.asset(
                    "Asset/Icons/Profile_dark.png",
                    width: 28,
                  )),
            ]),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "Asset/img/Categories/Vector94.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "Asset/Icons/Drawer.png",
                height: 50,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Center(
                  child: Text(
                    "Product list",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 22, right: 22),
              child: TextField(
                cursorColor: Color.fromARGB(255, 71, 85, 240),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.indigoAccent[400],
                    ),
                    suffixIcon: Image.asset("Asset/Icons/Filter.png"),
                    hintText: "Vegan eyeshadow palette...",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.black26),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 22),
              child: Row(
                children: [
                  Text(
                    "Product Categories",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Image.asset("Asset/Icons/Group.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210, left: 22, right: 22),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  if (index == 5) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllBrands(),
                          )),
                      child: Card(
                        child: Image.asset(categories[index]),
                        color: Color.fromARGB(255, 71, 84, 240),
                      ),
                    );
                  } else {
                    return Card(child: Image.asset(categories[index]));
                  }
                },
              ),
            )
          ],
        ));
  }
}

List categories = [
  "Asset/img/Categories/AllProducts.png",
  "Asset/img/Categories/BodyCare.png",
  "Asset/img/Categories/Cleaning.png",
  "Asset/img/Categories/Hygiene.png",
  "Asset/img/Categories/Skincare.png",
  "Asset/img/Categories/AllProduct_blue.png",
];
