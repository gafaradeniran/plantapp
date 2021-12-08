import 'package:flutter/material.dart';
import 'package:plantapp/innerpages/indoorinnerpage.dart';
import 'package:plantapp/models/productmodel.dart';
import 'package:plantapp/styles.dart';

import '../innerpages/greeninnerpage.dart';

class Indoor extends StatefulWidget {
  const Indoor({Key? key}) : super(key: key);

  @override
  _IndoorState createState() => _IndoorState();
}

class _IndoorState extends State<Indoor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 0.56,
        mainAxisSpacing: 0.0,
        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        children: List.generate(
          greenDetails.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => IndoorDetails(index: index,)));
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    children: [
                      Image.asset(indoorDetails[index].img, fit: BoxFit.contain),
                      const SizedBox(height: 10),
                      Text(indoorDetails[index].plantname, style: titleStyle),
                      const SizedBox(height: 10),
                      Text(indoorDetails[index].description, style: bodyStyle),
                      const SizedBox(height: 10),
                      Text(
                        '\$${indoorDetails[index].price}',
                        style: priceStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
