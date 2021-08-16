import 'package:flutter/material.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color contentColor = Theme.of(context).brightness == Brightness.light
        ? Color(0xFFC0C9CC)
        : Theme.of(context).colorScheme.secondaryVariant;
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Spacer(),
          Icon(
            Icons.remove_shopping_cart_rounded,
            size: 70,
            color: contentColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your Cart is Empty',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: contentColor),
          ),
          Spacer()
        ],
      ),
    );
  }
}
