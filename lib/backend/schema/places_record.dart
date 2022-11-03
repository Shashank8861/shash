import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'places_record.g.dart';

abstract class PlacesRecord
    implements Built<PlacesRecord, PlacesRecordBuilder> {
  static Serializer<PlacesRecord> get serializer => _$placesRecordSerializer;

  @nullable
  String get placename;

  @nullable
  @BuiltValueField(wireName: 'famous_food')
  String get famousFood;

  @nullable
  @BuiltValueField(wireName: 'famous_thing_to_takehome')
  String get famousThingToTakehome;

  @nullable
  @BuiltValueField(wireName: 'famous_try')
  String get famousTry;

  @nullable
  @BuiltValueField(wireName: 'place_type')
  String get placeType;

  @nullable
  String get location;

  @nullable
  @BuiltValueField(wireName: 'food_hotels')
  BuiltList<String> get foodHotels;

  @nullable
  @BuiltValueField(wireName: 'stay_hotels')
  BuiltList<String> get stayHotels;

  @nullable
  BuiltList<String> get places;

  @nullable
  @BuiltValueField(wireName: 'guides_phone_number')
  BuiltList<String> get guidesPhoneNumber;

  @nullable
  @BuiltValueField(wireName: 'vehicles_phone')
  BuiltList<String> get vehiclesPhone;

  @nullable
  BuiltList<String> get photos;

  @nullable
  LatLng get id;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PlacesRecordBuilder builder) => builder
    ..placename = ''
    ..famousFood = ''
    ..famousThingToTakehome = ''
    ..famousTry = ''
    ..placeType = ''
    ..location = ''
    ..foodHotels = ListBuilder()
    ..stayHotels = ListBuilder()
    ..places = ListBuilder()
    ..guidesPhoneNumber = ListBuilder()
    ..vehiclesPhone = ListBuilder()
    ..photos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlacesRecord._();
  factory PlacesRecord([void Function(PlacesRecordBuilder) updates]) =
      _$PlacesRecord;

  static PlacesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlacesRecordData({
  String placename,
  String famousFood,
  String famousThingToTakehome,
  String famousTry,
  String placeType,
  String location,
  LatLng id,
}) =>
    serializers.toFirestore(
        PlacesRecord.serializer,
        PlacesRecord((p) => p
          ..placename = placename
          ..famousFood = famousFood
          ..famousThingToTakehome = famousThingToTakehome
          ..famousTry = famousTry
          ..placeType = placeType
          ..location = location
          ..foodHotels = null
          ..stayHotels = null
          ..places = null
          ..guidesPhoneNumber = null
          ..vehiclesPhone = null
          ..photos = null
          ..id = id));
