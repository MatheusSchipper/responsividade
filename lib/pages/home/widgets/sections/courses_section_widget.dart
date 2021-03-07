import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/course_item.dart';
import 'package:responsividade/utils/default_sizes.dart';

class CoursesSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var maxWidth = constraints.maxWidth;
      return GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: maxWidth >= tabletBreakpoint ? 0 : 16,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CourseItem();
        },
      );
    });
  }
}
