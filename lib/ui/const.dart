import 'package:flutter/material.dart';

LinearGradient loginPageBg = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [.1, .8],
    colors: [Color.fromRGBO(226, 10, 22, 1), Color.fromRGBO(40, 56, 46, 1)]);

LinearGradient entryButton = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [.1, .8],
    colors: [Color.fromRGBO(226, 10, 22, 1), Color.fromRGBO(40, 56, 46, 1)]);

LinearGradient registerPageBg = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [.1, .5],
    colors: [Color.fromRGBO(209, 180, 122, 1), Color.fromRGBO(40, 56, 46, 1)]);

LinearGradient registerButton = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [.3, .9],
    colors: [Color.fromRGBO(209, 180, 122, 1), Color.fromRGBO(40, 56, 46, 1)]);

const TextStyle headerText = TextStyle(
    color: Colors.white,
    fontSize: 42,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
          offset: Offset(3, 3),
          blurRadius: 8,
          color: Color.fromARGB(43, 43, 43, 0))
    ]);

const TextStyle miniHeader = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
          offset: Offset(5, 5),
          blurRadius: 10,
          color: Color.fromARGB(43, 43, 43, 0))
    ]);

List<List<String>> times = [
  [
    "00:00",
    "00:20",
    "00:40",
    "01:25",
    "06:40",
    "06:41 Ücretsiz (Köprüden)",
    "06:50",
    "07:00 Köprü",
    "07:01 Ücretsiz",
    "07:10 Ücretsiz",
    "07:20"
  ],
  [
    "00:10",
    "00:45",
    "01:25",
    "06:40 Ücretsiz (Köprü)",
    "04:41",
    "07:00 Ücretsiz",
    "07:15",
    "07:30",
    "07:45 Ücretsiz",
    "08:00",
    "08:15"
  ],
  [
    "00:00",
    "00:40",
    "01:25",
    "06:40 Ücretsiz",
    "07:00",
    "07:20 Ücretsiz",
    "07:40",
    "08:00",
    "08:20 Ücretsiz",
    "08:40",
    "09:00"
  ]
];

List<List<Map<String, dynamic>>> foods = [
  [
    {
      "name": "Sıhhiye Mercimek Çorba",
      "alerjen": ["A"]
    },
    {
      "name": "Beytepe Yayla Çorba",
      "alerjen": ["A", "C", "D"]
    },
    {
      "name": "Tas Kebap",
      "alerjen": ["A"]
    },
    {"name": "Sıhhiye Pirinç Pilavı", "alerjen": []},
    {
      "name": "Beytepe Kırmızı Lahana Havuç Salata",
      "alerjen": ["L"]
    },
    {
      "name": "Revani",
      "alerjen": ["A", "C", "D", "K"]
    },
    {
      "name": "Lokma Tatlısı",
      "alerjen": ["A", "D", "C", "K"]
    },
    {
      "name": "Etsiz Kuru Fasulye",
      "alerjen": ["A"]
    },
  ],
  [
    {
      "name": "Domates Çorba",
      "alerjen": ["A", "D"]
    },
    {
      "name": "Etli Yeşil Mercimek",
      "alerjen": ["A"]
    },
    {
      "name": "Bulgur Pilavı",
      "alerjen": ["A"]
    },
    {
      "name": "Hoşaf",
      "alerjen": ["L"]
    },
    {
      "name": "Etsiz Yeşil Mercimek",
      "alerjen": ["A"]
    }
  ],
  [
    {
      "name": "Şehriye Çorbası",
      "alerjen": ["A"]
    },
    {
      "name": "Sıhhiye Izgara Köfte(parmak patates)",
      "alerjen": ["A"]
    },
    {
      "name": "Beytepe Sebzeli Kebap",
      "alerjen": ["A"]
    },
    {
      "name": "Soslu Makarna",
      "alerjen": ["A"]
    },
    {
      "name": "Meyve veya Ayran",
      "alerjen": ["D"]
    },
    {
      "name": "Etsiz Türlü",
      "alerjen": ["A"]
    }
  ],
];

List<String> calories = ["1329", "1085", "1155"];

AppBar buildAppBar(String title, Color bgColor) => AppBar(
      title: Text(title),
      centerTitle: true,
      actions: const [
        Icon(
          Icons.info_outline,
          size: 25,
        )
      ],
      backgroundColor: bgColor,
    );
