import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/app_bar/desktop_app_bar_widget.dart';
import 'package:responsividade/pages/home/widgets/app_bar/mobile_app_bar_widget.dart';
import 'package:responsividade/pages/home/widgets/sections/courses_section_widget.dart';
import 'package:responsividade/pages/home/widgets/sections/top_section_widget.dart';
import 'package:responsividade/utils/default_sizes.dart';
import 'package:responsividade/utils/platform_service.dart';

import 'widgets/sections/advantages_section_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var platformService = PlatformService(constraints: constraints);
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, platformService.toolbarHeight),
            child:
                platformService.isMobile() ? MobileAppBar() : DesktopAppBar(),
          ),
          backgroundColor: Colors.black,
          drawer: platformService.isMobile() ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWebWidth),
              child: ListView(
                children: [
                  TopSectionWidget(),
                  AdvantagesSectionWidget(),
                  CoursesSectionWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
