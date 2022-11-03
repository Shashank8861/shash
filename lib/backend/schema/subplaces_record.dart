import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subplaces_record.g.dart';

abstract class SubplacesRecord
    implements Built<SubplacesRecord, SubplacesRecordBuilder> {
  static Serializer<SubplacesRecord> get serializer =>
      _$subplacesRecordSerializer;

  @nullable
  String get subplacename;

  @nullable
  DocumentReference get linktomainplace;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SubplacesRecordBuilder builder) => builder
    ..subplacename = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subplaces');

  static Stream<SubplacesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SubplacesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SubplacesRecord._();
  factory SubplacesRecord([void Function(SubplacesRecordBuilder) updates]) =
      _$SubplacesRecord;

  static SubplacesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSubplacesRecordData({
  String subplacename,
  DocumentReference linktomainplace,
  String photoUrl,
}) =>
    serializers.toFirestore(
        SubplacesRecord.serializer,
        SubplacesRecord((s) => s
          ..subplacename = subplacename
          ..linktomainplace = linktomainplace
          ..photoUrl = photoUrl));
