import 'package:equatable/equatable.dart';

class Profile extends Equatable {
	final String? firstName;
	final String? lastName;
	final String? email;
	final String? phone;
	final dynamic image;
	final int? id;

	const Profile({
		this.firstName, 
		this.lastName, 
		this.email, 
		this.phone, 
		this.image, 
		this.id, 
	});

	factory Profile.fromJson(Map<String, dynamic> json) => Profile(
				firstName: json['first_name'] as String?,
				lastName: json['last_name'] as String?,
				email: json['email'] as String?,
				phone: json['phone'] as String?,
				image: json['image'] as dynamic,
				id: json['id'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'first_name': firstName,
				'last_name': lastName,
				'email': email,
				'phone': phone,
				'image': image,
				'id': id,
			};

	@override
	List<Object?> get props {
		return [
				firstName,
				lastName,
				email,
				phone,
				image,
				id,
		];
	}
}
