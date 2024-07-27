import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:jokee_single_serving/data/data.dart';
import 'package:jokee_single_serving/domain/domain.dart';
import 'package:jokee_single_serving/presentation/controllers/controllers.dart';

import 'package:realm/realm.dart';

class DependencyCreator {
  void init() {
    Get.put(_initialRealm(), permanent: true);
    Get.lazyPut(() => JokeRepository(Get.find()));
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => VoteRepository(Get.find()));
    Get.lazyPut(() => GenerateDataUseCase(Get.find(), Get.find()));
    _bindingDependencies();
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

  void _bindingDependencies() {
    HomeBinding().dependencies();
  }
}
