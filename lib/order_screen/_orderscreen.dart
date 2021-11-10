import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  int counter = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    {
      var screenHeight = MediaQuery.of(context).size.height;
      var screenWidth = MediaQuery.of(context).size.width;

      return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF2F2F7),
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                      height: screenHeight * 0.2994,
                      width: screenWidth,
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/pizza1.png',
                          ))),
                  Positioned(
                    top: 56,
                    left: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.0170,
              ),
              Container(
                height: screenHeight * 0.0381,
                width: screenWidth * 0.914,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                        color: const Color(0xFFfC802A),
                      ),
                      child: IconButton(
                        splashRadius: 4,
                        color: Color(0xFFfC802A),
                        iconSize: 30,
                        onPressed: () {
                          setState(() {
                            counter++;
                            print(counter);
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: const Color(0xFFEFF1F5),
                      ),
                      child: Text(
                        '${counter}',
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                        color: const Color(0xFFE0D8D6),
                      ),
                      child: IconButton(
                        splashRadius: 4,
                        onPressed: () {
                          setState(() {
                            if (counter >= 1) {
                              counter--;
                              print(counter);
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Color(0xFFfC802A),
                          size: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'بيتزا ايطالي',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'قسم البيتزا',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF949494),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    '(اختياري)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFB1B1B1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'الأضافات',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                height: screenHeight * 0.188,
                width: screenWidth * 0.914,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.grey),
                    left: BorderSide(color: Colors.grey),
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(color: Colors.grey),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                    10,
                  )),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          '8.00 ج م',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          'اضافه جبنه موتزريلا',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                            color: isActive1 ? Color(0xFFfC802A) : Colors.white,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 1.5,
                              right: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                isActive1 = !isActive1;
                              });
                            },
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 9,
                        left: 9,
                      ),
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Colors.grey[300],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          '8.00 ج م',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          'اضافه مشروم',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                            color: isActive2 ? Color(0xFFfC802A) : Colors.white,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 1.5,
                              right: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                isActive2 = !isActive2;
                              });
                            },
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 9,
                        left: 9,
                      ),
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Colors.grey[300],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          '8.00 ج م',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          'اضافه جبنه رومي',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                            color: isActive3 ? Color(0xFFfC802A) : Colors.white,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 1.5,
                              right: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                isActive3 = !isActive3;
                              });
                            },
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 9,
                        left: 9,
                      ),
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Colors.grey[300],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          '8.00 ج م',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          'اضافه بسطرمه',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                            color: isActive4 ? Color(0xFFfC802A) : Colors.white,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 1.5,
                              right: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                isActive4 = !isActive4;
                              });
                            },
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                height: screenHeight * 0.0381,
                width: screenWidth * 0.914,
                child: const Text(
                  'دون ملاحظات',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                height: screenHeight * 0.1342,
                width: screenWidth * 0.914,
                color: Colors.grey[300],
                child: const TextField(
                  textAlign: TextAlign.right,
                  maxLines: 6,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                        0,
                      )),
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'اكتب ملاحظاتك هنا',
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                height: screenHeight * 0.1305,
                width: screenWidth * 0.914,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFC802A),
                        fixedSize: Size(164, 68.68),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'اضافه الطلب',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(image: AssetImage('images/fi-rr-add.png')),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFE0D8D6),
                        fixedSize: const Size(164, 68.68),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'اجمالي السعر',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF373737),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '150 ج.م',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFC802A),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      );
    }
  }
}
