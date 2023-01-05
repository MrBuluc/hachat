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
