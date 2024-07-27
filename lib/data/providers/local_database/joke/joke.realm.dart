// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Joke extends _Joke with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Joke(
    String id, {
    String? content = '',
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Joke>({
        'content': '',
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'content', content);
  }

  Joke._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get content =>
      RealmObjectBase.get<String>(this, 'content') as String?;
  @override
  set content(String? value) => RealmObjectBase.set(this, 'content', value);

  @override
  Stream<RealmObjectChanges<Joke>> get changes =>
      RealmObjectBase.getChanges<Joke>(this);

  @override
  Stream<RealmObjectChanges<Joke>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Joke>(this, keyPaths);

  @override
  Joke freeze() => RealmObjectBase.freezeObject<Joke>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'content': content.toEJson(),
    };
  }

  static EJsonValue _toEJson(Joke value) => value.toEJson();
  static Joke _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'content': EJsonValue content,
      } =>
        Joke(
          fromEJson(id),
          content: fromEJson(content),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Joke._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Joke, 'Joke', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('content', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
