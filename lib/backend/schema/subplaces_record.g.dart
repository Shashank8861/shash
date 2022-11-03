// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subplaces_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubplacesRecord> _$subplacesRecordSerializer =
    new _$SubplacesRecordSerializer();

class _$SubplacesRecordSerializer
    implements StructuredSerializer<SubplacesRecord> {
  @override
  final Iterable<Type> types = const [SubplacesRecord, _$SubplacesRecord];
  @override
  final String wireName = 'SubplacesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SubplacesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.subplacename;
    if (value != null) {
      result
        ..add('subplacename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linktomainplace;
    if (value != null) {
      result
        ..add('linktomainplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
  SubplacesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubplacesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'subplacename':
          result.subplacename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linktomainplace':
          result.linktomainplace = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
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

class _$SubplacesRecord extends SubplacesRecord {
  @override
  final String subplacename;
  @override
  final DocumentReference<Object> linktomainplace;
  @override
  final String photoUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$SubplacesRecord([void Function(SubplacesRecordBuilder) updates]) =>
      (new SubplacesRecordBuilder()..update(updates)).build();

  _$SubplacesRecord._(
      {this.subplacename, this.linktomainplace, this.photoUrl, this.reference})
      : super._();

  @override
  SubplacesRecord rebuild(void Function(SubplacesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubplacesRecordBuilder toBuilder() =>
      new SubplacesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubplacesRecord &&
        subplacename == other.subplacename &&
        linktomainplace == other.linktomainplace &&
        photoUrl == other.photoUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, subplacename.hashCode), linktomainplace.hashCode),
            photoUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubplacesRecord')
          ..add('subplacename', subplacename)
          ..add('linktomainplace', linktomainplace)
          ..add('photoUrl', photoUrl)
          ..add('reference', reference))
        .toString();
  }
}

class SubplacesRecordBuilder
    implements Builder<SubplacesRecord, SubplacesRecordBuilder> {
  _$SubplacesRecord _$v;

  String _subplacename;
  String get subplacename => _$this._subplacename;
  set subplacename(String subplacename) => _$this._subplacename = subplacename;

  DocumentReference<Object> _linktomainplace;
  DocumentReference<Object> get linktomainplace => _$this._linktomainplace;
  set linktomainplace(DocumentReference<Object> linktomainplace) =>
      _$this._linktomainplace = linktomainplace;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SubplacesRecordBuilder() {
    SubplacesRecord._initializeBuilder(this);
  }

  SubplacesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subplacename = $v.subplacename;
      _linktomainplace = $v.linktomainplace;
      _photoUrl = $v.photoUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubplacesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubplacesRecord;
  }

  @override
  void update(void Function(SubplacesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubplacesRecord build() {
    final _$result = _$v ??
        new _$SubplacesRecord._(
            subplacename: subplacename,
            linktomainplace: linktomainplace,
            photoUrl: photoUrl,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
