import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.title,
    required this.titleDescription,
  });

  final String title;
  final String titleDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ' $title ',
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
        Expanded(
          child: Text(
            titleDescription.isEmpty
                ? 'Hе добавленo'
                : ' ${titleDescription.toString()}',
            style: const TextStyle(
              fontWeight: FontWeight.w100,
              // fontStyle: FontStyle.,
              fontSize: 17,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
      ],
    );
  }
}
