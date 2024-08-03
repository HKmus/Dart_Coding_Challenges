void main() {
  const emails = [
    'said@gmail.com',
    'houari@gmail.com',
    'moussaab@yahoo.com',
    'aziz@test.com',
    'abc@annom.com',
  ];
  const knownDomains = ['gmail.com', 'yahoo.com'];
  final unknownDomains = getUnknownDomains(emails, knownDomains);
  print(unknownDomains);
}

Iterable<String> getUnknownDomains(
        List<String> emails, List<String> knownDomains) =>
    emails
        .map((email) => email.split('@').last)
        .where((domain) => !knownDomains.contains(domain));
