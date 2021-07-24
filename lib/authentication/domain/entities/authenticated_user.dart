import 'package:meta/meta.dart';

@immutable
class AuthenticatedUser {
  final String id;

  final String firstName;

  final String lastName;

  final String email;

  AuthenticatedUser({required this.id, required this.firstName, required this.lastName, required this.email})
      : assert(id.isNotEmpty && email.isNotEmpty, 'Id or email is empty: id: "$id"; email: "$email"');

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AuthenticatedUser && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'AuthenticatedUser{id: $id, firstName: $firstName, lastName: $lastName, email: $email}';
  }
}
