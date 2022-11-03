// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_image_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapImageRecord> _$mapImageRecordSerializer =
    new _$MapImageRecordSerializer();

class _$MapImageRecordSerializer
    implements StructuredSerializer<MapImageRecord> {
  @override
  final Iterable<Type> types = const [MapImageRecord, _$MapImageRecord];
  @override
  final String wireName = 'MapImageRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MapImageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.placeLink;
    if (value != null) {
      result
        ..add('placeLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.mapUploaded;
    if (value != null) {
      result
        ..add('mapUploaded')
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
  MapImageRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapImageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'placeLink':
          result.placeLink = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'mapUploaded':
          result.mapUploaded = serializers.deserialize(value,
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

class _$MapImageRecord extends MapImageRecord {
  @override
  final DocumentReference<Object> placeLink;
  @override
  final String mapUploaded;
  @override
  final DocumentReference<Object> reference;

  factory _$MapImageRecord([void Function(MapImageRecordBuilder) updates]) =>
      (new MapImageRecordBuilder()..update(updates)).build();

  _$MapImageRecord._({this.placeLink, this.mapUploaded, this.reference})
      : super._();

  @override
  MapImageRecord rebuild(void Function(MapImageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapImageRecordBuilder toBuilder() =>
      new MapImageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapImageRecord &&
        placeLink == other.placeLink &&
        mapUploaded == other.mapUploaded &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, placeLink.hashCode), mapUploaded.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MapImageRecord')
          ..add('placeLink', placeLink)
          ..add('mapUploaded', mapUploaded)
          ..add('reference', reference))
        .toString();
  }
}

class MapImageRecordBuilder
    implements Builder<MapImageRecord, MapImageRecordBuilder> {
  _$MapImageRecord _$v;

  DocumentReference<Object> _placeLink;
  DocumentReference<Object> get placeLink => _$this._placeLink;
  set placeLink(DocumentReference<Object> placeLink) =>
      _$this._placeLink = placeLink;

  String _mapUploaded;
  String get mapUploaded => _$this._mapUploaded;
  set mapUploaded(String mapUploaded) => _$this._mapUploaded = mapUploaded;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MapImageRecordBuilder() {
    MapImageRecord._initializeBuilder(this);
  }

  MapImageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeLink = $v.placeLink;
      _mapUploaded = $v.mapUploaded;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapImageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapImageRecord;
  }

  @override
  void update(void Function(MapImageRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapImageRecord build() {
    final _$result = _$v ??
        new _$MapImageRecord._(
            placeLink: placeLink,
            mapUploaded: mapUploaded,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
