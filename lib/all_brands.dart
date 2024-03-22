import 'package:flutter/material.dart';
import 'package:project_free_bunny/three_ina.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class AllBrands extends StatefulWidget {
  const AllBrands({super.key});

  @override
  State<AllBrands> createState() => _AllBrandsState();
}

class _AllBrandsState extends State<AllBrands> {
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
                    "Brands",
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
                    "All Brands A-Z",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 190,
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
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  if (index == 2) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThreeINA(),
                          )),
                      child: Card(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          brands[index],
                          fit: BoxFit.cover,
                        ),
                      )),
                    );
                  } else {
                    return Card(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        brands[index],
                        fit: BoxFit.cover,
                      ),
                    ));
                  }
                },
              ),
            )
          ],
        ));
  }
}

List brands = [
  "Asset/img/Brands/pure.png",
  "Asset/img/Brands/14e_cosmetics.png",
  "Asset/img/Brands/3ina.png",
  "Asset/img/Brands/acure.png",
  "Asset/img/Brands/adorn_Cosm.png",
  "Asset/img/Brands/AGhair.png"
];
