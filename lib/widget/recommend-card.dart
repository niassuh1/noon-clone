import 'package:flutter/material.dart';
import 'package:noon/constants.dart';

class RecommendCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const RecommendCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        width: 160,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 10 / 11,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(9),
              color: Theme.of(context).colorScheme.secondaryVariant,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
