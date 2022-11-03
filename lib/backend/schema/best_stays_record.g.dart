// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_stays_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BestStaysRecord> _$bestStaysRecordSerializer =
    new _$BestStaysRecordSerializer();

class _$BestStaysRecordSerializer
    implements StructuredSerializer<BestStaysRecord> {
  @override
  final Iterable<Type> types = const [BestStaysRecord, _$BestStaysRecord];
  @override
  final String wireName = 'BestStaysRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BestStaysRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.stayName;
    if (value != null) {
      result
        ..add('stayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.staysavgrating;
    if (value != null) {
      result
        ..add('staysavgrating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stayLinkPlace;
    if (value != null) {
      result
        ..add('StayLinkPlace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  BestStaysRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestStaysRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'stayName':
          result.stayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'staysavgrating':
          result.staysavgrating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'StayLinkPlace':
          result.stayLinkPlace = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$BestStaysRecord extends BestStaysRecord {
  @override
  final String stayName;
  @override
  final double staysavgrating;
  @override
  final String imageUrl;
  @override
  final DocumentReference<Object> stayLinkPlace;
  @override
  final DocumentReference<Object> reference;

  factory _$BestStaysRecord([void Function(BestStaysRecordBuilder) updates]) =>
      (new BestStaysRecordBuilder()..update(updates)).build();

  _$BestStaysRecord._(
      {this.stayName,
      this.staysavgrating,
      this.imageUrl,
      this.stayLinkPlace,
      this.reference})
      : super._();

  @override
  BestStaysRecord rebuild(void Function(BestStaysRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestStaysRecordBuilder toBuilder() =>
      new BestStaysRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestStaysRecord &&
        stayName == other.stayName &&
        staysavgrating == other.staysavgrating &&
        imageUrl == other.imageUrl &&
        stayLinkPlace == other.stayLinkPlace &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, stayName.hashCode), staysavgrating.hashCode),
                imageUrl.hashCode),
            stayLinkPlace.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BestStaysRecord')
          ..add('stayName', stayName)
          ..add('staysavgrating', staysavgrating)
          ..add('imageUrl', imageUrl)
          ..add('stayLinkPlace', stayLinkPlace)
          ..add('reference', reference))
        .toString();
  }
}

class BestStaysRecordBuilder
    implements Builder<BestStaysRecord, BestStaysRecordBuilder> {
  _$BestStaysRecord _$v;

  String _stayName;
  String get stayName => _$this._stayName;
  set stayName(String stayName) => _$this._stayName = stayName;

  double _staysavgrating;
  double get staysavgrating => _$this._staysavgrating;
  set staysavgrating(double staysavgrating) =>
      _$this._staysavgrating = staysavgrating;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object> _stayLinkPlace;
  DocumentReference<Object> get stayLinkPlace => _$this._stayLinkPlace;
  set stayLinkPlace(DocumentReference<Object> stayLinkPlace) =>
      _$this._stayLinkPlace = stayLinkPlace;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BestStaysRecordBuilder() {
    BestStaysRecord._initializeBuilder(this);
  }

  BestStaysRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stayName = $v.stayName;
      _staysavgrating = $v.staysavgrating;
      _imageUrl = $v.imageUrl;
      _stayLinkPlace = $v.stayLinkPlace;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BestStaysRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BestStaysRecord;
  }

  @override
  void update(void Function(BestStaysRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BestStaysRecord build() {
    final _$result = _$v ??
        new _$BestStaysRecord._(
            stayName: stayName,
            staysavgrating: staysavgrating,
            imageUrl: imageUrl,
            stayLinkPlace: stayLinkPlace,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
