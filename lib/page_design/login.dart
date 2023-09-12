import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageDesign extends StatelessWidget {
  const PageDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          stackVariable1(context),
          stackVariable2(context),
          stackVariable3(context),
          stackVariable4(context),
          userTextArea(context)
        ],
      ),
    );
  }

  Align userTextArea(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      icon: const Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 4, 70, 35),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      labelText: "Email",
                      enabledBorder: InputBorder.none,
                      labelStyle: const TextStyle(color: Colors.grey)),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: const Icon(
                        Icons.vpn_key,
                        color: Color.fromARGB(255, 4, 70, 35),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      labelText: "Password",
                      enabledBorder: InputBorder.none,
                      labelStyle: const TextStyle(color: Colors.grey)),
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                  child: const Text(
                    "FORGOT PASSWORD?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 70, 35), fontSize: 11),
                  ))),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 4, 70, 35),
                              Color.fromARGB(255, 74, 180, 92)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.amber,
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "DON'T HAVE AN ACCOUNT ? ",
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                " SIGN UP",
                style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 4, 70, 35),
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned stackVariable4(BuildContext context) {
    return Positioned(
      left: -getBiglDiameter(context) / 1.2,
      bottom: -getBiglDiameter(context) / 2.6,
      child: Container(
        width: getBiglDiameter(context),
        height: getBiglDiameter(context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 4, 70, 35),
            Color.fromARGB(255, 74, 180, 92)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
    );
  }

  Positioned stackVariable3(BuildContext context) {
    return Positioned(
      right: -getBiglDiameter(context) / 1.8,
      bottom: -getBiglDiameter(context) / 1.5,
      child: Container(
        width: getBiglDiameter(context),
        height: getBiglDiameter(context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 4, 70, 35),
            Color.fromARGB(255, 74, 180, 92)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
    );
  }

  Positioned stackVariable2(BuildContext context) {
    return Positioned(
      left: -getBiglDiameter(context) / 4,
      top: -getBiglDiameter(context) / 4,
      child: Container(
        width: getBiglDiameter(context),
        height: getBiglDiameter(context),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 21, 218, 113),
              Color.fromARGB(255, 48, 70, 52)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: const Center(
          child: Text(
            "Flutter",
            style: TextStyle(
                fontFamily: "Pacifico", fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Positioned stackVariable1(BuildContext context) {
    return Positioned(
      right: -getSmallDiameter(context) / 3,
      top: -getSmallDiameter(context) / 3,
      child: Container(
        width: getSmallDiameter(context),
        height: getSmallDiameter(context),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 25, 177, 53),
              Color.fromARGB(255, 145, 203, 179)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
  }
}
