import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {

  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        fixedSize: Size(300, 56),
        backgroundColor: Color.fromRGBO(255, 164, 81, 1),
        textStyle: const TextStyle(fontSize: 16));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: 411.4,
          height: 683.4,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 411.4,
                    height: 444,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Color.fromRGBO(255, 164, 81, 1)),
                    child: Stack(children: [
                      Padding(
                          padding:
                          const EdgeInsets.fromLTRB(40.0, 115.0, 20.0, 0),
                          child: Image.asset(
                            'assets/images/cesta_de_frutas.png',
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(290, 130, 50, 4),
                        child: Image.asset(
                          'assets/images/welcome_fruit.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(51.7, 400, 51.7, 50),
                    child: ClipOval(
                      child: Container(
                        width: 300,
                        height: 12,
                        decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(78, 402, 51.7, 0.0),
                    child: ClipOval(
                      child: Container(
                        width: 25,
                        height: 13,
                        decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(290, 402, 51.7, 0.0),
                    child: ClipOval(
                      child: Container(
                        width: 25,
                        height: 13,
                        decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(318, 397, 51.7, 0.0),
                    child: ClipOval(
                      child: Container(
                        width: 25,
                        height: 10,
                        decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 211.4,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What is your firstname?",
                        style: TextStyle(
                          color: Color.fromRGBO(39, 33, 77, 1),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: nameController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            border:UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: 'Name',
                            fillColor: Color.fromRGBO(247, 245, 245, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            print(nameController.text);
                          },
                          child: Text(
                            "Start Ordering",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}