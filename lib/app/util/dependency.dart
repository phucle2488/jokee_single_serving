import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:jokee_single_serving/data/local_database/joke/joke.dart';
import 'package:jokee_single_serving/data/local_database/user/user.dart';
import 'package:jokee_single_serving/data/local_database/vote/vote.dart';
import 'package:jokee_single_serving/domain/repositories/joke_repository.dart';
import 'package:jokee_single_serving/domain/repositories/user_repository.dart';
import 'package:jokee_single_serving/domain/usecases/generate_data_usecase.dart';

import 'package:realm/realm.dart';

class DependencyCreator {
  void init() {
    Get.put(_initialRealm());
    Get.put(JokeRepository(Get.find()));
    Get.put(UserRepository(Get.find()));
    Get.put(GenerateDataUseCase(Get.find(), Get.find()));
  }

  Realm _initialRealm() {
    final config = Configuration.local(
      [
        Users.schema,
        Joke.schema,
        Vote.schema,
      ],
      migrationCallback: (migration, oldSchemaVersion) async {},
    );
    if (kDebugMode) {
      print(config.path);
    }
    return Realm(config);
  }
}
