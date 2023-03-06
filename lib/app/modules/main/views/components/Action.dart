import 'dart:convert';

import 'package:flutter/widgets.dart';

BottomActionModel actionFromJson(String str) => BottomActionModel.fromJson(json.decode(str));

String actionToJson(BottomActionModel data) => json.encode(data.toJson());

class BottomActionModel {
  IconData icon;
  String message;

  BottomActionModel({
    required this.icon,
    required this.message,
  });

  factory BottomActionModel.fromJson(Map<String, dynamic> json) => BottomActionModel(icon: json["icon"], message:
  json["message"]);

  Map<String, dynamic> toJson() => {"icon": icon, "message": message};
}
