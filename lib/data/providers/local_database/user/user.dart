import 'package:jokee_single_serving/app/base/base_local_database.dart';
import 'package:realm/realm.dart';

part 'user.realm.dart';

@RealmModel()
class _Users implements BaseLocalDatabase {
  @PrimaryKey()
  late String id;
  String? name = '';
}
