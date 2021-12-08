import 'package:flutter/material.dart';
import 'package:plantapp/models/productmodel.dart';
import 'package:plantapp/styles.dart';

class ShapeDetails extends StatelessWidget {
  const ShapeDetails({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(150)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined,
                              color: Colors.black),
                          iconSize: 30,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.black),
                          iconSize: 30,
                        ),
                      ],
                    ),
                    Image.asset(shapeDetails[index].img),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(shapeDetails[index].plantname,
                              style: titleStyle),
                          const SizedBox(height: 15),
                          Text(
                            shapeDetails[index].description,
                            style: bodyStyle,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Text('\$${shapeDetails[index].price}',
                                  style: priceStyle),
                                  const SizedBox(width: 15),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(' + ',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 12.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              footerIcons[index],
                              color: Colors.white60,
                            ),
                            Text(
                              footer[index],
                              style: bottomStyle,
                            ),
                            Text(
                              footerRange[index],
                              style: bottomSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
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
