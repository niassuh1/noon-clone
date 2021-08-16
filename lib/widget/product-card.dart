import 'package:flutter/material.dart';
import 'package:noon/constants.dart';
import 'package:noon/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    TextStyle? bt1 = Theme.of(context).textTheme.bodyText1;
    return AspectRatio(
      aspectRatio: 4 / 6,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: defaultPadding / 2),
        padding: EdgeInsets.all(12),
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            Container(
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: bt1!.copyWith(fontSize: 12),
              ),
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: product.price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                  children: [TextSpan(text: 'SAR', style: bt1)]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_rounded, color: Colors.yellow[700]),
                SizedBox(
                  width: 4,
                ),
                RichText(
                  text: TextSpan(
                    text: product.stars.toString() + " ",
                    style: bt1.copyWith(color: Colors.yellow[700], height: 1.5),
                    children: [
                      TextSpan(
                        text: '(${product.getCustomersRated()})',
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .primaryVariant
                              .withOpacity(.5),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
