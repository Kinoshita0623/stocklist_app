// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StockTearOff {
  const _$StockTearOff();

  _Stock call(
      {required int id,
      int? boxId,
      required String name,
      required int itemId}) {
    return _Stock(
      id: id,
      boxId: boxId,
      name: name,
      itemId: itemId,
    );
  }
}

/// @nodoc
const $Stock = _$StockTearOff();

/// @nodoc
mixin _$Stock {
  int get id => throw _privateConstructorUsedError;
  int? get boxId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res>;
  $Res call({int id, int? boxId, String name, int itemId});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  final Stock _value;
  // ignore: unused_field
  final $Res Function(Stock) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? boxId = freezed,
    Object? name = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) then) =
      __$StockCopyWithImpl<$Res>;
  @override
  $Res call({int id, int? boxId, String name, int itemId});
}

/// @nodoc
class __$StockCopyWithImpl<$Res> extends _$StockCopyWithImpl<$Res>
    implements _$StockCopyWith<$Res> {
  __$StockCopyWithImpl(_Stock _value, $Res Function(_Stock) _then)
      : super(_value, (v) => _then(v as _Stock));

  @override
  _Stock get _value => super._value as _Stock;

  @override
  $Res call({
    Object? id = freezed,
    Object? boxId = freezed,
    Object? name = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_Stock(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Stock implements _Stock {
  _$_Stock(
      {required this.id, this.boxId, required this.name, required this.itemId});

  @override
  final int id;
  @override
  final int? boxId;
  @override
  final String name;
  @override
  final int itemId;

  @override
  String toString() {
    return 'Stock(id: $id, boxId: $boxId, name: $name, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stock &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.boxId, boxId) ||
                const DeepCollectionEquality().equals(other.boxId, boxId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(boxId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$StockCopyWith<_Stock> get copyWith =>
      __$StockCopyWithImpl<_Stock>(this, _$identity);
}

abstract class _Stock implements Stock {
  factory _Stock(
      {required int id,
      int? boxId,
      required String name,
      required int itemId}) = _$_Stock;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int? get boxId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockCopyWith<_Stock> get copyWith => throw _privateConstructorUsedError;
}
