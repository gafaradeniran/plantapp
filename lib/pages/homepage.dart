import 'package:flutter/material.dart';
import 'package:plantapp/models/productmodel.dart';
import 'package:plantapp/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  
  List<String> menu = ['Green Plant', 'Indoor Plant', 'Shape Plant'];
  List<String> pageTitle = ['Green', 'Indoor', 'Shape'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Row(
            children: [
              Container(
                //left container
                height: MediaQuery.of(context).size.height,
                width: 80,
                color: Colors.green,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 195,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                            children: List.generate(
                                menu.length,
                                (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 13.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: selectedIndex ==
                                                          index
                                                      ? Colors.amber
                                                      : Colors.transparent),
                                            ),
                                            const SizedBox(height: 5),
                                            Row(
                                              children: [
                                                Text(
                                                  menu[index],
                                                  style:
                                                      selectedIndex == index
                                                          ? menuIndex
                                                          : menuStyle,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 80,
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.home, size: 35, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              //right container
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: screens[selectedIndex],
                ),
              ),
            ],
          ),
          //top-bar container
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined,
                              color: Colors.white),
                          iconSize: 30),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search, color: Colors.black),
                          iconSize: 30),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pageTitle[selectedIndex],
                        style: bodyStyle,
                      ),
                      const SizedBox(height: 5),
                      Text('Plants', style: titleStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
