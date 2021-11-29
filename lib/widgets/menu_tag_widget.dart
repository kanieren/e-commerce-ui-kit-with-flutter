import 'package:flutter/material.dart';

class MenuTagWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const MenuTagWidget({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: isSelected ? const Color(0xff0ACF83) : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 25,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 14, color: isSelected ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
