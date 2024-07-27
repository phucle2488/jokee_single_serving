import 'package:realm/realm.dart';

abstract class BaseRepository<T extends RealmObject> {
  BaseRepository(this.realm);

  final Realm realm;

  Future<void> bulkInsert(List<T> value);

  RealmResults<T> selectAll() {
    return realm.all<T>();
  }
}
