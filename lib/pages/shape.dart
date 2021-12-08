import 'package:flutter/material.dart';
import 'package:plantapp/innerpages/shapeinnerpage.dart';
import 'package:plantapp/models/productmodel.dart';
import 'package:plantapp/innerpages/greeninnerpage.dart';
import 'package:plantapp/styles.dart';

class Shape extends StatefulWidget {
  const Shape({Key? key}) : super(key: key);

  @override
  _ShapeState createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {
   return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        mainAxisSpacing: 0.0,
        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        children: List.generate(
          shapeDetails.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ShapeDetails(index: index)));
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
                      Image.asset(shapeDetails[index].img,
                          fit: BoxFit.contain),
                      const SizedBox(height: 10),
                      Text(shapeDetails[index].plantname,
                          style: titleStyle),
                      const SizedBox(height: 10),
                      Text(shapeDetails[index].description,
                          style: bodyStyle),
                      const SizedBox(height: 10),
                      Text('\$${shapeDetails[index].price}', style: priceStyle,),
                      
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
