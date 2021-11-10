import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                const Image(
                    image: AssetImage(
                  'images/Mask-Group-1.png',
                )),
                Image(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.646,
                    width: MediaQuery.of(context).size.width,
                    image: const AssetImage(
                      'images/Rectangle.png',
                    )),
                const Positioned(
                  right: 0,
                  top: 150,
                  child: Image(
                      height: 220,
                      width: 220,
                      image: AssetImage(
                        'images/slice.png',
                      )),
                ),
                const Positioned(
                  right: 225,
                  top: 140,
                  child: Image(
                      height: 180,
                      width: 180,
                      image: AssetImage(
                        'images/burger1.png',
                      )),
                ),
                const Positioned(
                  right: 20,
                  top: 30,
                  child: Image(
                      height: 140,
                      width: 140,
                      image: AssetImage(
                        'images/coffee.png',
                      )),
                ),
                const Positioned(
                  left: -50,
                  top: 15,
                  child: Image(
                      height: 180,
                      width: 180,
                      image: AssetImage(
                        'images/drink.png',
                      )),
                ),
                Image(
                    height: MediaQuery.of(context).size.height * 0.646,
                    image: const AssetImage(
                      'images/Background copy.png',
                    )),
                Positioned(
                  left: 16,
                  top: MediaQuery.of(context).size.height * 0.6477,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0233,
                      ),
                      const Text(
                        '!الموضوع بقي سهل ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0073,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.100,
                        width: MediaQuery.of(context).size.width * 0.914,
                        child: const Text(
                          'هتقدر تدير وتتابع كل الخدمات والأعمال داخل المطعم من حجز طرابيزة وإضافة طلبات بجميع أنواعها وتدير الموضوع بسهولة ',
                          style: TextStyle(
                            color: Color(0xFF343A40),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.043,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFC802A),
                          fixedSize: const Size(343, 48),
                        ),
                        child: const Text(
                          'ابدأ الان',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
