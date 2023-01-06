import 'package:flutter/material.dart';

class GpaCalPage extends StatefulWidget {
  const GpaCalPage({Key? key}) : super(key: key);

  @override
  State<GpaCalPage> createState() => _GpaCalPageState();
}

class _GpaCalPageState extends State<GpaCalPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Gpa Hesaplayıcı"),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Güncel Gpa Hesaplamak İçin Ders Bilgilerinizi Giriniz",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      buildTextFormField("Ders Adı"),
                      buildTextFormField("Kredisi"),
                      buildTextFormField("Puanı"),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  mini: true,
                  tooltip: "Ders Ekle",
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  tooltip: "Hesapla",
                  onPressed: () {},
                  child: const Icon(
                    Icons.calculate_sharp,
                    size: 40,
                  ),
                ),
              ],
            )));
  }

  Widget buildTextFormField(String hintText) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: hintText),
        ),
      );
}
