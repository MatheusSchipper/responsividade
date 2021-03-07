import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/custom_search_field_widget.dart';
import 'package:responsividade/utils/constants.dart';
import 'package:responsividade/utils/default_sizes.dart';

class TopSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 4.0,
                  child: getImage(),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: buildCard(
                      width: 450, titleFontSize: 40, subtitleFontSize: 18),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint)
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: getImage(),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: buildCard(
                      width: 350, titleFontSize: 35, subtitleFontSize: 15),
                ),
              ],
            ),
          );
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: getImage(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  builTitle(35),
                  const SizedBox(height: 8),
                  buildSubtitle(15),
                  const SizedBox(height: 8),
                  CustomSearchField(),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget buildCard({
    @required double width,
    @required double titleFontSize,
    @required double subtitleFontSize,
  }) {
    return Card(
      color: Colors.black,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            builTitle(titleFontSize),
            const SizedBox(
              height: 8,
            ),
            buildSubtitle(subtitleFontSize),
            const SizedBox(
              height: 8,
            ),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }

  Text buildSubtitle(double subtitleFontSize) {
    return Text(
      'Bora aprender Flutter!\n'
      'Qualidade garantida',
      style: TextStyle(
        fontSize: subtitleFontSize,
        color: Colors.white,
      ),
    );
  }

  Text builTitle(double titleFontSize) {
    return Text(
      'Aprenda Flutter com este curso',
      style: TextStyle(
        fontSize: titleFontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget getImage() {
    return Image.asset(
      flutterImage,
      fit: BoxFit.cover,
    );
  }
}
