import 'package:flutter/material.dart';
import 'package:noon/models/poster.dart';

class PostersScroll extends StatefulWidget {
  final List<Poster> posters;
  const PostersScroll({required this.posters});

  @override
  _PostersScrollState createState() => _PostersScrollState();
}

class _PostersScrollState extends State<PostersScroll> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          child: PageView.builder(
            itemCount: posters.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.network(
                posters[index].posterImageUrl,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: posters.asMap().entries.map((e) {
            return Container(
              height: 5,
              width: MediaQuery.of(context).size.width / (posters.length * 4),
              margin: EdgeInsets.only(top: 12, left: 6, right: 6),
              decoration: BoxDecoration(
                color: _currentPage == e.key
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
