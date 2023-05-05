// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String name;
  final String lastName;
  final int IIN;
  final int degree;
  final bool gender;
  final int education_type;
  final String login_name;
  final String group;
  final String avatar_url;
  final int userID;

  User({
    required this.name,
    required this.lastName,
    required this.IIN,
    required this.degree,
    required this.gender,
    required this.education_type,
    required this.login_name,
    required this.group,
    required this.avatar_url,
    required this.userID,
  });

  User copyWith({
    String? name,
    String? lastName,
    int? IIN,
    int? degree,
    bool? gender,
    int? education_type,
    String? login_name,
    String? group,
    String? avatar_url,
    int? userID,
  }) {
    return User(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      IIN: IIN ?? this.IIN,
      degree: degree ?? this.degree,
      gender: gender ?? this.gender,
      education_type: education_type ?? this.education_type,
      login_name: login_name ?? this.login_name,
      group: group ?? this.group,
      avatar_url: avatar_url ?? this.avatar_url,
      userID: userID ?? this.userID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'lastName': lastName,
      'IIN': IIN,
      'degree': degree,
      'gender': gender,
      'education_type': education_type,
      'login_name': login_name,
      'group': group,
      'avatar_url': avatar_url,
      'userID': userID,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      IIN: map['IIN'] as int,
      degree: map['degree'] as int,
      gender: map['gender'] as bool,
      education_type: map['education_type'] as int,
      login_name: map['login_name'] as String,
      group: map['group'] as String,
      avatar_url: map['avatar_url'] as String,
      userID: map['userID'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(name: $name, lastName: $lastName, IIN: $IIN, degree: $degree, gender: $gender, education_type: $education_type, login_name: $login_name, group: $group, avatar_url: $avatar_url, userID: $userID)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.lastName == lastName &&
      other.IIN == IIN &&
      other.degree == degree &&
      other.gender == gender &&
      other.education_type == education_type &&
      other.login_name == login_name &&
      other.group == group &&
      other.avatar_url == avatar_url &&
      other.userID == userID;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      lastName.hashCode ^
      IIN.hashCode ^
      degree.hashCode ^
      gender.hashCode ^
      education_type.hashCode ^
      login_name.hashCode ^
      group.hashCode ^
      avatar_url.hashCode ^
      userID.hashCode;
  }
}
