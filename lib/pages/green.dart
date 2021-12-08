import 'package:flutter/material.dart';
import 'package:plantapp/models/productmodel.dart';
import 'package:plantapp/innerpages/greeninnerpage.dart';
import 'package:plantapp/styles.dart';

class Green extends StatefulWidget {
  const Green({
    Key? key,
  }) : super(key: key);

  @override
  _GreenState createState() => _GreenState();
}

class _GreenState extends State<Green> {
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
          greenDetails.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => GreenDetails(index: index,)));
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(greenDetails[index].img,
                        fit: BoxFit.contain),
                    const SizedBox(height: 10),
                    Text(greenDetails[index].plantname,
                        style: titleStyle),
                    const SizedBox(height: 10),
                    Text(greenDetails[index].description,
                        style: bodyStyle),
                    const SizedBox(height: 10),
                    Text('\$${greenDetails[index].price}', style: priceStyle,),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
