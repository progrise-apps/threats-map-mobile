import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threats_map_mobile/threats/widgets/threat_main_category_list.dart';

class ThreatMainCategoryMenu extends StatelessWidget {
  const ThreatMainCategoryMenu({Key? key}) : super(key: key);// List<Map<ThreatCategory, dynamic>> threatCategoryList = <Map<ThreatCategory, dynamic>>

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(
        minHeight: 120.0,
      ),
      decoration: const BoxDecoration(color: Colors.black54),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 12.0, top: 20.0, bottom: 50.0),
        child: ThreatMainCategoryList(),
      ),
    );
  }
}
