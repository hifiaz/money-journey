import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_model.freezed.dart';
part 'money_model.g.dart';

@freezed
class MoneyModel with _$MoneyModel {
  factory MoneyModel({
    String? belong,
    String? id,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? amount,
    String? note,
    String? category,
    String? create,
  }) = _MoneyModel;

  factory MoneyModel.fromJson(Map<String, dynamic> json) =>
      _$MoneyModelFromJson(json);
}
