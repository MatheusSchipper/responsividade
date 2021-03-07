import 'package:flutter/material.dart';
import 'package:responsividade/utils/default_sizes.dart';

import 'desktop_app_bar_responsive_content_widget.dart';

class DesktopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: desktopToolbarHeight,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(
            width: 32,
          ),
          DesktopAppBarResponsiveContent(),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: desktopToolbarHeight * 0.5,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith(
                  (states) => BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: desktopToolbarHeight * 0.5,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.white),
                side: MaterialStateProperty.resolveWith(
                  (states) => BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
