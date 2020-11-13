import 'package:example/path.dart';
import 'package:freezed_uri_router/freezed_uri_router.dart';

void main(List<String> arguments) {
  print('D1:${Path.fromUri(r'/index')}');
  print('D2:${Path.fromUri(r'/products/index')}');
  print('D3:${Path.fromUri(r'/products/detail/index?id=i$123')}');

  final p1 = Path.products(
    next: ProductsPath.detail(
      next: DetailPath.index(id: 42),
    ),
  );

  print('S1:${p1.toUri()}');
}
