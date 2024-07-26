import 'package:jokee_single_serving/app/base/base_repository.dart';
import 'package:jokee_single_serving/data/local_database/joke/joke.dart';

class JokeRepository extends BaseRepository<Joke> {
  JokeRepository(super.realm);

  @override
  Future<void> bulkInsert(List<Joke> value) async {
    await realm.writeAsync(() => realm.addAll(value, update: true));
  }
}
