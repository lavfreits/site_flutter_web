import 'package:flutter/material.dart';
import 'package:site_flutter_web/pages/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= mobileBreakPoint) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
            ],
          ),
        );
      }
      return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            children: [
              Expanded(
                  child: buildVerticalAdvantage(
                      '+45.000 alunos', 'Didática garantida')),
              const SizedBox(width: 4),
              Expanded(
                  child: buildVerticalAdvantage(
                      '+45.000 alunos', 'Didática garantida')),
              const SizedBox(width: 4),
              Expanded(
                  child: buildVerticalAdvantage(
                      '+45.000 alunos', 'Didática garantida')),
            ],
          ));
    });
  }
}
