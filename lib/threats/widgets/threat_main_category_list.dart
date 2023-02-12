import 'package:flutter/cupertino.dart';
import 'package:threats_map_mobile/threats/models/threat_category.dart';
import 'package:threats_map_mobile/threats/widgets/threat_main_category_list_item.dart';

class ThreatMainCategoryList extends StatelessWidget {
  ThreatMainCategoryList({Key? key}) : super(key: key);

  final List<ThreatCategory> _threatCategoryList = [
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'warning_rounded'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'add_shopping_cart'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'account_tree'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'dangerous'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'escalator'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'escalator'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'add_shopping_cart'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'escalator'),
    ThreatCategory('123-asdf', 'Tires', true, null, false, 'escalator'),
  ];

  Widget _itemBuilder(int index) {
    return ThreatMainCategoryListItem(threatCategory: _threatCategoryList[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      spacing: 20.0,
      runAlignment: WrapAlignment.start,
      alignment: WrapAlignment.spaceEvenly,
      children: List.generate(
        _threatCategoryList.length,
        _itemBuilder,
      ),
    );
  }
}
