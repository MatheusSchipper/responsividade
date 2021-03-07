import 'package:flutter/material.dart';
import 'package:responsividade/utils/platform_service.dart';

class DesktopAppBarResponsiveContent extends StatefulWidget {
  @override
  _DesktopAppBarResponsiveContentState createState() =>
      _DesktopAppBarResponsiveContentState();
}

class _DesktopAppBarResponsiveContentState
    extends State<DesktopAppBarResponsiveContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var platformService = PlatformService(constraints: constraints);
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: platformService.toolbarContentHeight,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  child:
                      Text('Aprender', style: TextStyle(color: Colors.white)),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: Text('Flutter', style: TextStyle(color: Colors.white)),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
