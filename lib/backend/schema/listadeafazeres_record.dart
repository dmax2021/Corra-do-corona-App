import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listadeafazeres_record.g.dart';

abstract class ListadeafazeresRecord
    implements Built<ListadeafazeresRecord, ListadeafazeresRecordBuilder> {
  static Serializer<ListadeafazeresRecord> get serializer =>
      _$listadeafazeresRecordSerializer;

  @nullable
  DateTime get criardata;

  @nullable
  String get criarnome;

  @nullable
  String get criardescricao;

  @nullable
  bool get criarestatus;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ListadeafazeresRecordBuilder builder) =>
      builder
        ..criarnome = ''
        ..criardescricao = ''
        ..criarestatus = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listadeafazeres');

  static Stream<ListadeafazeresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ListadeafazeresRecord._();
  factory ListadeafazeresRecord(
          [void Function(ListadeafazeresRecordBuilder) updates]) =
      _$ListadeafazeresRecord;

  static ListadeafazeresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createListadeafazeresRecordData({
  DateTime criardata,
  String criarnome,
  String criardescricao,
  bool criarestatus,
}) =>
    serializers.toFirestore(
        ListadeafazeresRecord.serializer,
        ListadeafazeresRecord((l) => l
          ..criardata = criardata
          ..criarnome = criarnome
          ..criardescricao = criardescricao
          ..criarestatus = criarestatus));
