import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderForAD extends StatelessWidget {
  const SliderForAD({
    Key? key,
    required this.sliderItems,
    required this.current,
    required this.changeCurrentIndex,
  }) : super(key: key);

  final List sliderItems;
  final int current;
  final Function changeCurrentIndex;

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: .9,
            autoPlay: true,
            onPageChanged: (index, reason) {
              changeCurrentIndex(index);
            },
          ),
          items: sliderItems.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black38,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      '$i',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliderItems.asMap().entries.map((entry) {
            return Container(
              margin: const EdgeInsets.only(left: 2),
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                    .withOpacity(current == entry.key ? 0.9 : 0.4),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
