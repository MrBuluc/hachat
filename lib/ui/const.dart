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
