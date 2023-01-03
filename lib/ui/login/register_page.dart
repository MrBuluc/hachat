import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hachat/ui/const.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(gradient: registerPageBg),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [buildHeader(), buildTextFields(), buildBackButton()],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader() => SizedBox(
        height: size.height * .25,
        width: size.width * .85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hesap\nOluştur",
              style: headerText,
            )
          ],
        ),
      );

  Widget buildTextFields() => Container(
        height: size.height * .6,
        width: size.width * .85,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 2),
                  blurRadius: 4,
                  color: Colors.grey.shade600)
            ]),
        child: Form(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 15, right: 30, left: 30, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getTextFormField(Icons.person, "Adınız"),
                getTextFormField(Icons.person, "Soyadınız"),
                getTextFormField(Icons.badge, "Okul Numaranız"),
                getTextFormField(Icons.mail, "E-posta Adresi"),
                getTextFormField(Icons.lock, "Şifre", obscureText: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          gradient: registerButton,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Widget getTextFormField(IconData icon, String hintText,
          {bool obscureText = false}) =>
      TextFormField(
        obscureText: obscureText,
        keyboardType: icon == Icons.mail ? TextInputType.emailAddress : null,
        style: TextStyle(color: Theme.of(context).hintColor),
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).hintColor,
                fontSize: 17),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      );

  Widget buildBackButton() => Padding(
        padding: EdgeInsets.only(left: size.width * .1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                GestureDetector(
                  child: const Text(
                    "Geri",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            Image.asset(
              "asset/fiores/fioresLogo.jpg",
              width: 150,
              height: 100,
            )
          ],
        ),
      );
}
