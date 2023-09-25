class User {
  final String id;
  final String name;
  final String? email;
  final double phoneNumber;
  final String description;

  const User({
    required this.id,
    required this.name,
    this.email,
    required this.phoneNumber,
    required this.description,
  });
}
