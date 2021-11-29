import 'package:flutter/material.dart';
import 'package:workshop/widgets/menu_tag_widget.dart';

class MenuTagListWidget extends StatelessWidget {
  const MenuTagListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: const [
          MenuTagWidget(
            title: 'Headphone',
            isSelected: true,
          ),
          MenuTagWidget(
            title: 'Headband',
            isSelected: false,
          ),
          MenuTagWidget(
            title: 'Earpads',
            isSelected: false,
          ),
          MenuTagWidget(
            title: 'Cable',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
