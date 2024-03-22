import 'package:flutter/material.dart';

class ThreeINA extends StatefulWidget {
  const ThreeINA({super.key});

  @override
  State<ThreeINA> createState() => _ThreeINAState();
}

class _ThreeINAState extends State<ThreeINA> {
  Image heart = Image.asset("Asset/img/Brands/3INA/Heart.png", width: 35);
  Image redHeart =
      Image.asset("Asset/img/Brands/3INA/Heart_red.png", width: 35);
  Image SetHeart = Image.asset("Asset/img/Brands/3INA/Heart.png", width: 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3INA",
            style: TextStyle(
              fontSize: 16,
            )),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "Asset/img/Brands/3INA/3INA_BG.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Cruelty-Free",
                      style: TextStyle(color: Color.fromARGB(255, 71, 84, 240)),
                    )),
                SizedBox(
                  width: 206,
                ),
                IconButton(
                    onPressed: () {
                      if (SetHeart == heart) {
                        setState(() {
                          SetHeart = redHeart;
                        });
                      } else {
                        setState(() {
                          SetHeart = heart;
                        });
                        SetHeart = heart;
                      }
                    },
                    icon: SetHeart)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              width: double.infinity,
              height: 450,
              child: ListView(children: [
                Text("3INA",
                    style: TextStyle(
                      fontSize: 30,
                    )),
                Text("3INA has confirmed that it is truly cruelty-free.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 84, 240), fontSize: 16)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "They don't test finished products or ingredients on animals, and neither do their suppliers or any third-parties. They also don't sell their products where animal testing is required by law.",
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 71, 84, 240),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Finished products tested on animals",
                      style: TextStyle(
                          color: Color.fromARGB(255, 41, 48, 62), fontSize: 16),
                    ),
                    SizedBox(
                      width: 61,
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 84, 240),
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 71, 84, 240),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Ingredients tested on animals",
                      style: TextStyle(
                          color: Color.fromARGB(255, 41, 48, 62), fontSize: 16),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 84, 240),
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 71, 84, 240),
                        foregroundColor: Colors.white,
                        fixedSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Text("Where to find?")),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 41, 48, 62),
                        foregroundColor: Colors.white,
                        fixedSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Text("Official website"))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
