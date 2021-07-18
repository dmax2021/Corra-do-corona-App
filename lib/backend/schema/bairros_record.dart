import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bairros_record.g.dart';

abstract class BairrosRecord
    implements Built<BairrosRecord, BairrosRecordBuilder> {
  static Serializer<BairrosRecord> get serializer => _$bairrosRecordSerializer;

  @nullable
  BuiltList<String> get nome;

  @nullable
  BuiltList<LatLng> get localizacao;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BairrosRecordBuilder builder) => builder
    ..nome = ListBuilder()
    ..localizacao = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bairros');

  static Stream<BairrosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BairrosRecord._();
  factory BairrosRecord([void Function(BairrosRecordBuilder) updates]) =
      _$BairrosRecord;

  static BairrosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createBairrosRecordData() => serializers.toFirestore(
    BairrosRecord.serializer,
    BairrosRecord((b) => b
      ..nome = null
      ..localizacao = null));
