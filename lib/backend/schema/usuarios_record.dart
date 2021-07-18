import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_record.g.dart';

abstract class UsuariosRecord
    implements Built<UsuariosRecord, UsuariosRecordBuilder> {
  static Serializer<UsuariosRecord> get serializer =>
      _$usuariosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Email')
  String get email;

  @nullable
  @BuiltValueField(wireName: 'Senha')
  String get senha;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuariosRecordBuilder builder) => builder
    ..email = ''
    ..senha = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuariosRecord._();
  factory UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =
      _$UsuariosRecord;

  static UsuariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsuariosRecordData({
  String email,
  String senha,
}) =>
    serializers.toFirestore(
        UsuariosRecord.serializer,
        UsuariosRecord((u) => u
          ..email = email
          ..senha = senha));
