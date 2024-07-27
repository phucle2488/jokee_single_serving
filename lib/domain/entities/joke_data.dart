import 'package:jokee_single_serving/data/data.dart';

class JokeData {
  String id;
  String content;

  JokeData(this.id, this.content);

  factory JokeData.fromJoke(Joke joke) => JokeData(joke.id, joke.content ?? '');

  Joke toJoke() => Joke(id, content: content);
}
