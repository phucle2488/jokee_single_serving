import 'package:jokee_single_serving/app/base/base_repository.dart';
import 'package:jokee_single_serving/data/local_database/user/user.dart';

class UserRepository extends BaseRepository<Users> {
  UserRepository(super.realm);

  @override
  Future<void> bulkInsert(List<Users> value) async {
    await realm.writeAsync(() => realm.addAll(value, update: true));
  }
}
