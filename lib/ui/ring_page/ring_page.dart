import 'package:flutter/material.dart';
import 'package:hachat/ui/const.dart';

class RingPage extends StatefulWidget {
  const RingPage({Key? key}) : super(key: key);

  @override
  State<RingPage> createState() => _RingPageState();
}

class _RingPageState extends State<RingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: buildAppBar("Ring Saatleri", Colors.indigo),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Sonraki Beklenen Ring Saati:",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "06:40",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 3,
                    color: Colors.black,
                  ),
                  buildTimes()
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.work), label: "Hafta içi"),
            BottomNavigationBarItem(
                icon: Icon(Icons.weekend), label: "Cumartesi"),
            BottomNavigationBarItem(icon: Icon(Icons.hotel), label: "Pazar")
          ],
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget buildTimes() {
    List<Widget> children = [];
    List<String> timesList = times[selectedIndex];
    for (String clock in timesList) {
      Widget child = Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          clock,
          style: const TextStyle(fontSize: 20),
        ),
      );
      children.add(child);
    }
    return Column(
      children: children,
    );
  }
}
