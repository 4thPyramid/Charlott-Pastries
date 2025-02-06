class OrderStatusModel {
  final int newOrder;
  final int inProgress;
  final int completed;

  OrderStatusModel({
    required this.newOrder,
    required this.inProgress,
    required this.completed,
  });

  // تحويل من JSON إلى كائن Dart
  factory OrderStatusModel.fromJson(Map<String, dynamic> json) {
    return OrderStatusModel(
      newOrder: json["طلب جديد"] ?? 0,
      inProgress: json["طلب قيد التنفيذ"] ?? 0,
      completed: json["طلب مكتمل"] ?? 0,
    );
  }

  // تحويل من كائن Dart إلى JSON
  Map<String, dynamic> toJson() {
    return {
      "طلب جديد": newOrder,
      "طلب قيد التنفيذ": inProgress,
      "طلب مكتمل": completed,
    };
  }
}
