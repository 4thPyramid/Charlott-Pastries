class Specialization {
  final int id;
  final String name;

  const Specialization({
    required this.id,
    required this.name,
  });
}

class SpecializationsData {
  static final List<Specialization> specializations = [
    const Specialization(id: 1, name: "التخصص الاول"),
    const Specialization(id: 2, name: "التخصص الثاني"),
    const Specialization(id: 3, name: "التخصص الثالث"),
  ];

  static Specialization? getSpecializationByName(String name) {
    return specializations.firstWhere(
      (specialization) => specialization.name == name,
      orElse: () => throw Exception('التخصص غير موجود: $name'),
    );
  }

  static Specialization? getSpecializationById(int id) {
    return specializations.firstWhere(
      (specialization) => specialization.id == id,
      orElse: () => throw Exception('الفرع غير موجود برقم: $id'),
    );
  }
}