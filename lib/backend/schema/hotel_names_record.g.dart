// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_names_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HotelNamesRecord> _$hotelNamesRecordSerializer =
    new _$HotelNamesRecordSerializer();

class _$HotelNamesRecordSerializer
    implements StructuredSerializer<HotelNamesRecord> {
  @override
  final Iterable<Type> types = const [HotelNamesRecord, _$HotelNamesRecord];
  @override
  final String wireName = 'HotelNamesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HotelNamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.hotelName;
    if (value != null) {
      result
        ..add('Hotel_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.averageRating;
    if (value != null) {
      result
        ..add('average_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.placeId;
    if (value != null) {
      result
        ..add('place_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.hotelImage;
    if (value != null) {
      result
        ..add('hotel_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  HotelNamesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HotelNamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Hotel_name':
          result.hotelName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'average_rating':
          result.averageRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'place_id':
          result.placeId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'hotel_image':
          result.hotelImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$HotelNamesRecord extends HotelNamesRecord {
  @override
  final String hotelName;
  @override
  final double averageRating;
  @override
  final DocumentReference<Object> placeId;
  @override
  final String hotelImage;
  @override
  final DocumentReference<Object> reference;

  factory _$HotelNamesRecord(
          [void Function(HotelNamesRecordBuilder) updates]) =>
      (new HotelNamesRecordBuilder()..update(updates)).build();

  _$HotelNamesRecord._(
      {this.hotelName,
      this.averageRating,
      this.placeId,
      this.hotelImage,
      this.reference})
      : super._();

  @override
  HotelNamesRecord rebuild(void Function(HotelNamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HotelNamesRecordBuilder toBuilder() =>
      new HotelNamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HotelNamesRecord &&
        hotelName == other.hotelName &&
        averageRating == other.averageRating &&
        placeId == other.placeId &&
        hotelImage == other.hotelImage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, hotelName.hashCode), averageRating.hashCode),
                placeId.hashCode),
            hotelImage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HotelNamesRecord')
          ..add('hotelName', hotelName)
          ..add('averageRating', averageRating)
          ..add('placeId', placeId)
          ..add('hotelImage', hotelImage)
          ..add('reference', reference))
        .toString();
  }
}

class HotelNamesRecordBuilder
    implements Builder<HotelNamesRecord, HotelNamesRecordBuilder> {
  _$HotelNamesRecord _$v;

  String _hotelName;
  String get hotelName => _$this._hotelName;
  set hotelName(String hotelName) => _$this._hotelName = hotelName;

  double _averageRating;
  double get averageRating => _$this._averageRating;
  set averageRating(double averageRating) =>
      _$this._averageRating = averageRating;

  DocumentReference<Object> _placeId;
  DocumentReference<Object> get placeId => _$this._placeId;
  set placeId(DocumentReference<Object> placeId) => _$this._placeId = placeId;

  String _hotelImage;
  String get hotelImage => _$this._hotelImage;
  set hotelImage(String hotelImage) => _$this._hotelImage = hotelImage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HotelNamesRecordBuilder() {
    HotelNamesRecord._initializeBuilder(this);
  }

  HotelNamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hotelName = $v.hotelName;
      _averageRating = $v.averageRating;
      _placeId = $v.placeId;
      _hotelImage = $v.hotelImage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HotelNamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HotelNamesRecord;
  }

  @override
  void update(void Function(HotelNamesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HotelNamesRecord build() {
    final _$result = _$v ??
        new _$HotelNamesRecord._(
            hotelName: hotelName,
            averageRating: averageRating,
            placeId: placeId,
            hotelImage: hotelImage,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
