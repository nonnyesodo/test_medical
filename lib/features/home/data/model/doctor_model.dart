class DoctorModel {
  final String name, bio, specialty, yearExperience, rating, avatar;

  DoctorModel(
      {required this.avatar,
      required this.specialty,
      required this.bio,
      required this.yearExperience,
      required this.rating,
      required this.name});
}
