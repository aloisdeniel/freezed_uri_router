library freezed_uri_router;

class FreezedPath {
  const FreezedPath({
    this.separator = '/',
    this.queryTypePrefixes = const <Type, String>{
      Null: 'n\$',
      String: 's\$',
      int: 'i\$',
      double: 'd\$',
      DateTime: 't\$',
      bool: 'b\$',
    },
  });
  final String separator;
  final Map<Type, String> queryTypePrefixes;
  String serialize(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    buffer.write(separator);
    _serialize(buffer, json);
    return buffer.toString();
  }

  Map<String, dynamic> deserialize(String path) {
    if (path.startsWith(separator)) {
      path = path.substring(1);
    }
    final parts = path.split(separator);
    Map<String, dynamic> root;
    Map<String, dynamic> current;
    for (var item in parts) {
      final uri = item.split('?');
      final segment = uri[0];
      var json = <String, dynamic>{
        'runtimeType': Uri.decodeComponent(segment),
      };

      if (uri.length > 1) {
        final query = Uri.splitQueryString(uri[1]);
        json = {
          ...json,
          ...query.map((key, value) => MapEntry(key, _deserializeValue(value))),
        };
      }

      if (root == null) {
        root = json;
      } else {
        current['next'] = json;
      }
      current = json;
    }

    return root;
  }

  void _serialize(StringBuffer result, Map<String, dynamic> json) {
    final segment = json['runtimeType'] ?? 'index';
    result.write(Uri.encodeComponent(segment));

    final query = <String>[];
    for (var entry in json.entries) {
      if (!const ['runtimeType', 'next'].contains(entry.key)) {
        final queryValue = _serializeValue(entry.value);
        query.add('${Uri.encodeQueryComponent(entry.key)}=${queryValue}');
      }
    }

    if (query.isNotEmpty) {
      result.write('?${query.join('&')}');
    }

    var next = json['next'];

    if (next != null) {
      if (!(next is Map<String, dynamic>)) {
        next = next.toJson();
      }

      print('$next');
      result.write(separator);
      _serialize(result, next);
    }
  }

  String _serializeValue(dynamic value) {
    if (value == null) {
      return queryTypePrefixes[Null];
    }
    if (!queryTypePrefixes.containsKey(value.runtimeType)) {
      throw Exception('Unsupported value uri encoding for type ${value}');
    }
    final typePrefix = queryTypePrefixes[value.runtimeType];
    return '${typePrefix}${value}';
  }

  dynamic _deserializeValue(String value) {
    for (var entry in queryTypePrefixes.entries) {
      if (value.startsWith(entry.value)) {
        value = value.substring(entry.value.length);
        final type = entry.key;

        if (type == Null) {
          return null;
        }
        if (type == int) {
          return int.parse(value);
        }
        if (type == double) {
          return double.parse(value);
        }
        if (type == DateTime) {
          return DateTime.parse(value);
        }
        if (type == bool) {
          return value == '1';
        }
      }
    }

    throw Exception('Unsupported value uri encoding for ${value}');
  }
}
