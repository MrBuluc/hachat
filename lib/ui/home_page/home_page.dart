import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HACHAT",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
        elevation: 2,
        actions: [
          Icon(
            Icons.account_circle,
            size: 30,
          )
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .03,
            ),
            buildNavigators(0, [Colors.grey, Colors.grey.shade700],
                Icons.calendar_month, "Akademik Takvim", null),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  buildNavigators(1, [Colors.lightBlueAccent, Colors.indigo],
                      Icons.directions_bus, "Ring", null),
                  buildNavigators(2, [Colors.greenAccent, Colors.blue],
                      Icons.calculate_outlined, "Gpa Hesaplayıcı", null),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    buildNavigators(3, [Colors.red, Colors.red.shade700],
                        Icons.restaurant_menu, "Yemekhane", null),
                    buildNavigators(4, [Colors.green, Colors.lightGreen],
                        Icons.map, "Kampüs Haritası", null)
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: "Duyurular"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Etkinlikler")
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget buildNavigators(int index, List<Color> gradientColors, IconData icon,
          String text, Widget? page) =>
      GestureDetector(
        child: Expanded(
            flex: 1,
            child: Container(
              width: index > 0 ? size.width * .45 : null,
              margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: gradientColors)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: size.height * .1,
                    color: Colors.white,
                  ),
                  Center(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  if (index == 0)
                    SizedBox(
                      height: 10,
                    )
                ],
              ),
            )),
      );
}
