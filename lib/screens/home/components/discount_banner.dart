import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //add the image urls here
  List items = [
    'https://thumbs.dreamstime.com/b/love-birds-colorful-background-61784122.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKxRdld8vauUUwUShzG94eNfH6MsOJbWDY6w&usqp=CAU',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-pet-birds-lead-1572839035.jpg?crop=0.666xw:1.00xh;0,0&resize=640:*',
  ];
  var _cu=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
              children: [
                ClipRect(
                  
                  child: CarouselSlider(

                    items: items
                        .map((image) => Builder(

                      builder: (BuildContext context) {
                        return Container(

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(image),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ))
                        .toList(),
                    options: CarouselOptions(

                      height: 140,
                      viewportFraction: 1,
                      autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _cu = index;
                          });
                        }
                    ),
                  ),
                ),

                //use animated dots indicator
                DotsIndicator(
                    dotsCount: items.length,
                  position: _cu.toDouble(),
                ),
              ]
          ),
    );
  }
}

