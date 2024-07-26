import 'package:jokee_single_serving/app/base/base_local_database.dart';
import 'package:realm/realm.dart';

abstract class BaseRepository<T extends BaseLocalDatabase> {
  BaseRepository(this.realm);

  final Realm realm;

  Future<void> bulkInsert(List<T> value);
}
