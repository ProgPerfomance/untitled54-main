class Order {
  final String id;
  final String name;
  final DateTime finishDate;
  final double price;
  final bool isAuction;

  const Order({
    required this.id,
    required this.name,
    required this.finishDate,
    required this.price,
    required this.isAuction,
  });
}
