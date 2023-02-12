import 'package:threats_map_mobile/threats/dao/threats_dao.dart';

class ThreatsController {
  ThreatsDao? _threatsDao;

  constructor() {
    ThreatsDao _threatsDao = ThreatsDao();
  }

  // ThreatsController() {
  //   ThreatsDao threatsDao = ThreatsDao.getInstance();
  // }

  // List<ThreatCategory> get _threatsDao?.threatCategoryList;
}
