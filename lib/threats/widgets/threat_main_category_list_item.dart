import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threats_map_mobile/threats/models/threat_category.dart';

class ThreatMainCategoryListItem extends StatelessWidget {
  final ThreatCategory threatCategory;
  final double iconSize = 44.0;
  final ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(const CircleBorder()),
    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
    backgroundColor: const MaterialStatePropertyAll(Colors.white),
  );
  final Map<String, IconData> iconsMap = {
    'add_shopping_cart': Icons.add_shopping_cart,
    'warning_rounded': Icons.warning_rounded,
    'account_tree': Icons.account_tree,
    'dangerous': Icons.dangerous,
    'escalator': Icons.escalator,
  };

  ThreatMainCategoryListItem({required this.threatCategory, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Icon icon = Icon(iconsMap[threatCategory.iconKey], color: Colors.white, size: iconSize);

    return IconButton(
      onPressed: (){},
      icon: icon,
      tooltip: threatCategory.categoryName,
      style: buttonStyle,
    );
  }
}

