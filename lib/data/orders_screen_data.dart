import '../models/models.dart';

final districtData = [
  'Кировский',
  'Приморский',
  'Выборгский',
];

final orders = [
  Order(
    id: "id1",
    name: 'Order 1',
    finishDate: DateTime.now(),
    price: 3000000,
    isAuction: true,
  ),
  Order(
    id: "id2",
    name: 'Order 2',
    finishDate: DateTime.now().add(const Duration(days: 300)),
    price: 1550000,
    isAuction: true,
  ),
  Order(
    id: "id3",
    name: 'Order 3',
    finishDate: DateTime.now().add(const Duration(days: 156)),
    price: 730080,
    isAuction: false,
  ),
];
