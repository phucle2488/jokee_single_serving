import 'package:jokee_single_serving/app/base/base_local_database.dart';
import 'package:realm/realm.dart'; // import realm package

part 'vote.realm.dart';

@RealmModel()
class _Vote implements BaseLocalDatabase {
  @PrimaryKey()
  late String id;
  String userId = '';
  String jokeId = '';
  bool? isFun;
}
