import 'package:threats_map_mobile/threats/models/threat_category.dart';

class ThreatsDao {
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

  List<ThreatCategory> get threatCategoryList => _threatCategoryList;

  static ThreatsDao getInstance() {
    return ThreatsDao();
  }
}


// class HomePageController extends ChangeNotifier {
//   List _data;
//
//   List get data => _data;
//
//   set data(List value) {
//     _data = value;
//     notifyListeners();
//   }
// }
//
// class HomePageDAO {
//   static Future<List> fetchData() async {
//     final response =
//     await http.get('https://jsonplaceholder.typicode.com/posts');
//
//     if (response.statusCode == 200) {
//       List data = json.decode(response.body);
//       return data;
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }