// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndexRootPath _$_$IndexRootPathFromJson(Map<String, dynamic> json) {
  return _$IndexRootPath();
}

Map<String, dynamic> _$_$IndexRootPathToJson(_$IndexRootPath instance) =>
    <String, dynamic>{};

_$RootProductsPath _$_$RootProductsPathFromJson(Map<String, dynamic> json) {
  return _$RootProductsPath(
    next: json['next'] == null
        ? null
        : ProductsPath.fromJson(json['next'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$RootProductsPathToJson(_$RootProductsPath instance) =>
    <String, dynamic>{
      'next': instance.next,
    };

_$IndexProductsPath _$_$IndexProductsPathFromJson(Map<String, dynamic> json) {
  return _$IndexProductsPath(
    filtering: json['filtering'] as String,
  );
}

Map<String, dynamic> _$_$IndexProductsPathToJson(
        _$IndexProductsPath instance) =>
    <String, dynamic>{
      'filtering': instance.filtering,
    };

_$DetailProductsPath _$_$DetailProductsPathFromJson(Map<String, dynamic> json) {
  return _$DetailProductsPath(
    next: json['next'] == null
        ? null
        : DetailPath.fromJson(json['next'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$DetailProductsPathToJson(
        _$DetailProductsPath instance) =>
    <String, dynamic>{
      'next': instance.next,
    };

_$IndexDetailPath _$_$IndexDetailPathFromJson(Map<String, dynamic> json) {
  return _$IndexDetailPath(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$_$IndexDetailPathToJson(_$IndexDetailPath instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
