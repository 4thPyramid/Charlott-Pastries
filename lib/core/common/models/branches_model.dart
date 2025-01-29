class Branch {
  final int id;
  final String name;

  const Branch({
    required this.id,
    required this.name,
  });
}

class BranchesData {
  static final List<Branch> branches = [
    const Branch(id: 1, name: "الفرع الاول"),
    const Branch(id: 2, name: "الفرع الثاني"),
    const Branch(id: 3, name: "الفرع الثالث"),
  ];

  static Branch? getBranchByName(String name) {
    return branches.firstWhere(
      (branch) => branch.name == name,
      orElse: () => throw Exception('الفرع غير موجود: $name'),
    );
  }

  static Branch? getBranchById(int id) {
    return branches.firstWhere(
      (branch) => branch.id == id,
      orElse: () => throw Exception('الفرع غير موجود برقم: $id'),
    );
  }
}