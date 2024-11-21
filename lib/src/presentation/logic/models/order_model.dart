import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderModel {
  String? id;
  String? uId;
  String? name;
  String? email;
  String? phone;
  String? type;
  double? quantity;
  String? latitude;
  String? longitude;
  Timestamp? date;
  String? location;
  OrderModel({
    this.id,
    this.uId,
    this.name,
    this.email,
    this.phone,
    this.type,
    this.quantity,
    this.latitude,
    this.longitude,
    this.date,
    this.location
  });

  OrderModel copyWith({
    String? id,
    String? uId,
    String? name,
    String? email,
    String? phone,
    String? type,
    double? quantity,
    String? latitude,
    String? longitude,
    String? location,
    Timestamp? date,
  }) {
    return OrderModel(
      id: id ?? this.id,
      uId: uId ?? this.uId,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      date: date ?? this.date,
      location: location??""
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uId': uId,
      'name': name,
      'email': email,
      'phone': phone,
      'type': type,
      'quantity': quantity,
      'latitude': latitude,
      'longitude': longitude,
      'date': date,
      'location':location
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'] != null ? map['id'] as String : null,
      uId: map['uId'] != null ? map['uId'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as double : null,
      latitude: map['latitude'] != null ? map['latitude'] as String : null,
      longitude: map['longitude'] != null ? map['longitude'] as String : null,
      date: map['date'] != null ? map['date'] as Timestamp : null,
      location: map['location'] != null ? map['location'] as String : null,

    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrderModel(id: $id, uId: $uId, name: $name, email: $email, phone: $phone, type: $type, quantity: $quantity, latitude: $latitude, longitude: $longitude, date: $date, location : $location)';
  }

  @override
  bool operator ==(covariant OrderModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.uId == uId &&
      other.name == name &&
      other.email == email &&
      other.phone == phone &&
      other.type == type &&
      other.quantity == quantity &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.location == location&&
      other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      uId.hashCode ^
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      type.hashCode ^
      quantity.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      location.hashCode^
      date.hashCode;
  }
}
