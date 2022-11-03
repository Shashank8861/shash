// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehiclesRecord> _$vehiclesRecordSerializer =
    new _$VehiclesRecordSerializer();

class _$VehiclesRecordSerializer
    implements StructuredSerializer<VehiclesRecord> {
  @override
  final Iterable<Type> types = const [VehiclesRecord, _$VehiclesRecord];
  @override
  final String wireName = 'VehiclesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VehiclesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ownerName;
    if (value != null) {
      result
        ..add('owner_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleName;
    if (value != null) {
      result
        ..add('vehicleName')
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
    value = object.withoutdriver;
    if (value != null) {
      result
        ..add('withoutdriver')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehivlelinkplace;
    if (value != null) {
      result
        ..add('vehivlelinkplace')
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
  VehiclesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehiclesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'owner_name':
          result.ownerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vehicleName':
          result.vehicleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'withoutdriver':
          result.withoutdriver = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vehivlelinkplace':
          result.vehivlelinkplace = serializers.deserialize(value,
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

class _$VehiclesRecord extends VehiclesRecord {
  @override
  final String ownerName;
  @override
  final String vehicleName;
  @override
  final String phoneNumber;
  @override
  final String withoutdriver;
  @override
  final DocumentReference<Object> vehivlelinkplace;
  @override
  final DocumentReference<Object> reference;

  factory _$VehiclesRecord([void Function(VehiclesRecordBuilder) updates]) =>
      (new VehiclesRecordBuilder()..update(updates)).build();

  _$VehiclesRecord._(
      {this.ownerName,
      this.vehicleName,
      this.phoneNumber,
      this.withoutdriver,
      this.vehivlelinkplace,
      this.reference})
      : super._();

  @override
  VehiclesRecord rebuild(void Function(VehiclesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehiclesRecordBuilder toBuilder() =>
      new VehiclesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehiclesRecord &&
        ownerName == other.ownerName &&
        vehicleName == other.vehicleName &&
        phoneNumber == other.phoneNumber &&
        withoutdriver == other.withoutdriver &&
        vehivlelinkplace == other.vehivlelinkplace &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, ownerName.hashCode), vehicleName.hashCode),
                    phoneNumber.hashCode),
                withoutdriver.hashCode),
            vehivlelinkplace.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VehiclesRecord')
          ..add('ownerName', ownerName)
          ..add('vehicleName', vehicleName)
          ..add('phoneNumber', phoneNumber)
          ..add('withoutdriver', withoutdriver)
          ..add('vehivlelinkplace', vehivlelinkplace)
          ..add('reference', reference))
        .toString();
  }
}

class VehiclesRecordBuilder
    implements Builder<VehiclesRecord, VehiclesRecordBuilder> {
  _$VehiclesRecord _$v;

  String _ownerName;
  String get ownerName => _$this._ownerName;
  set ownerName(String ownerName) => _$this._ownerName = ownerName;

  String _vehicleName;
  String get vehicleName => _$this._vehicleName;
  set vehicleName(String vehicleName) => _$this._vehicleName = vehicleName;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _withoutdriver;
  String get withoutdriver => _$this._withoutdriver;
  set withoutdriver(String withoutdriver) =>
      _$this._withoutdriver = withoutdriver;

  DocumentReference<Object> _vehivlelinkplace;
  DocumentReference<Object> get vehivlelinkplace => _$this._vehivlelinkplace;
  set vehivlelinkplace(DocumentReference<Object> vehivlelinkplace) =>
      _$this._vehivlelinkplace = vehivlelinkplace;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VehiclesRecordBuilder() {
    VehiclesRecord._initializeBuilder(this);
  }

  VehiclesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerName = $v.ownerName;
      _vehicleName = $v.vehicleName;
      _phoneNumber = $v.phoneNumber;
      _withoutdriver = $v.withoutdriver;
      _vehivlelinkplace = $v.vehivlelinkplace;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehiclesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehiclesRecord;
  }

  @override
  void update(void Function(VehiclesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VehiclesRecord build() {
    final _$result = _$v ??
        new _$VehiclesRecord._(
            ownerName: ownerName,
            vehicleName: vehicleName,
            phoneNumber: phoneNumber,
            withoutdriver: withoutdriver,
            vehivlelinkplace: vehivlelinkplace,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
