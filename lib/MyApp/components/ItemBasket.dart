import 'package:flutter/material.dart';

class ItemBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset('assets/images/PratoBerry.png'),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Quinoa fruit salad",
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color.fromRGBO(39, 33, 77, 1),
                            ),
                          ),
                          Text(
                            "2packs",
                            style: TextStyle(
                              fontFamily: 'Nunito-Light',
                              fontSize: 15,
                              color: Color.fromRGBO(39, 33, 77, 1),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 17,
                                height: 13,
                                child: Image.asset(
                                  'assets/images/BlackCoin.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                '20,000',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(39, 33, 77, 1)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: 60,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                  color: Color.fromRGBO(255, 164, 81, 1),
                ))
          ],
        ),
      ),
    );
  }
}