import 'dart:async';

import 'package:jokee_single_serving/data/data.dart';
import 'package:jokee_single_serving/domain/entities/joke_data.dart';
import 'package:rxdart/rxdart.dart';

class GetContentsUseCase {
  GetContentsUseCase(this._jokeRepository, this._userRepository, this._voteRepository);

  final JokeRepository _jokeRepository;
  final UserRepository _userRepository;
  final VoteRepository _voteRepository;

  Stream<JokeData?> getJokeStream({String? userId}) {
    return Rx.combineLatest3(
      _jokeRepository.selectAll().changes,
      _userRepository.selectAll().changes,
      _voteRepository.selectAll().changes,
      (jokes, users, votes) {
        final jokeList = jokes.results;
        final userList = users.results;
        final votesList = votes.results;
        final currentUserId = userId ?? userList.firstOrNull?.id;
        if (currentUserId != null) {
          final votedJokeList = votesList.where((element) => element.isFun != null && element.userId == currentUserId).map((e) => e.jokeId).toList();
          final jokeDataList = jokeList.where((element) => !votedJokeList.contains(element.id)).map(JokeData.fromJoke).toList();
          return jokeDataList.firstOrNull;
        }
        return null;
      },
    );
  }
}
