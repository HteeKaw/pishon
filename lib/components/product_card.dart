import 'package:flutter/material.dart';
import 'package:pishon/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productLists,
    required this.index,
  }) : super(key: key);

  final List<Product> productLists;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      )),
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Container(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  // borderRadius: const BorderRadius.only(
                  //     topLeft: Radius.circular(12),
                  //     topRight: Radius.circular(12)),
                  child: Image.asset(
                    productLists[index].productImageLink,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Text(
                      productLists[index].productName,
                      style: const TextStyle(),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
