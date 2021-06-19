class User {
  late final bool success;
  late final String token;

  User({
    required this.success,
    required this.token,
  });

  factory User.fromJson(Map<bool, dynamic> json) {
    return User(
      success: json['success'],
      token: json['token'],
    );
  }
}