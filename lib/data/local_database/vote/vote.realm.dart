// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Vote extends _Vote with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Vote(
    String id, {
    String userId = '',
    String jokeId = '',
    bool? isFun,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Vote>({
        'userId': '',
        'jokeId': '',
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'userId', userId);
    RealmObjectBase.set(this, 'jokeId', jokeId);
    RealmObjectBase.set(this, 'isFun', isFun);
  }

  Vote._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get userId => RealmObjectBase.get<String>(this, 'userId') as String;
  @override
  set userId(String value) => RealmObjectBase.set(this, 'userId', value);

  @override
  String get jokeId => RealmObjectBase.get<String>(this, 'jokeId') as String;
  @override
  set jokeId(String value) => RealmObjectBase.set(this, 'jokeId', value);

  @override
  bool? get isFun => RealmObjectBase.get<bool>(this, 'isFun') as bool?;
  @override
  set isFun(bool? value) => RealmObjectBase.set(this, 'isFun', value);

  @override
  Stream<RealmObjectChanges<Vote>> get changes =>
      RealmObjectBase.getChanges<Vote>(this);

  @override
  Stream<RealmObjectChanges<Vote>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Vote>(this, keyPaths);

  @override
  Vote freeze() => RealmObjectBase.freezeObject<Vote>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'userId': userId.toEJson(),
      'jokeId': jokeId.toEJson(),
      'isFun': isFun.toEJson(),
    };
  }

  static EJsonValue _toEJson(Vote value) => value.toEJson();
  static Vote _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'userId': EJsonValue userId,
        'jokeId': EJsonValue jokeId,
        'isFun': EJsonValue isFun,
      } =>
        Vote(
          fromEJson(id),
          userId: fromEJson(userId),
          jokeId: fromEJson(jokeId),
          isFun: fromEJson(isFun),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Vote._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Vote, 'Vote', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('userId', RealmPropertyType.string),
      SchemaProperty('jokeId', RealmPropertyType.string),
      SchemaProperty('isFun', RealmPropertyType.bool, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
