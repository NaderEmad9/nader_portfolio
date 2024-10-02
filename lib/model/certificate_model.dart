class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Advanced Flutter Development',
    organization: 'Route Academy',
    date: 'SEP 2024',
    skills: 'Flutter . Clean Architecture . Dart ',
    credential: 'Set the url when you get it here.',
  ),
  CertificateModel(
    name: 'The Complete Flutter Development Guide',
    organization: 'Udemy',
    date: 'SEP 2024',
    skills: 'Flutter . Dart . Firebase. Api',
    credential:
        'https://www.udemy.com/certificate/UC-fbce02d8-2380-4f6d-b781-f1a3a34d2fb9/',
  ),
  CertificateModel(
    name: 'English Certification (C1)',
    organization: 'EF SET',
    date: 'MAY 2024',
    skills: 'Listening . Reading',
    credential: 'https://cert.efset.org/JM5jGj',
  ),
];
