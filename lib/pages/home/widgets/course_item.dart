import 'package:flutter/material.dart';
import 'package:responsividade/utils/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          courseItemImage,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4.0),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps multiplataforma com Flutter',
            minFontSize: 8,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        buildAlignedText(
          text: 'Matheus Schipper',
          textColor: Colors.grey,
        ),
        const SizedBox(height: 4.0),
        buildAlignedText(
          text: 'R\$22,90',
          textColor: Colors.white,
          fontSize: 14,
        ),
      ],
    );
  }

  Widget buildAlignedText({
    @required String text,
    @required textColor,
    double fontSize = 15,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
