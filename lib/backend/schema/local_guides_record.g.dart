// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_guides_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalGuidesRecord> _$localGuidesRecordSerializer =
    new _$LocalGuidesRecordSerializer();

class _$LocalGuidesRecordSerializer
    implements StructuredSerializer<LocalGuidesRecord> {
  @override
  final Iterable<Type> types = const [LocalGuidesRecord, _$LocalGuidesRecord];
  @override
  final String wireName = 'LocalGuidesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocalGuidesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.guidename;
    if (value != null) {
      result
        ..add('guidename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fees;
    if (value != null) {
      result
        ..add('fees')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.guideLinkPlace;
    if (value != null) {
      result
        ..add('GuideLinkPlace')
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
  LocalGuidesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalGuidesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'guidename':
          result.guidename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fees':
          result.fees = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'GuideLinkPlace':
          result.guideLinkPlace = serializers.deserialize(value,
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

class _$LocalGuidesRecord extends LocalGuidesRecord {
  @override
  final String guidename;
  @override
  final String phoneNumber;
  @override
  final int fees;
  @override
  final DocumentReference<Object> guideLinkPlace;
  @override
  final DocumentReference<Object> reference;

  factory _$LocalGuidesRecord(
          [void Function(LocalGuidesRecordBuilder) updates]) =>
      (new LocalGuidesRecordBuilder()..update(updates)).build();

  _$LocalGuidesRecord._(
      {this.guidename,
      this.phoneNumber,
      this.fees,
      this.guideLinkPlace,
      this.reference})
      : super._();

  @override
  LocalGuidesRecord rebuild(void Function(LocalGuidesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGuidesRecordBuilder toBuilder() =>
      new LocalGuidesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGuidesRecord &&
        guidename == other.guidename &&
        phoneNumber == other.phoneNumber &&
        fees == other.fees &&
        guideLinkPlace == other.guideLinkPlace &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, guidename.hashCode), phoneNumber.hashCode),
                fees.hashCode),
            guideLinkPlace.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocalGuidesRecord')
          ..add('guidename', guidename)
          ..add('phoneNumber', phoneNumber)
          ..add('fees', fees)
          ..add('guideLinkPlace', guideLinkPlace)
          ..add('reference', reference))
        .toString();
  }
}

class LocalGuidesRecordBuilder
    implements Builder<LocalGuidesRecord, LocalGuidesRecordBuilder> {
  _$LocalGuidesRecord _$v;

  String _guidename;
  String get guidename => _$this._guidename;
  set guidename(String guidename) => _$this._guidename = guidename;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _fees;
  int get fees => _$this._fees;
  set fees(int fees) => _$this._fees = fees;

  DocumentReference<Object> _guideLinkPlace;
  DocumentReference<Object> get guideLinkPlace => _$this._guideLinkPlace;
  set guideLinkPlace(DocumentReference<Object> guideLinkPlace) =>
      _$this._guideLinkPlace = guideLinkPlace;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocalGuidesRecordBuilder() {
    LocalGuidesRecord._initializeBuilder(this);
  }

  LocalGuidesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guidename = $v.guidename;
      _phoneNumber = $v.phoneNumber;
      _fees = $v.fees;
      _guideLinkPlace = $v.guideLinkPlace;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGuidesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGuidesRecord;
  }

  @override
  void update(void Function(LocalGuidesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocalGuidesRecord build() {
    final _$result = _$v ??
        new _$LocalGuidesRecord._(
            guidename: guidename,
            phoneNumber: phoneNumber,
            fees: fees,
            guideLinkPlace: guideLinkPlace,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
