import 'package:jokee_single_serving/app/base/base_repository.dart';
import 'package:jokee_single_serving/data/data.dart';

abstract class JokeRepository extends BaseRepository<Joke> {
  JokeRepository(super.realm);
}
