class ProfileResponseModel {
  const ProfileResponseModel({this.profile});
  final Profile? profile;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      ProfileResponseModel(
        profile: Profile.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() {
    return {
      'data': profile?.toJson(),
    };
  }
}

class Profile {
  const Profile({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });
  final int? id;
  final String? email, firstName, lastName, avatar;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
      );
  Profile copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return Profile(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar,
    };
  }
}
