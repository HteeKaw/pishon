import 'package:flutter/material.dart';
import 'package:pishon/components/suggestion_product.dart';
import 'package:pishon/components/slider_for_ad.dart';
import 'package:pishon/providers/product_data.dart';
import 'package:pishon/models/product_model.dart';

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({Key? key}) : super(key: key);
  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  List<Product> productLists = ProductData().productLists;
  List sliderItems = [
    'images/pexels-alex-andrews-821651.jpg',
    'images/pexels-antony-trivet-9982593.jpg',
    'images/pexels-math-90946.jpg',
    'images/pexels-math-90946.jpg',
  ];
  int current = 0;
  void changeCurrentIndex(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SliderForAD(
              changeCurrentIndex: changeCurrentIndex,
              sliderItems: sliderItems,
              current: current),
          Suggestion(productLists: productLists, title: 'Trending'),
          Suggestion(productLists: productLists, title: 'New coming')
        ],
      ),
    );
  }
}
