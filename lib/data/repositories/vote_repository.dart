import 'package:jokee_single_serving/app/base/base_repository.dart';
import 'package:jokee_single_serving/data/data.dart';

class VoteRepository extends BaseRepository<Vote> {
  VoteRepository(super.realm);

  @override
  Future<void> bulkInsert(List<Vote> value) async {
    await realm.writeAsync(() => realm.addAll(value, update: true));
  }
}
