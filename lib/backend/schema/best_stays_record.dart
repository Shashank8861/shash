import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'best_stays_record.g.dart';

abstract class BestStaysRecord
    implements Built<BestStaysRecord, BestStaysRecordBuilder> {
  static Serializer<BestStaysRecord> get serializer =>
      _$bestStaysRecordSerializer;

  @nullable
  String get stayName;

  @nullable
  double get staysavgrating;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: 'StayLinkPlace')
  DocumentReference get stayLinkPlace;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BestStaysRecordBuilder builder) => builder
    ..stayName = ''
    ..staysavgrating = 0.0
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bestStays');

  static Stream<BestStaysRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BestStaysRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BestStaysRecord._();
  factory BestStaysRecord([void Function(BestStaysRecordBuilder) updates]) =
      _$BestStaysRecord;

  static BestStaysRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBestStaysRecordData({
  String stayName,
  double staysavgrating,
  String imageUrl,
  DocumentReference stayLinkPlace,
}) =>
    serializers.toFirestore(
        BestStaysRecord.serializer,
        BestStaysRecord((b) => b
          ..stayName = stayName
          ..staysavgrating = staysavgrating
          ..imageUrl = imageUrl
          ..stayLinkPlace = stayLinkPlace));
