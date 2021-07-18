import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cidade_record.g.dart';

abstract class CidadeRecord
    implements Built<CidadeRecord, CidadeRecordBuilder> {
  static Serializer<CidadeRecord> get serializer => _$cidadeRecordSerializer;

  @nullable
  BuiltList<String> get nome;

  @nullable
  BuiltList<LatLng> get localizacao;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CidadeRecordBuilder builder) => builder
    ..nome = ListBuilder()
    ..localizacao = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cidade');

  static Stream<CidadeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CidadeRecord._();
  factory CidadeRecord([void Function(CidadeRecordBuilder) updates]) =
      _$CidadeRecord;

  static CidadeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCidadeRecordData() => serializers.toFirestore(
    CidadeRecord.serializer,
    CidadeRecord((c) => c
      ..nome = null
      ..localizacao = null));
