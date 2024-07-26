import 'package:jokee_single_serving/app/base/base_local_database.dart';
import 'package:realm/realm.dart'; // import realm package

part 'joke.realm.dart';

@RealmModel()
class _Joke implements BaseLocalDatabase {
  @PrimaryKey()
  late String id;
  String? content = '';
}
