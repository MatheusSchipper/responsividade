import 'package:flutter/material.dart';
import 'package:responsividade/utils/default_sizes.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: mobileToolbarHeight,
      title: Text('Flutter'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }
}
