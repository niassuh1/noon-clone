import 'package:flutter/material.dart';
import 'package:noon/models/poster.dart';
import 'package:noon/models/product.dart';
import 'package:noon/widget/poster-scroller.dart';
import 'package:noon/widget/product-card.dart';
import 'package:noon/widget/recommend-card.dart';

import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostersScroll(posters: posters),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: 12),
                child: Text(
                  'Recommended For You',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).colorScheme.secondaryVariant,
                height: 270,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: 12),
                child: Text(
                  'Mobiles & Electronics',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    RecommendCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1059&q=80',
                        title: 'Phones'),
                    RecommendCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1621259181233-aa03cf592ea7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBzNXxlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        title: 'Gaming'),
                    RecommendCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1547658718-1cdaa0852790?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
                        title: 'Audio & Accessories'),
                    RecommendCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1607853827146-78a5bc08d14c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=281&q=80',
                        title: 'Cameras'),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
