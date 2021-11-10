import 'package:flutter/material.dart';

class FoodAndDrinks extends StatefulWidget {
  const FoodAndDrinks({Key? key}) : super(key: key);

  @override
  State<FoodAndDrinks> createState() => _FoodAndDrinksState();
}

class _FoodAndDrinksState extends State<FoodAndDrinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.016,
                  right: MediaQuery.of(context).size.width * 0.042,
                  left: MediaQuery.of(context).size.width * 0.042,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          splashRadius: 10,
                          icon: const Icon(
                            Icons.close_outlined,
                            size: 18,
                            color: Colors.black,
                          )),
                      const Spacer(),
                      const Text(
                        '120ج.م',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Noto_Kufi_Arabic',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                      Stack(
                        children: [
                          Image(
                              width:
                                  MediaQuery.of(context).size.height * 0.1209,
                              height:
                                  MediaQuery.of(context).size.height * 0.029,
                              image: const AssetImage(
                                'images/tray.png',
                              )),
                          Positioned(
                            right: 11,
                            child: Image(
                                width:
                                    MediaQuery.of(context).size.height * 0.056,
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                                image: const AssetImage(
                                  'images/group.png',
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.914,
                    height: MediaQuery.of(context).size.height * 0.059,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      textAlign: TextAlign.right,
                      cursorColor: Colors.grey,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintTextDirection: TextDirection.rtl,
                        hintText: 'البحث ..',
                        hintStyle: TextStyle(
                          fontFamily: 'Noto_Kufi_Arabic',
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Color(0xFFFC802A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GridView(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 100,
                              childAspectRatio: 1 / 1.75,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 3),
                      children: [
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'images/pizza.png',
                                ),
                              ),
                              Text(
                                'بيتزا',
                                style: TextStyle(
                                  fontFamily: 'Noto_Kufi_Arabic',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'images/burger.png',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'برجر',
                                style: TextStyle(
                                  fontFamily: 'Noto_Kufi_Arabic',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'images/sandwich.png',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'كريبات',
                                style: TextStyle(
                                  fontFamily: 'Noto_Kufi_Arabic',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'images/burger.png',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'برجر',
                                style: TextStyle(
                                  fontFamily: 'Noto_Kufi_Arabic',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'images/pizza.png',
                                ),
                              ),
                              Text(
                                'بيتزا',
                                style: TextStyle(
                                  fontFamily: 'Noto_Kufi_Arabic',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.024,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            height: MediaQuery.of(context).size.height * 0.197,
                            width: MediaQuery.of(context).size.width * 0.426,
                            image: const AssetImage(
                              'images/pizzaLarge.png',
                            ),
                          ),
                          const Text(
                            'بيتزا إيطالي',
                            style: TextStyle(
                                fontFamily: 'Noto_Kufi_Arabic',
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const Text(
                            '65ج.م',
                            style: TextStyle(
                              fontFamily: 'Noto_Kufi_Arabic',
                              color: Color(0xFFFC802A),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            height: MediaQuery.of(context).size.height * 0.197,
                            width: MediaQuery.of(context).size.width * 0.426,
                            image: const AssetImage(
                              'images/slicePizza.png',
                            ),
                          ),
                          const Text(
                            'بيتزا - جبن موتزيرلا',
                            style: TextStyle(
                                fontFamily: 'Noto_Kufi_Arabic',
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const Text(
                            '55ج.م',
                            style: TextStyle(
                              fontFamily: 'Noto_Kufi_Arabic',
                              color: Color(0xFFFC802A),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            height: MediaQuery.of(context).size.height * 0.197,
                            width: MediaQuery.of(context).size.width * 0.426,
                            image: const AssetImage(
                              'images/shish.png',
                            ),
                          ),
                          const Text(
                            ' بيتزا - شيش طاووق',
                            style: TextStyle(
                                fontFamily: 'Noto_Kufi_Arabic',
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const Text(
                            '60ج.م',
                            style: TextStyle(
                              fontFamily: 'Noto_Kufi_Arabic',
                              color: Color(0xFFFC802A),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            height: MediaQuery.of(context).size.height * 0.197,
                            width: MediaQuery.of(context).size.width * 0.426,
                            image: const AssetImage(
                              'images/chicken.png',
                            ),
                          ),
                          const Text(
                            'بيتزا - فراخ',
                            style: TextStyle(
                                fontFamily: 'Noto_Kufi_Arabic',
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const Text(
                            '45ج.م',
                            style: TextStyle(
                              fontFamily: 'Noto_Kufi_Arabic',
                              color: Color(0xFFFC802A),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]))));
  }
}
