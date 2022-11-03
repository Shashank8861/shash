import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hotel_names_record.g.dart';

abstract class HotelNamesRecord
    implements Built<HotelNamesRecord, HotelNamesRecordBuilder> {
  static Serializer<HotelNamesRecord> get serializer =>
      _$hotelNamesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Hotel_name')
  String get hotelName;

  @nullable
  @BuiltValueField(wireName: 'average_rating')
  double get averageRating;

  @nullable
  @BuiltValueField(wireName: 'place_id')
  DocumentReference get placeId;

  @nullable
  @BuiltValueField(wireName: 'hotel_image')
  String get hotelImage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HotelNamesRecordBuilder builder) => builder
    ..hotelName = ''
    ..averageRating = 0.0
    ..hotelImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hotel_names');

  static Stream<HotelNamesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HotelNamesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HotelNamesRecord._();
  factory HotelNamesRecord([void Function(HotelNamesRecordBuilder) updates]) =
      _$HotelNamesRecord;

  static HotelNamesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHotelNamesRecordData({
  String hotelName,
  double averageRating,
  DocumentReference placeId,
  String hotelImage,
}) =>
    serializers.toFirestore(
        HotelNamesRecord.serializer,
        HotelNamesRecord((h) => h
          ..hotelName = hotelName
          ..averageRating = averageRating
          ..placeId = placeId
          ..hotelImage = hotelImage));
