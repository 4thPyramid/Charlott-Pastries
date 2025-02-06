import 'package:equatable/equatable.dart';

class Banners extends Equatable {
	final int? id;
	final String? image;

	const Banners({this.id, this.image});

	factory Banners.fromJson(Map<String, dynamic> json) => Banners(
				id: json['id'] as int?,
				image: json['image'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'image': image,
			};

	@override
	List<Object?> get props => [id, image];
}
