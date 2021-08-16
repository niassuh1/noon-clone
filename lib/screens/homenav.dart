import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noon/constants.dart';
import 'package:noon/provider/theme-provider.dart';

import 'package:noon/screens/main-screen.dart';
import 'package:noon/widget/shopping-list.dart';
import 'package:noon/widget/theme-toggle-btn.dart';
import 'package:provider/provider.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Color inActiveIconColor = Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.primaryVariant
        : Theme.of(context).colorScheme.secondaryVariant;
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: ConvexAppBar(
        height: 50,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        elevation: 0,
        curve: Curves.ease,
        curveSize: 80,
        style: TabStyle.react,
        onTap: (n) {
          _controller.animateToPage(n,
              duration: Duration(milliseconds: 200), curve: Curves.ease);
        },
        items: [
          TabItem(
            icon: Icon(
              Icons.home_outlined,
              color: inActiveIconColor,
            ),
            activeIcon: Icon(
              Icons.home_rounded,
              color: Theme.of(context).brightness == Brightness.light
                  ? accentColor
                  : primaryColor,
            ),
          ),
          TabItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: inActiveIconColor,
            ),
            activeIcon: Icon(
              Icons.shopping_bag_rounded,
              color: Theme.of(context).brightness == Brightness.light
                  ? accentColor
                  : primaryColor,
            ),
          ),
          TabItem(
            icon: Icon(
              Icons.new_releases_outlined,
              color: inActiveIconColor,
            ),
            activeIcon: Icon(
              Icons.new_releases_rounded,
              color: Theme.of(context).brightness == Brightness.light
                  ? accentColor
                  : primaryColor,
            ),
          ),
          TabItem(
            icon: Icon(
              Icons.tune_outlined,
              color: inActiveIconColor,
            ),
            activeIcon: Icon(
              Icons.tune_rounded,
              color: Theme.of(context).brightness == Brightness.light
                  ? accentColor
                  : primaryColor,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (n) {
          setState(() {
            _selectedIndex = n;
          });
        },
        children: [
          MainScreen(),
          Scaffold(
            body: Center(
              child: Text('Categories',
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text('New', style: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          ThemeToggle(),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 8,
      centerTitle: true,
      toolbarHeight: 80,
      leadingWidth: 40,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SvgPicture.asset(
          'assets/images/noon-logo.svg',
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).accentColor
              : Theme.of(context).primaryColor,
        ),
      ),
      title: buildSearchBar(context),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
              ),
              builder: (context) {
                return ShoppingList();
              },
            );
          },
          splashRadius: 25,
          icon: Icon(
            Icons.shopping_cart_sharp,
            color: Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).accentColor
                : Colors.white,
          ),
        ),
        IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: SvgPicture.asset(
              'assets/images/menu-icon.svg',
              width: 17,
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).accentColor
                  : Colors.white,
            ))
      ],
    );
  }

  Container buildSearchBar(BuildContext context) {
    return Container(
      height: 42,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(23)),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        style: TextStyle(color: Theme.of(context).accentColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'What Are You Looking For?',
          hintStyle:
              TextStyle(color: Theme.of(context).colorScheme.primaryVariant),
          icon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primaryVariant,
            size: 20,
          ),
        ),
      ),
    );
  }
}
