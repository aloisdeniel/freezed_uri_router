import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_uri_router/freezed_uri_router.dart';

part 'path.freezed.dart';
part 'path.g.dart';

final _serializer = const FreezedPath();

@freezed
abstract class Path with _$Path {
  /// `/index`
  const factory Path.index() = IndexRootPath;

  /// `/products/{...}`
  const factory Path.products({
    @required ProductsPath next,
  }) = RootProductsPath;

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);

  factory Path.fromUri(String uri) =>
      Path.fromJson(_serializer.deserialize(uri));
}

extension PathExtension on Path {
  String toUri() => _serializer.serialize(toJson());
}

@freezed
abstract class ProductsPath with _$ProductsPath {
  /// `/products/index?filtering=x`
  const factory ProductsPath.index({
    String filtering,
  }) = IndexProductsPath;

  /// `/products/detail/{...}`
  const factory ProductsPath.detail({
    @required DetailPath next,
  }) = DetailProductsPath;

  factory ProductsPath.fromJson(Map<String, dynamic> json) =>
      _$ProductsPathFromJson(json);
}

@freezed
abstract class DetailPath with _$DetailPath {
  /// `/products/detail/index?id=x`
  const factory DetailPath.index({
    int id,
  }) = IndexDetailPath;

  factory DetailPath.fromJson(Map<String, dynamic> json) =>
      _$DetailPathFromJson(json);
}
