class User {
  final bool success;
  final String token;

  User({
    this.success,
    this.token,
  });

  factory User.fromJson(Map<bool, dynamic> json) {
    return User(
      success: json['success'],
      token: json['token'],
    );
  }
}