# freezed_uri_router

Using freezed objects as routes with URI serialization.

> This can be useful when using Navigator V2 APIs with Flutter

## Quickstart

### Define your routes

The `FreezedPath` is used to implement `Path.fromUri` factory and `toUri` extension method from the root `Path` type. 

```dart
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
```

### Serialize

```dart
final uri = Path.products(
  next: ProductsPath.detail(
    next: DetailPath.index(id: 42),
  ),
);

print(uri); // `/products/detail/index?id=i%2442`
```

### Deserialize

```dart
final path = Path.fromUri(r'/products/detail/index?id=i%24123');

print(path); // `Path.products(next: ProductsPath.detail(next: DetailPath.index(id: 123)))`
```

### Use path as a router

```dart
return path.map(
  index: (path) => IndexPage(),
  products: (path) => path.next.map(
    index: (path) => ProductsPage(filtering: path.filtering),
    detail: (path) => path.next.map(
      index: (path) => ProductDetail(id: path.id),
    )
  ),
);
```

## Serialization

All route properties are serialized with a prefix defining there type.

The only reserved property is `next` which describes the next segment.