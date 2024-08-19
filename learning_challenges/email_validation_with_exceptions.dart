class EmailAddress {
  EmailAddress({required this.email}) {
    if (email.isEmpty) {
      throw FormatException("Email can't be empty");
    } else if (!email.contains('@')) {
      throw FormatException("$email doesn't contain @ symbol");
    }
  }
  final String email;

  @override
  String toString() => email;
}

void main() {
  try {
    print(EmailAddress(email: 'me@example.com'));
    print(EmailAddress(email: 'example.com'));
  } on FormatException catch (e) {
    print(e);
  }
}
