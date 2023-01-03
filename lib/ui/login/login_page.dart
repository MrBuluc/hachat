import 'package:flutter/material.dart';
import 'package:hachat/ui/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(gradient: loginPageBg),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildHeader(),
                buildFormField(),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: buildNewAccount(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader() => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(
          height: size.height * .29,
          width: size.width * .86,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Center(
                child: Text(
                  "HACHAT",
                  style: headerText,
                ),
              ),
              Text(
                "Devam etmek için giriş yapın",
                style: miniHeader,
              )
            ],
          ),
        ),
      );

  Widget buildFormField() => Container(
        height: size.height * .45,
        width: size.width * .86,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Form(
          child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Theme.of(context).hintColor),
                    cursorColor: Theme.of(context).hintColor,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintStyle: TextStyle(
                            color: Theme.of(context).hintColor, fontSize: 17),
                        hintText: "E-posta Adresi",
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Theme.of(context).hintColor),
                    cursorColor: Theme.of(context).hintColor,
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintText: "Şifre",
                        hintStyle: TextStyle(
                            color: Theme.of(context).hintColor, fontSize: 17)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Şifreni mi unuttun?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).hintColor),
                        ),
                        Container(
                          height: size.height * .07,
                          width: size.width * .2,
                          decoration: BoxDecoration(
                              gradient: entryButton,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.forward, color: Colors.white),
                        ),
                      ])
                ],
              )),
        ),
      );

  Widget buildNewAccount() => Center(
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Hesap Oluştur",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
}
