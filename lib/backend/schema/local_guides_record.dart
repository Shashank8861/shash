import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'local_guides_record.g.dart';

abstract class LocalGuidesRecord
    implements Built<LocalGuidesRecord, LocalGuidesRecordBuilder> {
  static Serializer<LocalGuidesRecord> get serializer =>
      _$localGuidesRecordSerializer;

  @nullable
  String get guidename;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  int get fees;

  @nullable
  @BuiltValueField(wireName: 'GuideLinkPlace')
  DocumentReference get guideLinkPlace;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocalGuidesRecordBuilder builder) => builder
    ..guidename = ''
    ..phoneNumber = ''
    ..fees = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('local_guides');

  static Stream<LocalGuidesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocalGuidesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocalGuidesRecord._();
  factory LocalGuidesRecord([void Function(LocalGuidesRecordBuilder) updates]) =
      _$LocalGuidesRecord;

  static LocalGuidesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocalGuidesRecordData({
  String guidename,
  String phoneNumber,
  int fees,
  DocumentReference guideLinkPlace,
}) =>
    serializers.toFirestore(
        LocalGuidesRecord.serializer,
        LocalGuidesRecord((l) => l
          ..guidename = guidename
          ..phoneNumber = phoneNumber
          ..fees = fees
          ..guideLinkPlace = guideLinkPlace));
