import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'map_image_record.g.dart';

abstract class MapImageRecord
    implements Built<MapImageRecord, MapImageRecordBuilder> {
  static Serializer<MapImageRecord> get serializer =>
      _$mapImageRecordSerializer;

  @nullable
  DocumentReference get placeLink;

  @nullable
  String get mapUploaded;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MapImageRecordBuilder builder) =>
      builder..mapUploaded = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('map_image');

  static Stream<MapImageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MapImageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MapImageRecord._();
  factory MapImageRecord([void Function(MapImageRecordBuilder) updates]) =
      _$MapImageRecord;

  static MapImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMapImageRecordData({
  DocumentReference placeLink,
  String mapUploaded,
}) =>
    serializers.toFirestore(
        MapImageRecord.serializer,
        MapImageRecord((m) => m
          ..placeLink = placeLink
          ..mapUploaded = mapUploaded));
