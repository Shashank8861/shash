// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlacesRecord> _$placesRecordSerializer =
    new _$PlacesRecordSerializer();

class _$PlacesRecordSerializer implements StructuredSerializer<PlacesRecord> {
  @override
  final Iterable<Type> types = const [PlacesRecord, _$PlacesRecord];
  @override
  final String wireName = 'PlacesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PlacesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.placename;
    if (value != null) {
      result
        ..add('placename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.famousFood;
    if (value != null) {
      result
        ..add('famous_food')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.famousThingToTakehome;
    if (value != null) {
      result
        ..add('famous_thing_to_takehome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.famousTry;
    if (value != null) {
      result
        ..add('famous_try')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeType;
    if (value != null) {
      result
        ..add('place_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foodHotels;
    if (value != null) {
      result
        ..add('food_hotels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.stayHotels;
    if (value != null) {
      result
        ..add('stay_hotels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.places;
    if (value != null) {
      result
        ..add('places')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.guidesPhoneNumber;
    if (value != null) {
      result
        ..add('guides_phone_number')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.vehiclesPhone;
    if (value != null) {
      result
        ..add('vehicles_phone')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  PlacesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlacesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'placename':
          result.placename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'famous_food':
          result.famousFood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'famous_thing_to_takehome':
          result.famousThingToTakehome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'famous_try':
          result.famousTry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'place_type':
          result.placeType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'food_hotels':
          result.foodHotels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'stay_hotels':
          result.stayHotels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'places':
          result.places.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'guides_phone_number':
          result.guidesPhoneNumber.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'vehicles_phone':
          result.vehiclesPhone.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$PlacesRecord extends PlacesRecord {
  @override
  final String placename;
  @override
  final String famousFood;
  @override
  final String famousThingToTakehome;
  @override
  final String famousTry;
  @override
  final String placeType;
  @override
  final String location;
  @override
  final BuiltList<String> foodHotels;
  @override
  final BuiltList<String> stayHotels;
  @override
  final BuiltList<String> places;
  @override
  final BuiltList<String> guidesPhoneNumber;
  @override
  final BuiltList<String> vehiclesPhone;
  @override
  final BuiltList<String> photos;
  @override
  final LatLng id;
  @override
  final DocumentReference<Object> reference;

  factory _$PlacesRecord([void Function(PlacesRecordBuilder) updates]) =>
      (new PlacesRecordBuilder()..update(updates)).build();

  _$PlacesRecord._(
      {this.placename,
      this.famousFood,
      this.famousThingToTakehome,
      this.famousTry,
      this.placeType,
      this.location,
      this.foodHotels,
      this.stayHotels,
      this.places,
      this.guidesPhoneNumber,
      this.vehiclesPhone,
      this.photos,
      this.id,
      this.reference})
      : super._();

  @override
  PlacesRecord rebuild(void Function(PlacesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacesRecordBuilder toBuilder() => new PlacesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacesRecord &&
        placename == other.placename &&
        famousFood == other.famousFood &&
        famousThingToTakehome == other.famousThingToTakehome &&
        famousTry == other.famousTry &&
        placeType == other.placeType &&
        location == other.location &&
        foodHotels == other.foodHotels &&
        stayHotels == other.stayHotels &&
        places == other.places &&
        guidesPhoneNumber == other.guidesPhoneNumber &&
        vehiclesPhone == other.vehiclesPhone &&
        photos == other.photos &&
        id == other.id &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            placename.hashCode),
                                                        famousFood.hashCode),
                                                    famousThingToTakehome
                                                        .hashCode),
                                                famousTry.hashCode),
                                            placeType.hashCode),
                                        location.hashCode),
                                    foodHotels.hashCode),
                                stayHotels.hashCode),
                            places.hashCode),
                        guidesPhoneNumber.hashCode),
                    vehiclesPhone.hashCode),
                photos.hashCode),
            id.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlacesRecord')
          ..add('placename', placename)
          ..add('famousFood', famousFood)
          ..add('famousThingToTakehome', famousThingToTakehome)
          ..add('famousTry', famousTry)
          ..add('placeType', placeType)
          ..add('location', location)
          ..add('foodHotels', foodHotels)
          ..add('stayHotels', stayHotels)
          ..add('places', places)
          ..add('guidesPhoneNumber', guidesPhoneNumber)
          ..add('vehiclesPhone', vehiclesPhone)
          ..add('photos', photos)
          ..add('id', id)
          ..add('reference', reference))
        .toString();
  }
}

class PlacesRecordBuilder
    implements Builder<PlacesRecord, PlacesRecordBuilder> {
  _$PlacesRecord _$v;

  String _placename;
  String get placename => _$this._placename;
  set placename(String placename) => _$this._placename = placename;

  String _famousFood;
  String get famousFood => _$this._famousFood;
  set famousFood(String famousFood) => _$this._famousFood = famousFood;

  String _famousThingToTakehome;
  String get famousThingToTakehome => _$this._famousThingToTakehome;
  set famousThingToTakehome(String famousThingToTakehome) =>
      _$this._famousThingToTakehome = famousThingToTakehome;

  String _famousTry;
  String get famousTry => _$this._famousTry;
  set famousTry(String famousTry) => _$this._famousTry = famousTry;

  String _placeType;
  String get placeType => _$this._placeType;
  set placeType(String placeType) => _$this._placeType = placeType;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  ListBuilder<String> _foodHotels;
  ListBuilder<String> get foodHotels =>
      _$this._foodHotels ??= new ListBuilder<String>();
  set foodHotels(ListBuilder<String> foodHotels) =>
      _$this._foodHotels = foodHotels;

  ListBuilder<String> _stayHotels;
  ListBuilder<String> get stayHotels =>
      _$this._stayHotels ??= new ListBuilder<String>();
  set stayHotels(ListBuilder<String> stayHotels) =>
      _$this._stayHotels = stayHotels;

  ListBuilder<String> _places;
  ListBuilder<String> get places =>
      _$this._places ??= new ListBuilder<String>();
  set places(ListBuilder<String> places) => _$this._places = places;

  ListBuilder<String> _guidesPhoneNumber;
  ListBuilder<String> get guidesPhoneNumber =>
      _$this._guidesPhoneNumber ??= new ListBuilder<String>();
  set guidesPhoneNumber(ListBuilder<String> guidesPhoneNumber) =>
      _$this._guidesPhoneNumber = guidesPhoneNumber;

  ListBuilder<String> _vehiclesPhone;
  ListBuilder<String> get vehiclesPhone =>
      _$this._vehiclesPhone ??= new ListBuilder<String>();
  set vehiclesPhone(ListBuilder<String> vehiclesPhone) =>
      _$this._vehiclesPhone = vehiclesPhone;

  ListBuilder<String> _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String> photos) => _$this._photos = photos;

  LatLng _id;
  LatLng get id => _$this._id;
  set id(LatLng id) => _$this._id = id;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PlacesRecordBuilder() {
    PlacesRecord._initializeBuilder(this);
  }

  PlacesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placename = $v.placename;
      _famousFood = $v.famousFood;
      _famousThingToTakehome = $v.famousThingToTakehome;
      _famousTry = $v.famousTry;
      _placeType = $v.placeType;
      _location = $v.location;
      _foodHotels = $v.foodHotels?.toBuilder();
      _stayHotels = $v.stayHotels?.toBuilder();
      _places = $v.places?.toBuilder();
      _guidesPhoneNumber = $v.guidesPhoneNumber?.toBuilder();
      _vehiclesPhone = $v.vehiclesPhone?.toBuilder();
      _photos = $v.photos?.toBuilder();
      _id = $v.id;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacesRecord;
  }

  @override
  void update(void Function(PlacesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlacesRecord build() {
    _$PlacesRecord _$result;
    try {
      _$result = _$v ??
          new _$PlacesRecord._(
              placename: placename,
              famousFood: famousFood,
              famousThingToTakehome: famousThingToTakehome,
              famousTry: famousTry,
              placeType: placeType,
              location: location,
              foodHotels: _foodHotels?.build(),
              stayHotels: _stayHotels?.build(),
              places: _places?.build(),
              guidesPhoneNumber: _guidesPhoneNumber?.build(),
              vehiclesPhone: _vehiclesPhone?.build(),
              photos: _photos?.build(),
              id: id,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'foodHotels';
        _foodHotels?.build();
        _$failedField = 'stayHotels';
        _stayHotels?.build();
        _$failedField = 'places';
        _places?.build();
        _$failedField = 'guidesPhoneNumber';
        _guidesPhoneNumber?.build();
        _$failedField = 'vehiclesPhone';
        _vehiclesPhone?.build();
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlacesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
