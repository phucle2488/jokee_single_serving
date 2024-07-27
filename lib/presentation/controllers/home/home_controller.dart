import 'dart:async';

import 'package:get/get.dart';
import 'package:jokee_single_serving/data/data.dart';
import 'package:jokee_single_serving/domain/domain.dart';

class HomeController extends GetxController {
  HomeController(this.getContentsUseCase, this.voteRepository);

  final GetContentsUseCase getContentsUseCase;
  final VoteRepository voteRepository;

  //dynamic state
  var content = Rx<String>('');

  StreamSubscription<JokeData?>? _listenJokeData;
  var jokeId = '';

  void loadData() {
    _listenJokeData = getContentsUseCase.getJokeStream().listen(
      (event) {
        jokeId = event?.id ?? '';
        content.value = event?.content ?? 'That\'s all the jokes; for today! Come back another day!';
      },
    );
  }

  void onVote({bool isFun = true}) {
    if (jokeId.isNotEmpty) {
      final vote = [Vote(DateTime.now().millisecondsSinceEpoch.toString(), isFun: isFun, jokeId: jokeId, userId: 'u1')];
      voteRepository.bulkInsert(vote);
    }
  }

  void disposeStream() {
    _listenJokeData?.cancel();
  }
}
