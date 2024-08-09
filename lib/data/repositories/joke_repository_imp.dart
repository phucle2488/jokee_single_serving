import 'package:jokee_single_serving/data/providers/local_database/local_database.dart';
import 'package:jokee_single_serving/domain/domain.dart';

class JokeRepositoryImp extends JokeRepository {
  JokeRepositoryImp(super.realm);

  @override
  Future<void> bulkInsert(List<Joke> value) async {
    await realm.writeAsync(() => realm.addAll(value, update: true));
  }
}
