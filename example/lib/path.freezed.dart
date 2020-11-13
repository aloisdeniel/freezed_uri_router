// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Path _$PathFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'index':
      return IndexRootPath.fromJson(json);
    case 'products':
      return RootProductsPath.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PathTearOff {
  const _$PathTearOff();

// ignore: unused_element
  IndexRootPath index() {
    return const IndexRootPath();
  }

// ignore: unused_element
  RootProductsPath products({@required ProductsPath next}) {
    return RootProductsPath(
      next: next,
    );
  }

// ignore: unused_element
  Path fromJson(Map<String, Object> json) {
    return Path.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Path = _$PathTearOff();

/// @nodoc
mixin _$Path {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(),
    @required Result products(ProductsPath next),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(),
    Result products(ProductsPath next),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexRootPath value),
    @required Result products(RootProductsPath value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexRootPath value),
    Result products(RootProductsPath value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $PathCopyWith<$Res> {
  factory $PathCopyWith(Path value, $Res Function(Path) then) =
      _$PathCopyWithImpl<$Res>;
}

/// @nodoc
class _$PathCopyWithImpl<$Res> implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._value, this._then);

  final Path _value;
  // ignore: unused_field
  final $Res Function(Path) _then;
}

/// @nodoc
abstract class $IndexRootPathCopyWith<$Res> {
  factory $IndexRootPathCopyWith(
          IndexRootPath value, $Res Function(IndexRootPath) then) =
      _$IndexRootPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexRootPathCopyWithImpl<$Res> extends _$PathCopyWithImpl<$Res>
    implements $IndexRootPathCopyWith<$Res> {
  _$IndexRootPathCopyWithImpl(
      IndexRootPath _value, $Res Function(IndexRootPath) _then)
      : super(_value, (v) => _then(v as IndexRootPath));

  @override
  IndexRootPath get _value => super._value as IndexRootPath;
}

@JsonSerializable()

/// @nodoc
class _$IndexRootPath implements IndexRootPath {
  const _$IndexRootPath();

  factory _$IndexRootPath.fromJson(Map<String, dynamic> json) =>
      _$_$IndexRootPathFromJson(json);

  @override
  String toString() {
    return 'Path.index()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IndexRootPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(),
    @required Result products(ProductsPath next),
  }) {
    assert(index != null);
    assert(products != null);
    return index();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(),
    Result products(ProductsPath next),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexRootPath value),
    @required Result products(RootProductsPath value),
  }) {
    assert(index != null);
    assert(products != null);
    return index(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexRootPath value),
    Result products(RootProductsPath value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IndexRootPathToJson(this)..['runtimeType'] = 'index';
  }
}

abstract class IndexRootPath implements Path {
  const factory IndexRootPath() = _$IndexRootPath;

  factory IndexRootPath.fromJson(Map<String, dynamic> json) =
      _$IndexRootPath.fromJson;
}

/// @nodoc
abstract class $RootProductsPathCopyWith<$Res> {
  factory $RootProductsPathCopyWith(
          RootProductsPath value, $Res Function(RootProductsPath) then) =
      _$RootProductsPathCopyWithImpl<$Res>;
  $Res call({ProductsPath next});

  $ProductsPathCopyWith<$Res> get next;
}

/// @nodoc
class _$RootProductsPathCopyWithImpl<$Res> extends _$PathCopyWithImpl<$Res>
    implements $RootProductsPathCopyWith<$Res> {
  _$RootProductsPathCopyWithImpl(
      RootProductsPath _value, $Res Function(RootProductsPath) _then)
      : super(_value, (v) => _then(v as RootProductsPath));

  @override
  RootProductsPath get _value => super._value as RootProductsPath;

  @override
  $Res call({
    Object next = freezed,
  }) {
    return _then(RootProductsPath(
      next: next == freezed ? _value.next : next as ProductsPath,
    ));
  }

  @override
  $ProductsPathCopyWith<$Res> get next {
    if (_value.next == null) {
      return null;
    }
    return $ProductsPathCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$RootProductsPath implements RootProductsPath {
  const _$RootProductsPath({@required this.next}) : assert(next != null);

  factory _$RootProductsPath.fromJson(Map<String, dynamic> json) =>
      _$_$RootProductsPathFromJson(json);

  @override
  final ProductsPath next;

  @override
  String toString() {
    return 'Path.products(next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RootProductsPath &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(next);

  @override
  $RootProductsPathCopyWith<RootProductsPath> get copyWith =>
      _$RootProductsPathCopyWithImpl<RootProductsPath>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(),
    @required Result products(ProductsPath next),
  }) {
    assert(index != null);
    assert(products != null);
    return products(next);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(),
    Result products(ProductsPath next),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (products != null) {
      return products(next);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexRootPath value),
    @required Result products(RootProductsPath value),
  }) {
    assert(index != null);
    assert(products != null);
    return products(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexRootPath value),
    Result products(RootProductsPath value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (products != null) {
      return products(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RootProductsPathToJson(this)..['runtimeType'] = 'products';
  }
}

abstract class RootProductsPath implements Path {
  const factory RootProductsPath({@required ProductsPath next}) =
      _$RootProductsPath;

  factory RootProductsPath.fromJson(Map<String, dynamic> json) =
      _$RootProductsPath.fromJson;

  ProductsPath get next;
  $RootProductsPathCopyWith<RootProductsPath> get copyWith;
}

ProductsPath _$ProductsPathFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'index':
      return IndexProductsPath.fromJson(json);
    case 'detail':
      return DetailProductsPath.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ProductsPathTearOff {
  const _$ProductsPathTearOff();

// ignore: unused_element
  IndexProductsPath index({String filtering}) {
    return IndexProductsPath(
      filtering: filtering,
    );
  }

// ignore: unused_element
  DetailProductsPath detail({@required DetailPath next}) {
    return DetailProductsPath(
      next: next,
    );
  }

// ignore: unused_element
  ProductsPath fromJson(Map<String, Object> json) {
    return ProductsPath.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsPath = _$ProductsPathTearOff();

/// @nodoc
mixin _$ProductsPath {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(String filtering),
    @required Result detail(DetailPath next),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(String filtering),
    Result detail(DetailPath next),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexProductsPath value),
    @required Result detail(DetailProductsPath value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexProductsPath value),
    Result detail(DetailProductsPath value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ProductsPathCopyWith<$Res> {
  factory $ProductsPathCopyWith(
          ProductsPath value, $Res Function(ProductsPath) then) =
      _$ProductsPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsPathCopyWithImpl<$Res> implements $ProductsPathCopyWith<$Res> {
  _$ProductsPathCopyWithImpl(this._value, this._then);

  final ProductsPath _value;
  // ignore: unused_field
  final $Res Function(ProductsPath) _then;
}

/// @nodoc
abstract class $IndexProductsPathCopyWith<$Res> {
  factory $IndexProductsPathCopyWith(
          IndexProductsPath value, $Res Function(IndexProductsPath) then) =
      _$IndexProductsPathCopyWithImpl<$Res>;
  $Res call({String filtering});
}

/// @nodoc
class _$IndexProductsPathCopyWithImpl<$Res>
    extends _$ProductsPathCopyWithImpl<$Res>
    implements $IndexProductsPathCopyWith<$Res> {
  _$IndexProductsPathCopyWithImpl(
      IndexProductsPath _value, $Res Function(IndexProductsPath) _then)
      : super(_value, (v) => _then(v as IndexProductsPath));

  @override
  IndexProductsPath get _value => super._value as IndexProductsPath;

  @override
  $Res call({
    Object filtering = freezed,
  }) {
    return _then(IndexProductsPath(
      filtering: filtering == freezed ? _value.filtering : filtering as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$IndexProductsPath implements IndexProductsPath {
  const _$IndexProductsPath({this.filtering});

  factory _$IndexProductsPath.fromJson(Map<String, dynamic> json) =>
      _$_$IndexProductsPathFromJson(json);

  @override
  final String filtering;

  @override
  String toString() {
    return 'ProductsPath.index(filtering: $filtering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexProductsPath &&
            (identical(other.filtering, filtering) ||
                const DeepCollectionEquality()
                    .equals(other.filtering, filtering)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filtering);

  @override
  $IndexProductsPathCopyWith<IndexProductsPath> get copyWith =>
      _$IndexProductsPathCopyWithImpl<IndexProductsPath>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(String filtering),
    @required Result detail(DetailPath next),
  }) {
    assert(index != null);
    assert(detail != null);
    return index(filtering);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(String filtering),
    Result detail(DetailPath next),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(filtering);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexProductsPath value),
    @required Result detail(DetailProductsPath value),
  }) {
    assert(index != null);
    assert(detail != null);
    return index(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexProductsPath value),
    Result detail(DetailProductsPath value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IndexProductsPathToJson(this)..['runtimeType'] = 'index';
  }
}

abstract class IndexProductsPath implements ProductsPath {
  const factory IndexProductsPath({String filtering}) = _$IndexProductsPath;

  factory IndexProductsPath.fromJson(Map<String, dynamic> json) =
      _$IndexProductsPath.fromJson;

  String get filtering;
  $IndexProductsPathCopyWith<IndexProductsPath> get copyWith;
}

/// @nodoc
abstract class $DetailProductsPathCopyWith<$Res> {
  factory $DetailProductsPathCopyWith(
          DetailProductsPath value, $Res Function(DetailProductsPath) then) =
      _$DetailProductsPathCopyWithImpl<$Res>;
  $Res call({DetailPath next});

  $DetailPathCopyWith<$Res> get next;
}

/// @nodoc
class _$DetailProductsPathCopyWithImpl<$Res>
    extends _$ProductsPathCopyWithImpl<$Res>
    implements $DetailProductsPathCopyWith<$Res> {
  _$DetailProductsPathCopyWithImpl(
      DetailProductsPath _value, $Res Function(DetailProductsPath) _then)
      : super(_value, (v) => _then(v as DetailProductsPath));

  @override
  DetailProductsPath get _value => super._value as DetailProductsPath;

  @override
  $Res call({
    Object next = freezed,
  }) {
    return _then(DetailProductsPath(
      next: next == freezed ? _value.next : next as DetailPath,
    ));
  }

  @override
  $DetailPathCopyWith<$Res> get next {
    if (_value.next == null) {
      return null;
    }
    return $DetailPathCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$DetailProductsPath implements DetailProductsPath {
  const _$DetailProductsPath({@required this.next}) : assert(next != null);

  factory _$DetailProductsPath.fromJson(Map<String, dynamic> json) =>
      _$_$DetailProductsPathFromJson(json);

  @override
  final DetailPath next;

  @override
  String toString() {
    return 'ProductsPath.detail(next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailProductsPath &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(next);

  @override
  $DetailProductsPathCopyWith<DetailProductsPath> get copyWith =>
      _$DetailProductsPathCopyWithImpl<DetailProductsPath>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(String filtering),
    @required Result detail(DetailPath next),
  }) {
    assert(index != null);
    assert(detail != null);
    return detail(next);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(String filtering),
    Result detail(DetailPath next),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detail != null) {
      return detail(next);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexProductsPath value),
    @required Result detail(DetailProductsPath value),
  }) {
    assert(index != null);
    assert(detail != null);
    return detail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexProductsPath value),
    Result detail(DetailProductsPath value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DetailProductsPathToJson(this)..['runtimeType'] = 'detail';
  }
}

abstract class DetailProductsPath implements ProductsPath {
  const factory DetailProductsPath({@required DetailPath next}) =
      _$DetailProductsPath;

  factory DetailProductsPath.fromJson(Map<String, dynamic> json) =
      _$DetailProductsPath.fromJson;

  DetailPath get next;
  $DetailProductsPathCopyWith<DetailProductsPath> get copyWith;
}

DetailPath _$DetailPathFromJson(Map<String, dynamic> json) {
  return IndexDetailPath.fromJson(json);
}

/// @nodoc
class _$DetailPathTearOff {
  const _$DetailPathTearOff();

// ignore: unused_element
  IndexDetailPath index({int id}) {
    return IndexDetailPath(
      id: id,
    );
  }

// ignore: unused_element
  DetailPath fromJson(Map<String, Object> json) {
    return DetailPath.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailPath = _$DetailPathTearOff();

/// @nodoc
mixin _$DetailPath {
  int get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexDetailPath value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexDetailPath value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $DetailPathCopyWith<DetailPath> get copyWith;
}

/// @nodoc
abstract class $DetailPathCopyWith<$Res> {
  factory $DetailPathCopyWith(
          DetailPath value, $Res Function(DetailPath) then) =
      _$DetailPathCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DetailPathCopyWithImpl<$Res> implements $DetailPathCopyWith<$Res> {
  _$DetailPathCopyWithImpl(this._value, this._then);

  final DetailPath _value;
  // ignore: unused_field
  final $Res Function(DetailPath) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class $IndexDetailPathCopyWith<$Res>
    implements $DetailPathCopyWith<$Res> {
  factory $IndexDetailPathCopyWith(
          IndexDetailPath value, $Res Function(IndexDetailPath) then) =
      _$IndexDetailPathCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$IndexDetailPathCopyWithImpl<$Res> extends _$DetailPathCopyWithImpl<$Res>
    implements $IndexDetailPathCopyWith<$Res> {
  _$IndexDetailPathCopyWithImpl(
      IndexDetailPath _value, $Res Function(IndexDetailPath) _then)
      : super(_value, (v) => _then(v as IndexDetailPath));

  @override
  IndexDetailPath get _value => super._value as IndexDetailPath;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(IndexDetailPath(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$IndexDetailPath implements IndexDetailPath {
  const _$IndexDetailPath({this.id});

  factory _$IndexDetailPath.fromJson(Map<String, dynamic> json) =>
      _$_$IndexDetailPathFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailPath.index(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexDetailPath &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $IndexDetailPathCopyWith<IndexDetailPath> get copyWith =>
      _$IndexDetailPathCopyWithImpl<IndexDetailPath>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(int id),
  }) {
    assert(index != null);
    return index(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(IndexDetailPath value),
  }) {
    assert(index != null);
    return index(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(IndexDetailPath value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IndexDetailPathToJson(this);
  }
}

abstract class IndexDetailPath implements DetailPath {
  const factory IndexDetailPath({int id}) = _$IndexDetailPath;

  factory IndexDetailPath.fromJson(Map<String, dynamic> json) =
      _$IndexDetailPath.fromJson;

  @override
  int get id;
  @override
  $IndexDetailPathCopyWith<IndexDetailPath> get copyWith;
}
