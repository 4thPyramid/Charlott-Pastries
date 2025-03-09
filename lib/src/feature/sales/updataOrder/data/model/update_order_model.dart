class UpdateOrderModel {
  final int id;
  final String orderDetails;
  final String? image;
  final String? description;
  final int isSameday;
  final String from;
  final String to;
  final String deliveryDate;
  final String orderType;
  final int cakePrice;
  final int flowerPrice;
  final int deliveryPrice;
  final int deposit;
  final int totalPrice;
  final String customerName;
  final String customerPhone;
  final String longitude;
  final String latitude;
  final String mapDesc;
  final String additionalData;
  final int? branchId;
  final int isReturned;
  final String? problem;
  final String? rejectionCause;
  final String status;
  final int isCompleted;
  final String paymentMethod;
  final int saleId;
  final int? managerId;
  final int? chefId;
  final int? deliveryId;
  final String createdAt;
  final String updatedAt;

  UpdateOrderModel({
    required this.id,
    required this.orderDetails,
    this.image,
    this.description,
    required this.isSameday,
    required this.from,
    required this.to,
    required this.deliveryDate,
    required this.orderType,
    required this.cakePrice,
    required this.flowerPrice,
    required this.deliveryPrice,
    required this.deposit,
    required this.totalPrice,
    required this.customerName,
    required this.customerPhone,
    required this.longitude,
    required this.latitude,
    required this.mapDesc,
    required this.additionalData,
    this.branchId,
    required this.isReturned,
    this.problem,
    this.rejectionCause,
    required this.status,
    required this.isCompleted,
    required this.paymentMethod,
    required this.saleId,
    this.managerId,
    this.chefId,
    this.deliveryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UpdateOrderModel.fromJson(Map<String, dynamic> json) {
    return UpdateOrderModel(
      id: json['id'],
      orderDetails: json['order_details'],
      image: json['image'],
      description: json['description'],
      isSameday: json['is_sameday'],
      from: json['from'],
      to: json['to'],
      deliveryDate: json['delivery_date'],
      orderType: json['order_type'],
      cakePrice: json['cake_price'],
      flowerPrice: json['flower_price'],
      deliveryPrice: json['delivery_price'],
      deposit: json['deposit'],
      totalPrice: json['total_price'],
      customerName: json['customer_name'],
      customerPhone: json['customer_phone'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      mapDesc: json['map_desc'],
      additionalData: json['additional_data'],
      branchId: json['branch_id'],
      isReturned: json['is_returned'],
      problem: json['problem'],
      rejectionCause: json['rejection_cause'],
      status: json['status'],
      isCompleted: json['is_completed'],
      paymentMethod: json['payment_method'],
      saleId: json['sale_id'],
      managerId: json['manager_id'],
      chefId: json['chef_id'],
      deliveryId: json['delivery_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  // دالة لتحويل الكائن Order إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_details': orderDetails,
      'image': image,
      'description': description,
      'is_sameday': isSameday,
      'from': from,
      'to': to,
      'delivery_date': deliveryDate,
      'order_type': orderType,
      'cake_price': cakePrice,
      'flower_price': flowerPrice,
      'delivery_price': deliveryPrice,
      'deposit': deposit,
      'total_price': totalPrice,
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'longitude': longitude,
      'latitude': latitude,
      'map_desc': mapDesc,
      'additional_data': additionalData,
      'branch_id': branchId,
      'is_returned': isReturned,
      'problem': problem,
      'rejection_cause': rejectionCause,
      'status': status,
      'is_completed': isCompleted,
      'payment_method': paymentMethod,
      'sale_id': saleId,
      'manager_id': managerId,
      'chef_id': chefId,
      'delivery_id': deliveryId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
