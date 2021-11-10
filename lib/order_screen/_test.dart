import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List dummyData = List.generate(10, (index) => '$index');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: 70,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyData.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1 / 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return GridTile(
                    child: Container(
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: Text(dummyData[index])));
              },
            ),
          ),
        ),
      ),
    );
  }
}
