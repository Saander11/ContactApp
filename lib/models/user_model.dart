// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        this.nombre,
        this.apellido,
        this.telefono,
        this.email,
    });

    String nombre;
    String apellido;
    String telefono;
    String email;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        nombre: json["nombre"],
        apellido: json["apellido"],
        telefono: json["telefono"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellido": apellido,
        "telefono": telefono,
        "email": email,
    };
    
}
