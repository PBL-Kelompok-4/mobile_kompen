import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MessageResponse {
  const MessageResponse({
    required this.success,
    required this.massage,
  });

  factory MessageResponse.fromJson(Map<String, dynamic> json) => _$MessageResponseFromJson(json);

  final bool success;
  final String massage;

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);
}
