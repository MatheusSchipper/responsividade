import 'package:flutter/material.dart';
import 'package:responsividade/utils/default_sizes.dart';

class AdvantagesSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= mobileBreakpoint)
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16.0,
            spacing: 8.0,
            children: [
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
            ],
          ),
        );
      return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Wrap(
          children: [
            Expanded(
                child: buildVerticalAdvantage(
                    '+45.000 alunos', 'Didática garantida')),
            const SizedBox(width: 4.0),
            Expanded(
                child: buildVerticalAdvantage(
                    '+45.000 alunos', 'Didática garantida')),
            const SizedBox(width: 4.0),
            Expanded(
                child: buildVerticalAdvantage(
                    '+45.000 alunos', 'Didática garantida')),
          ],
        ),
      );
    });
  }
}
