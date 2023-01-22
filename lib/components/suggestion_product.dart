import 'package:flutter/material.dart';
import 'package:pishon/models/product_model.dart';
import 'package:pishon/components/product_card.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({
    Key? key,
    required this.productLists,
    required this.title,
  }) : super(key: key);

  final List<Product> productLists;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: .5,
                ),
              ),
              const Text('See all'),
            ],
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productLists.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(productLists: productLists, index: index);
              },
            ),
          )
        ],
      ),
    );
  }
}
