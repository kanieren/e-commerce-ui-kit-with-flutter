import 'package:flutter/material.dart';

class DetailTabChip extends StatelessWidget {
  final String? title;
  final bool isSelected;
  const DetailTabChip({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(title!),
        SizedBox(
          width: 20,
          height: 20,
          child: Divider(
            color: isSelected ? Color(0xff0ACF83) : Colors.transparent,
            height: 8,
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
