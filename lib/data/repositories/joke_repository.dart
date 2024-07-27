import 'package:jokee_single_serving/app/base/base_repository.dart';
import 'package:jokee_single_serving/data/providers/local_database/local_database.dart';

class JokeRepository extends BaseRepository<Joke> {
  JokeRepository(super.realm);

  @override
  Future<void> bulkInsert(List<Joke> value) async {
    await realm.writeAsync(() => realm.addAll(value, update: true));
  }
}
